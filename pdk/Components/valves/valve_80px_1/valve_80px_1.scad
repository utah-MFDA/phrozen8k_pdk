use <../../../scad_include/scad_objects/p_valve.scad>
use <../../../scad_include/lef_helper.scad>

module valve_80px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    translate([1*px,0,0])
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=40, mem_th=1, fl_chm_h=3, pn_chm_h=6, inport_center=true,
        // length of channels extending outside of valve radius
        out_len=27, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=10, rot_pn=false,
        // extra center spacing if needed when inport_center=false
        extra_sp = 0,
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        color("yellow")
        lef_size(190, 190);
        
        lef_layer("met1")
        lef_port("in_fluid", "INPUT", "RECT",  [29.5, 91.5, 30.5, 92.5]) ;
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [158.5, 91.5, 159.5, 92.5]) ;
        
        lef_layer("met2")
        lef_port("in_air", "INPUT", "RECT", [93, 24.5, 94, 25.5]) ;
        lef_layer("met2")
        lef_port("out_air", "OUTPUT", "RECT", [93, 159.5, 94, 160.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [30, 25, 159, 160]) ;
        lef_layer("met2")
        lef_obs("RECT", [30, 25, 159, 160]) ;
        lef_layer("met3")
        lef_obs("RECT", [30, 25, 159, 160]) ;
    }
    if (ren_lef)
        lef() ;
}

valve_80px_1(0,0,0,"N", ren_lef=true) ;
