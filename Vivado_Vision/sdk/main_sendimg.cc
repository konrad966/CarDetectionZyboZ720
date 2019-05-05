#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "ff.h"
#include "xscugic.h"

#define XPAR_FABRIC_BTN_INTR 61

#define IMG_WIDTH 1280
#define IMG_HEIGHT 720
#define HSYNC_FRONT_PORCH 110
#define HSYNC_LEN 40
#define HSYNC_BACK_PORCH 220
#define VSYNC_FRONT_PORCH 5
#define VSYNC_LEN 5
#define VSYNC_BACK_PORCH 20

XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig; /* The configuration parameters of the controller */

extern char inbyte(void);

uint8_t buffer[1024 * 1024 * 10];
FSIZE_t fileSize;

void Btn_InterruptHandler(void *data) {
	/*
	 assign pixel_out = slv_reg0[23:0];
	 assign hsync_out = slv_reg1[0];
	 assign vsync_out = slv_reg1[1];
	 assign de_out = slv_reg1[2];
	 assign clk_out = clk_in;
	 */
	enum ImgRxState {
		DATA, VSYNC_FP, VSYNC, VSYNC_BP
	};
	enum ImgRxSubState {
		PIX_OUT, HSYNC_FP, HSYNC, HSYNC_BP
	};

	static ImgRxState innerState = DATA;
	static ImgRxSubState innerSubState = PIX_OUT;
	static UINT hCnt = 0;
	static UINT vCnt = 0;
	static uint32_t blankHCnt = 0;
	static uint32_t blankVCnt = 0;

	uint32_t cursor;
	uint32_t R;
	uint32_t G;
	uint32_t B;
	uint32_t pixel;
	uint32_t syncSignals;

	switch (innerState) {

	case DATA:
		switch (innerSubState) {
		case PIX_OUT:
			cursor = hCnt + IMG_WIDTH * vCnt;
			R = buffer[3 * cursor + 0];
			G = buffer[3 * cursor + 1];
			B = buffer[3 * cursor + 2];
			pixel = (R << 16) | (G << 8) | (B);
			syncSignals = (1 << 2) | (0 << 1) | (0 << 0);
			Xil_Out32(XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR, pixel);
			hCnt++;
			if (hCnt == IMG_WIDTH) {
				blankHCnt = 0;
				innerSubState = HSYNC_FP;
			}
			break;

		case HSYNC_FP:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH) {
				innerSubState = HSYNC;
			}
			break;

		case HSYNC:
			syncSignals = (0 << 2) | (0 << 1) | (1 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN) {
				innerSubState = HSYNC_BP;
			}
			break;

		case HSYNC_BP:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN + HSYNC_BACK_PORCH) {
				blankHCnt = 0;
				hCnt = 0;
				vCnt++;
				if (vCnt == IMG_HEIGHT) {
					innerSubState = PIX_OUT;
					innerState = VSYNC_FP;
				} else {
					innerSubState = PIX_OUT;
				}
			}
			break;
		}
		break;

	case VSYNC_FP:
		switch (innerSubState) {
		case PIX_OUT:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			hCnt++;
			if (hCnt == IMG_WIDTH) {
				blankHCnt = 0;
				innerSubState = HSYNC_FP;
			}
			break;

		case HSYNC_FP:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH) {
				innerSubState = HSYNC;
			}
			break;

		case HSYNC:
			syncSignals = (0 << 2) | (0 << 1) | (1 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN) {
				innerSubState = HSYNC_BP;
			}
			break;

		case HSYNC_BP:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN + HSYNC_BACK_PORCH) {
				blankHCnt = 0;
				hCnt = 0;
				blankVCnt++;
				if (blankVCnt == VSYNC_FRONT_PORCH) {
					innerSubState = PIX_OUT;
					innerState = VSYNC;
				} else {
					innerSubState = PIX_OUT;
				}
			}
			break;
		}
		break;

	case VSYNC:
		switch (innerSubState) {
		case PIX_OUT:
			syncSignals = (0 << 2) | (1 << 1) | (0 << 0);
			hCnt++;
			if (hCnt == IMG_WIDTH) {
				blankHCnt = 0;
				innerSubState = HSYNC_FP;
			}
			break;

		case HSYNC_FP:
			syncSignals = (0 << 2) | (1 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH) {
				innerSubState = HSYNC;
			}
			break;

		case HSYNC:
			syncSignals = (0 << 2) | (1 << 1) | (1 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN) {
				innerSubState = HSYNC_BP;
			}
			break;

		case HSYNC_BP:
			syncSignals = (0 << 2) | (1 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN + HSYNC_BACK_PORCH) {
				blankHCnt = 0;
				hCnt = 0;
				blankVCnt++;
				if (blankVCnt == VSYNC_FRONT_PORCH + VSYNC_LEN) {
					innerSubState = PIX_OUT;
					innerState = VSYNC_BP;
				} else {
					innerSubState = PIX_OUT;
				}
			}
			break;
		}
		break;

	case VSYNC_BP:
		switch (innerSubState) {
		case PIX_OUT:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			hCnt++;
			if (hCnt == IMG_WIDTH) {
				blankHCnt = 0;
				innerSubState = HSYNC_FP;
			}
			break;

		case HSYNC_FP:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH) {
				innerSubState = HSYNC;
			}
			break;

		case HSYNC:
			syncSignals = (0 << 2) | (0 << 1) | (1 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN) {
				innerSubState = HSYNC_BP;
			}
			break;

		case HSYNC_BP:
			syncSignals = (0 << 2) | (0 << 1) | (0 << 0);
			blankHCnt++;
			if (blankHCnt == HSYNC_FRONT_PORCH + HSYNC_LEN + HSYNC_BACK_PORCH) {
				blankHCnt = 0;
				hCnt = 0;
				blankVCnt++;
				if (blankVCnt
						== VSYNC_FRONT_PORCH + VSYNC_LEN + VSYNC_BACK_PORCH) {
					innerSubState = PIX_OUT;
					blankVCnt = 0;
					vCnt = 0;
					innerState = DATA;
				} else {
					innerSubState = PIX_OUT;
				}
			}
			break;
		}
		break;

	}

	Xil_Out32(XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR + 4, syncSignals);

}

