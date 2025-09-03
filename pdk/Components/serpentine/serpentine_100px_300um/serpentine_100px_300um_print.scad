use <./serpentine_100px_300um.scad>
//Additional includes
use <../../../scad_include/polychannel_v2.scad>
use <../../../scad_include/lef_scad_config.scad>
use <../../../scad_include/lef_helper.scad>

px = 0.022 ;
layer = 0.01 ;
lpv = 20 ;


difference() {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
 serpentine_100px_300um(xpos = -20.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}