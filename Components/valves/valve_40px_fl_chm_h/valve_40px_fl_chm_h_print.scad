use <valve_40px_fl_chm_h.scad>
//Additional includes
use <../../../scad_include/polychannel_v2.scad>
use <../../../scad_include/lef_scad_config.scad>
use <../../../scad_include/lef_helper.scad> 

px = 0.022 ;
layer = 0.01 ;
lpv = 20 ;


difference() {
    if($preview) {
        %cube([125*px,122*px,350*layer]);
    } else {
        cube([125*px,122*px,350*layer]);
    }
    union() {
        
 valve_40px_1(xpos = -30.0, ypos = -30.0, zpos = 200.0, orientation = "FN");
    }
}