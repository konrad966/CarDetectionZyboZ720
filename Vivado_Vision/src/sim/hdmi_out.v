`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date:    11:41:13 05/10/2011 
// Description: log image to ppm file
//-----------------------------------------------
module hdmi_out
(
  input hdmi_clk,
  input hdmi_vs,
  input hdmi_de,
  input [31:0] hdmi_data
);
//-----------------------------------------------
integer fm1=0;

// TK invert du to Zybo
wire w_hdmi_vs_i = !hdmi_vs;
reg [7:0]vsc=8'h0;
reg vse=1;
//-----------------------------------------------
initial
begin
  //fm1 = $fopen("outA.ppm","wb");  
end
//-----------------------------------------------
always @(posedge hdmi_clk)
begin
  vse<=w_hdmi_vs_i;
  
  if((w_hdmi_vs_i==1'b0)&&(vse==1'b1))
  begin
    $fclose(fm1);
    //$stop;
  end
  
  if((w_hdmi_vs_i==1'b1)&&(vse==1'b0))
  begin
  
    fm1 = $fopen({"C:/PracaInz/tests/out/Outs/outSysTest_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");

	 $display("out%d.ppm saved",vsc);
	 
   $fwrite(fm1,"P6%c64 64%c255\n",10,10);
   

	 vsc<=vsc+1;
  end else
  begin
    if(hdmi_de)
	 begin
	   //just for good debugging
	   $fwrite(fm1,"%c",{hdmi_data[23:16]});
      $fwrite(fm1,"%c",{hdmi_data[15:8]});
      $fwrite(fm1,"%c",{hdmi_data[7:0]});
	 end
  end
end
//-----------------------------------------------
endmodule
//-----------------------------------------------
