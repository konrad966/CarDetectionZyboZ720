`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: 23:14:48 04/19/2011
// Description: vga generator
//-----------------------------------------------
module hdmi_in
(
  //hdmi outputs
  output hdmi_clk,
  output hdmi_de,
  output hdmi_hs,
  output hdmi_vs,
  //image data
  output [7:0]hdmi_r,
  output [7:0]hdmi_g,
  output [7:0]hdmi_b
); 
//-----------------------------------------------
//for now supports VGA 640x480 60Hz only
  //horizontal
  parameter hr=64; //resolution
  parameter hbp=8; //back porch
  parameter hfp=8; //front porch
  parameter hs=2;  //sync len
  //vertical
  parameter vr=64; //resolution
  parameter vbp=8; //back porch
  parameter vfp=2; //front porch //default: 8
  parameter vs=4;   //sync len
//-----------------------------------------------
  reg line=1'b0;
  reg vsync=1'b1;
  reg hsync=1'b1;
  reg enab=1'b0;
  reg eenab=1'b0;
  reg h_enable=1'b0;
  reg v_enable=1'b0;
  reg [10:0]hcounter=0;
  reg [10:0]vcounter=64+1;//480+7
//-----------------------------------------------
  reg [7:0]red = 0;
  reg [7:0]green = 0;
  reg [7:0]blue = 0;
  
  //reg hdmi_clk=1'b0;
//-----------------------------------------------
reg clk = 1'b0;
initial
begin
  while(1)
  begin
    #1 clk=1'b0;
	 #1 clk=1'b1;
  end
end  
assign hdmi_clk = clk;
//-----------------------------------------------
integer rgbfile,i,v,clo,cle,wl,x;

//-----------------------------------------------
always @(posedge hdmi_clk)
begin
  hcounter<=hcounter+1;
  
  eenab<=enab;

  if(hcounter==(hr+hbp)) begin
    hsync<=1'b0;
  end
  if(hcounter==(hr+hbp+hs)) begin
    hsync<=1'b1;
	 line<=1'b0;
  end

  if(hcounter<hr) 
      h_enable<=1'b1;
  else 
		h_enable<=1'b0;
  
  if(vcounter<vr) 
		v_enable<=1'b1;
  else 
		v_enable<=1'b0;
		
  if((v_enable==1'b1)&&(h_enable==1'b1))
		enab<=1'b1;
  else 
		enab<=1'b0;
		  	  
  if(hcounter==(hr+hbp+hs+hfp)) 
  begin
    hcounter<=0;
	 line<=1'b1;
  end
end
//-----------------------------------------------
//TB only

always @(posedge hdmi_clk)
begin
  if(enab)
  begin
    red=$fgetc(rgbfile);
	 green=$fgetc(rgbfile);
	 blue=$fgetc(rgbfile);
 	 
  end
end
//TB end
//-----------------------------------------------
reg [7:0]vsc=0;

always @(posedge line)
begin
  vcounter<=vcounter+1;
  if(vcounter==(vr+vbp))
  begin  
    vsync<=1'b0;
	 //TB only
	 vsc=vsc+1;

    rgbfile = $fopen("C:/PracaInz/tests/out/image_out.ppm","rb");

	 // read header file
	 for(i=0;i<13;i=i+1)
    begin
      v=$fgetc(rgbfile); 
    end	
	 //TB end
  end
  if(vcounter==(vr+vbp+vs)) vsync<=1'b1;
  if(vcounter==(vr+vbp+vs+vfp)) vcounter<=0;
end
//-----------------------------------------------

assign hdmi_r=red;
assign hdmi_g=green;
assign hdmi_b=blue;

assign hdmi_de=eenab;
// +TK Changed to negatve for Zybo
assign hdmi_hs=!hsync;
assign hdmi_vs=!vsync;
//-----------------------------------------------
endmodule
//-----------------------------------------------
