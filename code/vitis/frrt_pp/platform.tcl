# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/sam/project/vitis/frrt_pp/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/sam/project/vitis/frrt_pp/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {frrt_pp}\
-hw {/home/sam/project/vivado/rrt_pynq_fp32/design_81_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/sam/project/vitis}

platform write
platform generate -domains 
platform active {frrt_pp}
bsp reload
bsp setlib -name xilflash -ver 4.9
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp setlib -name xilffs -ver 4.6
bsp removelib -name xilflash
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
