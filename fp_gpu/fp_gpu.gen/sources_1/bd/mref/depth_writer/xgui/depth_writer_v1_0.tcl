# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FRAME_BUFFER_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.FRAME_BUFFER_ADDR { PARAM_VALUE.FRAME_BUFFER_ADDR } {
	# Procedure called to update FRAME_BUFFER_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRAME_BUFFER_ADDR { PARAM_VALUE.FRAME_BUFFER_ADDR } {
	# Procedure called to validate FRAME_BUFFER_ADDR
	return true
}


proc update_MODELPARAM_VALUE.FRAME_BUFFER_ADDR { MODELPARAM_VALUE.FRAME_BUFFER_ADDR PARAM_VALUE.FRAME_BUFFER_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRAME_BUFFER_ADDR}] ${MODELPARAM_VALUE.FRAME_BUFFER_ADDR}
}