int ScuGicInterrupt_Init() {
	int Status;
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 * */
	Xil_ExceptionInit();
	xil_printf("Test");
	GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig,
			GicConfig->CpuBaseAddress);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the Interrupt System
	 * */

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the ARM processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			(void *) &InterruptController);

	/*
	 * Connect a device driver handler that will be called when an
	 * interrupt for the device occurs, the device driver handler performs
	 * the specific interrupt processing for the device
	 * since the xparameters.h file doesnt detect the external interrupts, we have to manually
	 * use the IRQ_F2P port numbers ; 91, 90, ect..
	 */
	Status = XScuGic_Connect(&InterruptController, XPAR_FABRIC_BTN_INTR,
			(Xil_ExceptionHandler) Btn_InterruptHandler,
			(void *) &InterruptController);
	XScuGic_Enable(&InterruptController, XPAR_FABRIC_BTN_INTR);

	/*
	 * Enable interrupts in the ARM
	 */
	Xil_ExceptionEnable();

	XScuGic_SetPriorityTriggerType(&InterruptController, XPAR_FABRIC_BTN_INTR,
			0xa0, 3);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

int main() {
	int xstatus;
	init_platform();

	xstatus = ScuGicInterrupt_Init();
	if (xstatus != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("GIC Init Success\n\r");

	FATFS FatFs;
	FRESULT result;
	FIL fil;
	char filename[100] = "image_1280_720.ppm";
	TCHAR path[100] = "";

	result = f_mount(&FatFs, path, 1);
	if (result == FR_OK) {

		result = f_open(&fil, filename, FA_OPEN_ALWAYS | FA_READ | FA_WRITE);
		if (result == FR_OK) {
			fileSize = f_size(&fil);
			UINT bytesRead;
			f_read(&fil, buffer, UINT(fileSize), &bytesRead);
			if (bytesRead != UINT(fileSize)) {
				xil_printf("FILE_READ_ERROR\n\r");
			}
			f_close(&fil);
		} else {
			xil_printf("FILE_OPEN_ERROR\n\r");
			xil_printf("RESULT_CODE: %d\n\r", result);
		}
		f_unmount(path);
	} else {
		xil_printf("DRIVE_MOUNT_ERROR\n\r");
		xil_printf("RESULT_CODE: %d\n\r", result);
	}

	while (1) {
	}

	cleanup_platform();
	return 0;
}
