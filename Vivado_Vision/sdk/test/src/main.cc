#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "sleep.h"

int main() {
  //XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR

  uint32_t SW;
  uint8_t regNum = 2;
  while (1) {
    SW = Xil_In32(XPAR_PARAMETER_REGISTER_0_S00_AXI_BASEADDR + 4*regNum);
    xil_printf("%d ", SW);
    usleep(500000);
  }
  return 0;
}
