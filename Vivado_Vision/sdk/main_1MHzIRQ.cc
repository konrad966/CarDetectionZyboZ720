#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xscugic.h"

XScuGic InterruptController;      /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig; /* The configuration parameters of the controller */

extern char inbyte(void);

void Btn_InterruptHandler(void *data)
{

	volatile static long long unsigned int cnt = 0;
	volatile static uint8_t IRQ_nr = 0;
	cnt++;
	if(cnt == (100*1000000)/1024)
	{
		xil_printf(" Interrupt acknowledged %d \n \r ", IRQ_nr);
		cnt = 0;
		IRQ_nr++;
	}
}

int ScuGicInterrupt_Init()
{
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
	Status = XScuGic_Connect(&InterruptController, XPAR_FABRIC_BTN_INTR, (Xil_ExceptionHandler)Btn_InterruptHandler, (void *)&InterruptController);
	XScuGic_Enable(&InterruptController, XPAR_FABRIC_BTN_INTR);

	/*
	 * Enable interrupts in the ARM
	 */
	Xil_ExceptionEnable();

	XScuGic_SetPriorityTriggerType(&InterruptController, XPAR_FABRIC_BTN_INTR, 0xa0, 3);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}


int main()
{
	int xstatus;
	init_platform();

    xstatus = ScuGicInterrupt_Init();
    if (xstatus != XST_SUCCESS) {
    	return XST_FAILURE;
    }
    xil_printf("GIC Init Success\n\r");


    while(1) {
    }


    cleanup_platform();
    return 0;
}
