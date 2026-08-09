# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_BUS {
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 1
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
xrandx { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
xrandy { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
Squared_r_n { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
Squared_R_Robot { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
oup { 
	dir O
	width 32
	depth 5
	mode ap_memory
	offset 64
	offset_end 95
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_local_deadlock { 
	dir O
	width 1
	depth 1
	mode ap_none
	offset -1
	offset_end -1
}
interrupt {
    ap_local_deadlock 5
}
}
dict set axilite_register_dict CTRL_BUS $port_CTRL_BUS


