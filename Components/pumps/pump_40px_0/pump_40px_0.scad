
use <../../../scad_include/scad_objects/p_pump.scad>
use <../../../scad_include/lef_helper.scad>

module pump_40px_0(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    translate([0,1*px,-7*layer])
    p_pump (xpos, ypos, zpos, orientation,
    r1=20, r2=20, r3=20,
    th1=0.6, th2=0.6, th3=0.6,
    fl_h1=3.1, fl_h2=3.1, fl_h3=3.1,
    pn_h1=4, pn_h2=4, pn_h3=4,
    len_sp=20,
    pn_out_len=17, ends_ex_len=30,
    fl_extra_sp=4, pn_extra_sp="fill-edge",
    dwn_chan_h=20, dwn_chan_w=9,
    port_chan_h=20, port_chan_w=9,
    px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
    rot=false, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        color("yellow")
        lef_size(300, 115);
        
        lef_layer("met1")
        lef_port("in_fluid", "INPUT", "RECT",  [24.5, 58.5, 25.5, 59.5]) ;
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [274.5, 58.5, 275.5, 59.5]) ;
        
        lef_layer("met3")
        lef_port("a_in_air", "INPUT", "RECT",   [89.5, 21.5, 90.5, 22.5]) ;
        lef_layer("met3")
        lef_port("a_out_air", "OUTPUT", "RECT", [89.5, 95.5, 90.5, 96.5]) ;
        lef_layer("met3")
        lef_port("b_in_air", "INPUT", "RECT",   [149.5, 21.5, 150.5, 22.5]) ;
        lef_layer("met3")
        lef_port("b_out_air", "OUTPUT", "RECT", [149.5, 95.5, 150.5, 96.5]) ;
        lef_layer("met3")
        lef_port("c_in_air", "INPUT", "RECT",   [209.5, 21.5, 210.5, 22.5]) ;
        lef_layer("met3")
        lef_port("c_out_air", "OUTPUT", "RECT", [209.5, 95.5, 210.5, 96.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [25, 22, 275, 96]) ;
        //lef_layer("met2")
        //lef_obs("RECT", [25, 22, 275, 96]) ;
        //lef_layer("met3")
        //lef_obs("RECT", [25, 22, 275, 96]) ;
    }
    if (ren_lef)
        lef() ;
}

pump_40px_0(0,0,0,"N", ren_lef=true) ;//, px=1, layer=1/20*10, pitch=0) ;
