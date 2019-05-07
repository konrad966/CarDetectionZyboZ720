
################################################################
# This is a generated script based on design: VivadoLiDAR
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source VivadoLiDAR_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Box2Coordinates, CheckScore, ManageBBOXes, ParseHDMI

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name VivadoLiDAR

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:user:LidarSubsystem:1.0\
xilinx.com:ip:clk_wiz:6.0\
user.org:user:draw_bbox:1.0\
digilentinc.com:ip:dvi2rgb:1.8\
xilinx.com:user:project2image:1.0\
digilentinc.com:ip:rgb2dvi:1.4\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:xlslice:1.0\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
Box2Coordinates\
CheckScore\
ManageBBOXes\
ParseHDMI\
"

   set list_mods_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_msg_id "BD_TCL-008" "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set hdmi_rx [ create_bd_intf_port -mode Slave -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_rx ]
  set hdmi_rx_ddc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 hdmi_rx_ddc ]
  set hdmi_tx [ create_bd_intf_port -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_tx ]

  # Create ports
  set hdmi_rx_hpd [ create_bd_port -dir O -from 0 -to 0 hdmi_rx_hpd ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] $sys_clock

  # Create instance: Box2Coordinates_0, and set properties
  set block_name Box2Coordinates
  set block_cell_name Box2Coordinates_0
  if { [catch {set Box2Coordinates_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Box2Coordinates_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: CheckScore_0, and set properties
  set block_name CheckScore
  set block_cell_name CheckScore_0
  if { [catch {set CheckScore_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CheckScore_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: LidarSubsystem_0, and set properties
  set LidarSubsystem_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:LidarSubsystem:1.0 LidarSubsystem_0 ]

  # Create instance: ManageBBOXes_0, and set properties
  set block_name ManageBBOXes
  set block_cell_name ManageBBOXes_0
  if { [catch {set ManageBBOXes_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ManageBBOXes_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ParseHDMI_0, and set properties
  set block_name ParseHDMI
  set block_cell_name ParseHDMI_0
  if { [catch {set ParseHDMI_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ParseHDMI_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {237.312} \
   CONFIG.CLKOUT1_PHASE_ERROR {249.865} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {36} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {9} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {125.000} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz

  # Create instance: draw_bbox_0, and set properties
  set draw_bbox_0 [ create_bd_cell -type ip -vlnv user.org:user:draw_bbox:1.0 draw_bbox_0 ]
  set_property -dict [ list \
   CONFIG.IMAGE_HEIGHT {1080} \
   CONFIG.IMAGE_WIDTH {1920} \
 ] $draw_bbox_0

  # Create instance: dvi2rgb_0, and set properties
  set dvi2rgb_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:dvi2rgb:1.8 dvi2rgb_0 ]
  set_property -dict [ list \
   CONFIG.kClkRange {1} \
   CONFIG.kEdidFileName {dgl_1080p_cea.data} \
 ] $dvi2rgb_0

  # Create instance: project2image_0, and set properties
  set project2image_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:project2image:1.0 project2image_0 ]

  # Create instance: rgb2dvi_0, and set properties
  set rgb2dvi_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.4 rgb2dvi_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {8} \
   CONFIG.IN2_WIDTH {8} \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {24} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_0

  # Create interface connections
  connect_bd_intf_net -intf_net dvi2rgb_0_DDC [get_bd_intf_ports hdmi_rx_ddc] [get_bd_intf_pins dvi2rgb_0/DDC]
  connect_bd_intf_net -intf_net hdmi_rx_1 [get_bd_intf_ports hdmi_rx] [get_bd_intf_pins dvi2rgb_0/TMDS]
  connect_bd_intf_net -intf_net rgb2dvi_0_TMDS [get_bd_intf_ports hdmi_tx] [get_bd_intf_pins rgb2dvi_0/TMDS]

  # Create port connections
  connect_bd_net -net Box2Coordinates_0_max_x [get_bd_pins Box2Coordinates_0/max_x] [get_bd_pins project2image_0/max_x]
  connect_bd_net -net Box2Coordinates_0_max_y [get_bd_pins Box2Coordinates_0/max_y] [get_bd_pins project2image_0/max_y]
  connect_bd_net -net Box2Coordinates_0_max_z [get_bd_pins Box2Coordinates_0/max_z] [get_bd_pins project2image_0/max_z]
  connect_bd_net -net Box2Coordinates_0_min_x [get_bd_pins Box2Coordinates_0/min_x] [get_bd_pins project2image_0/min_x]
  connect_bd_net -net Box2Coordinates_0_min_y [get_bd_pins Box2Coordinates_0/min_y] [get_bd_pins project2image_0/min_y]
  connect_bd_net -net Box2Coordinates_0_min_z [get_bd_pins Box2Coordinates_0/min_z] [get_bd_pins project2image_0/min_z]
  connect_bd_net -net CheckScore_0_flag_car [get_bd_pins CheckScore_0/flag_car] [get_bd_pins project2image_0/valid_in]
  connect_bd_net -net LidarSubsystem_0_box_max_out [get_bd_pins Box2Coordinates_0/box_max_in] [get_bd_pins LidarSubsystem_0/box_max_out]
  connect_bd_net -net LidarSubsystem_0_box_min_out [get_bd_pins Box2Coordinates_0/box_min_in] [get_bd_pins LidarSubsystem_0/box_min_out]
  connect_bd_net -net LidarSubsystem_0_svm_score [get_bd_pins CheckScore_0/svm_score] [get_bd_pins LidarSubsystem_0/svm_score]
  connect_bd_net -net LidarSubsystem_0_valid_score [get_bd_pins CheckScore_0/valid_score] [get_bd_pins LidarSubsystem_0/valid_score]
  connect_bd_net -net ManageBBOXes_0_bbox_out_0 [get_bd_pins ManageBBOXes_0/bbox_out_0] [get_bd_pins draw_bbox_0/bbox_0]
  connect_bd_net -net ManageBBOXes_0_bbox_out_1 [get_bd_pins ManageBBOXes_0/bbox_out_1] [get_bd_pins draw_bbox_0/bbox_1]
  connect_bd_net -net ManageBBOXes_0_bbox_out_2 [get_bd_pins ManageBBOXes_0/bbox_out_2] [get_bd_pins draw_bbox_0/bbox_2]
  connect_bd_net -net ManageBBOXes_0_bbox_out_3 [get_bd_pins ManageBBOXes_0/bbox_out_3] [get_bd_pins draw_bbox_0/bbox_3]
  connect_bd_net -net ManageBBOXes_0_bbox_out_4 [get_bd_pins ManageBBOXes_0/bbox_out_4] [get_bd_pins draw_bbox_0/bbox_4]
  connect_bd_net -net ManageBBOXes_0_bbox_out_5 [get_bd_pins ManageBBOXes_0/bbox_out_5] [get_bd_pins draw_bbox_0/bbox_5]
  connect_bd_net -net ManageBBOXes_0_bbox_out_6 [get_bd_pins ManageBBOXes_0/bbox_out_6] [get_bd_pins draw_bbox_0/bbox_6]
  connect_bd_net -net ManageBBOXes_0_bbox_out_7 [get_bd_pins ManageBBOXes_0/bbox_out_7] [get_bd_pins draw_bbox_0/bbox_7]
  connect_bd_net -net ManageBBOXes_0_bbox_out_8 [get_bd_pins ManageBBOXes_0/bbox_out_8] [get_bd_pins draw_bbox_0/bbox_8]
  connect_bd_net -net ManageBBOXes_0_bbox_out_9 [get_bd_pins ManageBBOXes_0/bbox_out_9] [get_bd_pins draw_bbox_0/bbox_9]
  connect_bd_net -net ParseHDMI_0_clk_out [get_bd_pins CheckScore_0/clk] [get_bd_pins LidarSubsystem_0/clk] [get_bd_pins ManageBBOXes_0/clk] [get_bd_pins ParseHDMI_0/clk_out] [get_bd_pins project2image_0/clk]
  connect_bd_net -net ParseHDMI_0_flag_valid_out [get_bd_pins LidarSubsystem_0/flag] [get_bd_pins ParseHDMI_0/flag_valid_out]
  connect_bd_net -net ParseHDMI_0_intens_out [get_bd_pins LidarSubsystem_0/intens] [get_bd_pins ParseHDMI_0/intens_out]
  connect_bd_net -net ParseHDMI_0_x_out [get_bd_pins LidarSubsystem_0/x] [get_bd_pins ParseHDMI_0/x_out]
  connect_bd_net -net ParseHDMI_0_y_out [get_bd_pins LidarSubsystem_0/y] [get_bd_pins ParseHDMI_0/y_out]
  connect_bd_net -net ParseHDMI_0_z_out [get_bd_pins LidarSubsystem_0/z] [get_bd_pins ParseHDMI_0/z_out]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins clk_wiz/clk_out1] [get_bd_pins dvi2rgb_0/RefClk]
  connect_bd_net -net draw_bbox_0_de_out [get_bd_pins draw_bbox_0/de_out] [get_bd_pins rgb2dvi_0/vid_pVDE]
  connect_bd_net -net draw_bbox_0_hsync_out [get_bd_pins draw_bbox_0/hsync_out] [get_bd_pins rgb2dvi_0/vid_pHSync]
  connect_bd_net -net draw_bbox_0_rgb_out [get_bd_pins draw_bbox_0/rgb_out] [get_bd_pins rgb2dvi_0/vid_pData]
  connect_bd_net -net draw_bbox_0_vsync_out [get_bd_pins draw_bbox_0/vsync_out] [get_bd_pins rgb2dvi_0/vid_pVSync]
  connect_bd_net -net dvi2rgb_0_PixelClk [get_bd_pins ParseHDMI_0/clk] [get_bd_pins draw_bbox_0/clk] [get_bd_pins dvi2rgb_0/PixelClk] [get_bd_pins rgb2dvi_0/PixelClk]
  connect_bd_net -net dvi2rgb_0_vid_pData [get_bd_pins ParseHDMI_0/pixel_in] [get_bd_pins dvi2rgb_0/vid_pData] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net dvi2rgb_0_vid_pHSync [get_bd_pins draw_bbox_0/hsync_in] [get_bd_pins dvi2rgb_0/vid_pHSync]
  connect_bd_net -net dvi2rgb_0_vid_pVDE [get_bd_pins ParseHDMI_0/de] [get_bd_pins draw_bbox_0/de_in] [get_bd_pins dvi2rgb_0/vid_pVDE]
  connect_bd_net -net dvi2rgb_0_vid_pVSync [get_bd_pins draw_bbox_0/vsync_in] [get_bd_pins dvi2rgb_0/vid_pVSync]
  connect_bd_net -net project2image_0_bbox [get_bd_pins ManageBBOXes_0/bbox_in] [get_bd_pins project2image_0/bbox]
  connect_bd_net -net project2image_0_valid_out [get_bd_pins ManageBBOXes_0/valid_box] [get_bd_pins project2image_0/valid_out]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins draw_bbox_0/rgb_in] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins dvi2rgb_0/aRst] [get_bd_pins dvi2rgb_0/pRst] [get_bd_pins rgb2dvi_0/aRst] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins project2image_0/ready_in] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_ports hdmi_rx_hpd] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlconcat_0/In0] [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconcat_0/In2] [get_bd_pins xlslice_0/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


common::send_msg_id "BD_TCL-1000" "WARNING" "This Tcl script was generated from a block design that has not been validated. It is possible that design <$design_name> may result in errors during validation."

