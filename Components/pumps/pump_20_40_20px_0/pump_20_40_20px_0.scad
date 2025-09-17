
use <../../../scad_include/scad_objects/p_pump.scad>
use <../../../scad_include/lef_helper.scad>

module pump_20_40_20px_0(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    translate([0,9*px,-10*layer])
    p_pump (xpos, ypos, zpos, orientation,
    r1=20, r2=40, r3=20,
    th1=0.6, th2=0.6, th3=0.6,
    fl_h1=3.1, fl_h2=3.1, fl_h3=3.1,
    pn_h1=4, pn_h2=4, pn_h3=4,
    len_sp=15,
    pn_out_len=25, ends_ex_len=32.5,
    fl_extra_sp=6, pn_extra_sp="fill-edge",
    dwn_chan_h=18, dwn_chan_w=7,
    port_chan_h=20, port_chan_w=9,
    px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
    rot=false, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        lef_size(330, 185) ;
        lef_layer("met1")
        lef_obs("rect",  [25,30,305,160]);
        lef_layer("met2")
        lef_obs("rect",  [25,30,305,160]);
        lef_layer("met3")
        lef_obs("rect",  [25,30,305,160]);
        
        lef_layer("met1")
        lef_port("fluid_in", "INPUT", "rect", [24.5, 94.5, 25.5, 95.5]) ;
        lef_layer("met1")
        lef_port("fluid_out", "OUTPUT", "rect", [304.5, 94.5, 305.5, 95.5]) ;
        
        lef_layer("met2")
        lef_port("a_out_air", "OUTPUT", "rect", [89.5,159.5,90.5,160.5]) ;
        lef_layer("met2")
        lef_port("b_out_air", "OUTPUT", "rect", [164.5,159.5,165.5,160.5]) ;
        lef_layer("met2")
        lef_port("c_out_air", "OUTPUT", "rect", [239.5,159.5,240.5,160.5]) ;
        lef_layer("met2")
        lef_port("a_in_air", "INPUT", "rect", [89.5,29.5,90.5,30.5]) ;
        lef_layer("met2")
        lef_port("b_in_air", "INPUT", "rect", [164.5,29.5,165.5,30.5]) ;
        lef_layer("met2")
        lef_port("c_in_air", "INPUT", "rect", [239.5,29.5,240.5,30.5]) ;
    }
    if(ren_lef)
        lef();
}

pump_20_40_20px_0(0,0,0,"N", ren_lef=true) ;
