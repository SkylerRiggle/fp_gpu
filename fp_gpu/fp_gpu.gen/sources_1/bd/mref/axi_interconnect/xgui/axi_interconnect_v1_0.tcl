# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDRESS_BYTES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_BYTES" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDRESS_BYTES { PARAM_VALUE.ADDRESS_BYTES } {
	# Procedure called to update ADDRESS_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDRESS_BYTES { PARAM_VALUE.ADDRESS_BYTES } {
	# Procedure called to validate ADDRESS_BYTES
	return true
}

proc update_PARAM_VALUE.DATA_BYTES { PARAM_VALUE.DATA_BYTES } {
	# Procedure called to update DATA_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_BYTES { PARAM_VALUE.DATA_BYTES } {
	# Procedure called to validate DATA_BYTES
	return true
}


proc update_MODELPARAM_VALUE.ADDRESS_BYTES { MODELPARAM_VALUE.ADDRESS_BYTES PARAM_VALUE.ADDRESS_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDRESS_BYTES}] ${MODELPARAM_VALUE.ADDRESS_BYTES}
}

proc update_MODELPARAM_VALUE.DATA_BYTES { MODELPARAM_VALUE.DATA_BYTES PARAM_VALUE.DATA_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_BYTES}] ${MODELPARAM_VALUE.DATA_BYTES}
}

