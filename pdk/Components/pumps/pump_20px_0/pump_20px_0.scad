
use <../../../scad_include/polychannel_v2.scad>
use <../../../scad_include/scad_objects/p_pump.scad>
use <../../../scad_include/lef_helper.scad>

module pump_20px_0(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, offset_layers=10,ren_lef=false)
{
    translate([0,-0*px,0])
    p_pump (xpos, ypos, zpos, orientation,
    r1=20, r2=20, r3=20,
    th1=0.6, th2=0.6, th3=0.6,
    fl_h1=3.1, fl_h2=3.1, fl_h3=3.1,
    pn_h1=4, pn_h2=4, pn_h3=4,
    len_sp=30, ends_ex_len=22,
    pn_out_len=22, 
    fl_extra_sp=6, pn_extra_sp="fill-edge", 
    px=22e-3, layer=10e-3, lpv=40, chan_h=20, chan_w=9, shape="cube", pitch=30, offset_layers=offset_layers,
    rot=false, no_obj=false, floor_area=false) ;
    
    
    module lef()
    {
        lef_size(310, 130) ;
        lef_layer("met1")
        lef_obs("rect",  [25,20,290,105]);
        //lef_layer("met2")
        //lef_obs("rect",  [25,20,290,105]);
        //lef_layer("met3")
        //lef_obs("rect",  [25,20,290,105]);
        
        lef_layer("met1")
        lef_port("fluid_in", "INPUT", "rect", [24.5,62.5,25.5,63.5]) ;
        lef_layer("met1")
        lef_port("fluid_out", "OUTPUT", "rect", [289.5,62.5,290.5,63.5]) ;
        
        lef_layer("met3")
        lef_port("air_out_a", "OUTPUT", "rect", [86.5,104.5,87.5,105.5]) ;
        lef_layer("met3")
        lef_port("air_out_b", "OUTPUT", "rect", [156.5,104.5,157.5,105.5]) ;
        lef_layer("met3")
        lef_port("air_out_c", "OUTPUT", "rect", [226.5,104.5,227.5,105.5]) ;
        lef_layer("met3")
        lef_port("air_in_a", "INPUT", "rect", [86.5,19.5,87.5,20.5]) ;
        lef_layer("met3")
        lef_port("air_in_b", "INPUT", "rect", [156.5,19.5,157.5,20.5]) ;
        lef_layer("met3")
        lef_port("air_in_c", "INPUT", "rect", [226.5,19.5,227.5,20.5]) ;
    }
    if(ren_lef)
        lef();
}

pump_20px_0(0,0,0,"N",offset_layers=0, ren_lef=true) ;
