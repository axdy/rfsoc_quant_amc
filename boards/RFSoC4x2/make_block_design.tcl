set overlay_name "amc_3q_4x2"
set design_name "block_design"
set iprepo_dir ./ip

# Create project
create_project ${overlay_name} ./${overlay_name} -part xczu48dr-ffvg1517-2-e
set_property board_part realdigital.org:rfsoc4x2:part0:1.0 [current_project]
set_property target_language VHDL [current_project]

# Set IP repository paths
set_property ip_repo_paths $iprepo_dir [current_project]
update_ip_catalog

# Add constraints
add_files -fileset constrs_1 -norecurse ./constraints.xdc

# Make block design
source ./${design_name}.tcl
