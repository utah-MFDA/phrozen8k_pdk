
use <../../../scad_include/scad_objects/p_valve.scad>
use <../../../scad_include/lef_helper.scad>

module valve_40px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=20, mem_th=1, fl_chm_h=3, pn_chm_h=6, inport_center=true,
        // length of channels extending outside of valve radius
        out_len=44, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=12, rot_pn=false,
        // extra center spacing if needed when inport_center=false
        extra_sp = 0, 
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
        offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        //color("yellow")
        //lef_size(180, 180);
        
        //lef_layer("met1")
        //lef_port("in_fluid", "INPUT", "RECT",  [20.5, 89.5, 21.5, 90.5]) ;
        //lef_layer("met1")
        //lef_port("out_fluid", "OUTPUT", "RECT", [151.5, 89.5, 152.5, 90.5]) ;
        
        //lef_layer("met2")
        //lef_port("in_air", "INPUT", "RECT", [89.5, 24.5, 90.5, 25.5]) ;
        //lef_layer("met2")
        //lef_port("out_air", "OUTPUT", "RECT", [89.5, 154.5, 90.5, 155.5]) ;
        
        //lef_layer("met1")
        //lef_obs("RECT", [21, 25, 152, 155]) ;
        //lef_layer("met2")
        //lef_obs("RECT", [21, 25, 152, 155]) ;
        //lef_layer("met3")
        //lef_obs("RECT", [21, 25, 152, 155]) ;
    }
    if (ren_lef)
        lef() ;
    
}

valve_40px_1(0,0,0,"N", ren_lef=true) ;//, px=1, pitch=0) ;
