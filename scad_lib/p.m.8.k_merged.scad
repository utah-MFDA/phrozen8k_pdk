use <routing.scad>
use <polychannel_v2.scad>
use <lef_helper.scad>

px = 22e-3;
layer = 10e-3;
lpv = 40;
 {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
 serpentine_100px_200um(xpos = 0.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}
module serpentine_100px_200um(xpos, ypos, zpos, orientation, ren_lef=false){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 9*px], [0, 20*layer]],
                    [[0, 9*px], [0, 0], [0, 20*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [300*px, 20*px], [1, 0]],
                    ["+yx", [-120*px, 20*px], [1, 0]],
                    ["+yx", [120*px, 20*px], [1, 0]],
                    ["+yx", [-120*px, 20*px+25*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-6*20*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -6*20*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-6*20*px - xpos*px, -6*20*px - ypos*px, zpos*layer])
        obj();
    }

    module lef()
    {
        color("yellow")
        lef_size(150, 350);
        
        lef_layer("met1")
        lef_port("in_fluid", "INPUT", "RECT",  [129.5, 204.5, 130.5, 205.5]) ;
        
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [29.5, 21.5, 30.5, 22.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [22, 22, 130, 333]) ;
    }
    if (ren_lef)
        lef() ;
    
}
 {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
serpentine_100px_250um(xpos = -10.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}
module serpentine_100px_250um(xpos, ypos, zpos, orientation, ren_lef=false){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 12*px], [0, 25*layer]],
                    [[0, 12*px], [0, 0], [0, 25*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [300*px, 25*px], [1, 0]],
                    ["+yx", [-120*px, 25*px], [1, 0]],
                    ["+yx", [120*px, 25*px], [1, 0]],
                    ["+yx", [-120*px, 25*px+25*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-6*25*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -6*25*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-6*25*px - xpos*px, -6*25*px - ypos*px, zpos*layer])
        obj();
    }
    
    module lef()
    {
        color("yellow")
        lef_size(150, 350);
        
        lef_layer("met1")
        lef_port("in_fluid", "INPUT", "RECT",  [140.5, 204.5, 141.5, 205.5]) ;
        
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [29.5, 29.5, 30.5, 30.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [0, 0, 150, 350]) ;
    }
    if (ren_lef)
        lef() ;
}
 {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
 serpentine_100px_300um(xpos = -20.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}
module serpentine_100px_300um(xpos, ypos, zpos, orientation){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 14*px], [0, 30*layer]],
                    [[0, 14*px], [0, 0], [0, 30*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [300*px, 30*px], [1, 0]],
                    ["+yx", [-120*px, 30*px], [1, 0]],
                    ["+yx", [120*px, 30*px], [1, 0]],
                    ["+yx", [-120*px, 30*px+25*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-6*30*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -6*30*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-6*30*px - xpos*px, -6*30*px - ypos*px, zpos*layer])
        obj();
    }
    
}
 {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
 serpentine_100px_350um(xpos = -30.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}
module serpentine_100px_350um(xpos, ypos, zpos, orientation){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 16*px], [0, 35*layer]],
                    [[0, 16*px], [0, 0], [0, 35*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [300*px, 35*px], [1, 0]],
                    ["+yx", [-120*px, 35*px], [1, 0]],
                    ["+yx", [120*px, 35*px], [1, 0]],
                    ["+yx", [-120*px, 35*px+25*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-6*35*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -6*35*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-6*35*px - xpos*px, -6*35*px - ypos*px, zpos*layer])
        obj();
    }
    
}
 {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
 serpentine_100px_400um(xpos = -40.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}
module serpentine_100px_400um(xpos, ypos, zpos, orientation){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 18*px], [0, 40*layer]],
                    [[0, 18*px], [0, 0], [0, 40*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [300*px, 40*px], [1, 0]],
                    ["+yx", [-120*px, 40*px], [1, 0]],
                    ["+yx", [120*px, 40*px], [1, 0]],
                    ["+yx", [-120*px, 40*px+25*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-6*40*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -6*40*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-6*40*px - xpos*px, -6*40*px - ypos*px, zpos*layer])
        obj();
    }
    
}
 {
    if($preview) {
        %cube([350*px,350*px,1200*layer]);
    } else {
        cube([350*px,350*px,1200*layer]);
    }
    union() {
        
 serpentine_100px_500um(xpos = -60.0, ypos = -30.0, zpos = 800.0, orientation = "FN");
    }
}
module serpentine_100px_500um(xpos, ypos, zpos, orientation){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 25*px], [0, 50*layer]],
                    [[0, 25*px], [0, 0], [0, 50*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [300*px, 50*px], [1, 0]],
                    ["+yx", [-120*px, 50*px], [1, 0]],
                    ["+yx", [120*px, 50*px], [1, 0]],
                    ["+yx", [-120*px, 50*px+25*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-6*50*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -6*50*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-6*50*px - xpos*px, -6*50*px - ypos*px, zpos*layer])
        obj();
    }
    
}
module serpentine_300px_0(xpos, ypos, zpos, orientation){
    
    module obj(){
        translate([23*px, 23*px, 0])       
        routing(
            dimm = [
                    [[0, 0], [0, 14*px], [0, 10*layer]],
                    [[0, 14*px], [0, 0], [0, 10*layer]]
                    ],
            p0 = [0, 0, 0],
            pf = [
                    ["+yx", [360*px, 30*px], [1, 0]],
                    ["+yx", [-360*px, 30*px], [1, 0]],
                    ["+yx", [360*px, 30*px], [1, 0]],
                    ["+yx", [-360*px, 30*px], [1, 0]],
                    ["+yx", [360*px, 30*px], [1, 0]],
                    ["+yx", [-360*px, 30*px], [1, 0]],
                    ["+yx", [360*px, 30*px], [1, 0]],
                    ["+yx", [-360*px, 30*px], [1, 0]],
                    ["+yx", [360*px, 30*px], [1, 0]],
                    ["+yx", [-360*px, 30*px], [1, 0]],
                    ["+yx", [360*px, 30*px], [1, 0]],
                    ["+yx", [-360*px, 30*px+14*px], [1, 0]]
                    ]
        );
        
    }
    
    if (orientation == "N"){
        translate([xpos*px, ypos*px, zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-14*30*px - xpos*px, ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([xpos*px, -14*30*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        mirror([1, 0, 0])
        translate([-14*30*px - xpos*px, -14*30*px - ypos*px, zpos*layer])
        obj();
    }
    
}
module diffmix_25px_0(xpos, ypos, zpos, orientation, ren_lef=false){
      
    hchan = 20*layer;
    Wchan = 9*px;

    dim  = [
            [[0,0],[-Wchan/2,Wchan/2],[0,hchan]],            [[-Wchan/2,Wchan/2],[0,0],[0,hchan]],                    
           ];
    
    module obj(){
        pi_0 = [-5*px, 30*px, 0];
        pf_0 = [Wchan+22*px, 0, 0];
        connect_0 = [
                     ["+x", pf_0, 0]
                    ];
        routing(pi_0, connect_0, dim);
        
        pi_1 = [-5*px, 0*px, 0];
        pf_1 = [Wchan, 0, 0];
        connect_1 = [
                     ["+x", pf_1, 0]
                    ];
        routing(pi_1, connect_1, dim);

        pi_2 = [26*px, 30*px, 0];
        pf_2 = [Wchan, 0, 0];
        connect_2 = [
                     ["+x", pf_2, 0]
                    ];
        routing(pi_2, connect_2, dim);
  
        pi_3 = [0, 0, 0];
        pf_3 = [42.4*px, 0, 0];
        connect_3 = [
                     ["+x", pf_3, 0]
                    ];
        rotate(45)
        routing(pi_3, connect_3, dim);  
        
    }
    
    if (orientation == "N"){
        translate([30*px + xpos*px, 30*px + ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-2*30*px - xpos*px, 30*px + ypos*px, zpos*layer])
        obj([1, 0, 0]);
    }
    if (orientation == "S"){
        mirror([1, 0, 0])
        mirror([0, 1, 0])
        translate([-2*30*px - xpos*px, -2*30*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        translate([30*px + xpos*px, -2*25*px - ypos*px, zpos*layer])
        obj();
    }
   

    module lef()
    {
        color("yellow")
            translate([5*px, 2.5*px, 0*px])
            lef_size(80, 80);
        
        lef_layer("met1")
        lef_port("a_fluid", "INPUT", "RECT",  [24.5, 29.5, 25.5, 30.5]) ;
        
        lef_layer("met1")
        lef_port("b_fluid", "INPUT", "RECT", [24.5, 59.5, 25.5, 60.5]) ;
        
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [64.5, 59.5, 65.5, 60.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [25, 25, 65, 65]) ;
    }
    if (ren_lef)
        lef() ;
}
module junction_25px_0(xpos, ypos, zpos, orientation, ren_lef=false){
      
    hchan = 20*layer;
    Wchan = 9*px;

    dim  = [
            [[0,0],[-Wchan/2,Wchan/2],[0,hchan]],            [[-Wchan/2,Wchan/2],[0,0],[0,hchan]],                    
           ];
    
    module obj(){
        pi_0 = [-5*px, 25*px, 0];
        pf_0 = [Wchan+20*px, 0, 0];
        connect_0 = [
                     ["+x", pf_0, 0]
                    ];
        routing(pi_0, connect_0, dim);
        
        pi_1 = [-5*px, 0*px, 0];
        pf_1 = [Wchan, 0, 0];
        connect_1 = [
                     ["+x", pf_1, 0]
                    ];
        routing(pi_1, connect_1, dim);

        pi_2 = [22*px, 25*px, 0];
        pf_2 = [Wchan, 0, 0];
        connect_2 = [
                     ["+x", pf_2, 0]
                    ];
        routing(pi_2, connect_2, dim);
  
        pi_3 = [0, 0, 0];
        pf_3 = [35.4*px, 0, 0];
        connect_3 = [
                     ["+x", pf_3, 0]
                    ];
        rotate(45)
        routing(pi_3, connect_3, dim);  
        
    }
    
    if (orientation == "FN"){
        translate([25*px + xpos*px, 25*px + ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "N"){
        mirror()
        translate([-2*25*px - xpos*px, 25*px + ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        translate([25*px + xpos*px, -2*25*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror()
        mirror([0, 1, 0])
        translate([-2*25*px - xpos*px, -2*25*px - ypos*px, zpos*layer])
        obj();
    }

    module lef()
    {
        color("yellow")
        translate([5*px, 5*px, 0*px])
            lef_size(65, 65);
        
        lef_layer("met1")
        lef_port("a_fluid", "INPUT", "RECT",  [18.5, 49.5, 19.5, 50.5]) ;
        
        lef_layer("met1")
        lef_port("b_fluid", "INPUT", "RECT", [54.5, 49.5, 55.5, 50.5]) ;
        
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [54.5, 24.5, 55.5, 25.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [19, 20, 55, 55]) ;
    }
    if (ren_lef)
        lef() ;  
}
module valve_40px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=20, mem_th=1, fl_chm_h=3, pn_chm_h=6, inport_center=true,
        out_len=44, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=12, rot_pn=false,
        extra_sp = 0, 
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
        offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        
        
        
    }
    if (ren_lef)
        lef() ;
    
}
 {
    if($preview) {
        %cube([125*px,122*px,350*layer]);
    } else {
        cube([125*px,122*px,350*layer]);
    }
    union() {
        
 valve_40px_1(xpos = -30.0, ypos = -30.0, zpos = 200.0, orientation = "FN");
    }
}
module valve_40px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=20, mem_th=1, fl_chm_h=6, pn_chm_h=6, inport_center=true,
        out_len=44, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=12, rot_pn=false,
        extra_sp = 0, 
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
        offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        
        
        
    }
    if (ren_lef)
        lef() ;
    
}
 {
    if($preview) {
        %cube([125*px,122*px,350*layer]);
    } else {
        cube([125*px,122*px,350*layer]);
    }
    union() {
        
 valve_40px_1(xpos = -30.0, ypos = -30.0, zpos = 200.0, orientation = "FN");
    }
}
module valve_40px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=20, mem_th=1, fl_chm_h=3, pn_chm_h=6, inport_center=true,
        out_len=44, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=12, rot_pn=false,
        extra_sp = 0, 
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
        offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        
        
        
    }
    if (ren_lef)
        lef() ;
    
}
 {
    if($preview) {
        %cube([125*px,122*px,350*layer]);
    } else {
        cube([125*px,122*px,350*layer]);
    }
    union() {
        
 valve_40px_1(xpos = -30.0, ypos = -30.0, zpos = 200.0, orientation = "FN");
    }
}
module valve_40px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=20, mem_th=1, fl_chm_h=6, pn_chm_h=9, inport_center=true,
        out_len=44, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=12, rot_pn=false,
        extra_sp = 0, 
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
        offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        
        
        
    }
    if (ren_lef)
        lef() ;
    
}
module valve_80px_1(xpos, ypos, zpos, orientation,
    px=22e-3, layer=10e-3, lpv=40, pitch=30, ren_lef=false)
{
    translate([1*px,0,0])
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=40, mem_th=1, fl_chm_h=3, pn_chm_h=6, inport_center=true,
        out_len=27, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=10, rot_pn=false,
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
    }
    if (ren_lef)
        lef() ;
}
module pump_40px_1(xpos, ypos, zpos, orientation){
    
    d_DC = 40*px;    t_m_DC = layer;    h_f_DC = 3*layer;    h_c_DC = 6*layer;    d_v = 20*px;    t_m_v = layer;    h_f_v = 2*layer;    h_c_v = 4*layer;    dist_v2v = d_DC + d_v + 40*px;    dist_v2chan = 5*layer;    
    xychan0 = 6*px;  
    hchan = 10*layer;
    wchan = 12*px;
    xychan = 12*px;
    Wchan = 14*px;
    Hchan = 25*layer;
    hchan2 = 10*layer;
    ochan = 70*px;


    dim  = [
            [[0, 0], [-Wchan/2, Wchan/2], [0, hchan]],            [[-Wchan/2, Wchan/2], [0, 0], [0, hchan]],            [[-xychan/2, xychan/2], [-xychan/2, xychan/2], [0, 0]],            [[-xychan0/2, xychan0/2], [-xychan0/2, xychan0/2], [0, 0]],            [[-wchan/2, wchan/2], [0, 0], [0, hchan2]],            [[-Wchan/2, Wchan/2], [-Wchan/2, Wchan/2], [0, 0]],           ];
    
    module valve(d, h_bot, h_top, t_memb){ 
        /*
        d :         diameter of the valve
        h_bot:      bottom chamber height
        h_top:      top chamber height
        t_memb:     membrane thickness
        */    
        
        color("SteelBlue")
        cylinder(d = d, h = h_bot, $fn = 100);
        
        color("CadetBlue")
        translate([0, 0, h_bot+t_memb])
        cylinder(d = d, h = h_top, $fn = 100);    
    }
    
    module obj(){
        valve(d_DC, h_f_DC, h_c_DC, t_m_DC);
        
        for (j = [0:1]){
            mirror([0, j, 0]){
                translate([0, dist_v2v/2, 0])
                
                valve(d_v, h_f_v, h_c_v, t_m_v);
                
                pi_0 = [0 , d_DC/2 - xychan/2, 0];
                pf_0 = [0, dist_v2v/2, 0];
                connect_0 = [
                             ["+z", -(dist_v2chan+hchan), 2],
                             ["yz", pf_0, [4,3]]
                            ];
                routing(pi_0, connect_0, dim);
            }
        
        }
        pi_1_0 = [0, 50*px, 7*layer];
        connect_1_0 = [["+x", -57*px, 0]];
        color("Red")
        routing(pi_1_0, connect_1_0, dim);
        
        pi_1_1 = [0, 50*px, 7*layer];
        connect_1_1 = [["+x", 57*px, 0]];
        color("Blue")
        routing(pi_1_1, connect_1_1, dim);
        
        pi_2 = [-57*px, -50*px, 7*layer];
        connect_2 = [["+x", 114*px, 0]];
        routing(pi_2, connect_2, dim);
        
        pi_3 = [-57*px, 0, 10*layer];
        connect_3 = [["+x", 114*px, 0]];
        routing(pi_3, connect_3, dim);
        
        pi_4 = [0, 59*px, -9*layer];
        connect_4 = [["+yz", [16*px, -4*layer], [1, 5]]];
        routing(pi_4, connect_4, dim);
        
        pi_5 = [0, -59*px, -9*layer];
        connect_5 = [["+yz", [-16*px, -4*layer], [1, 5]]];
        routing(pi_5, connect_5, dim);
    }
    
    if (orientation == "N"){
        rotate(a = 270)
        translate([-75*px - ypos*px, 100*px + xpos*px, 13*layer + zpos*layer])
        obj();
    }
        if (orientation == "FN"){
        mirror()
        rotate(a = 270)
        translate([-75*px - ypos*px, -100*px - xpos*px, 13*layer + zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror([0, 1, 0])
        rotate(a = 270)
        translate([75*px + ypos*px, 100*px + xpos*px, 13*layer + zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror()
        mirror([0, 1, 0])
        rotate(a = 270)
        translate([75*px + ypos*px, -100*px - xpos*px, 13*layer + zpos*layer])
        obj();
    }
    
}
module p_serpentine_0(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=22e-3, layer=10e-3, lpv=40, chan_h=20, chan_w=9, shape="cube", pitch=30,
    no_obj=false, floor_area=false, chan_layers=1, rot=0, clr="RosyBrown",
    show_lef=false)
{
  module obj()
  {
    p_serpentine(xpos, ypos, zpos-40, orientation,
      L1=L1, L2=L2, turns=turns, chan_layers=1, rot=true,
      px=px, layer=layer, lpv=lpv, chan_h=chan_h, chan_w=chan_w, pitch=pitch) ;
  }
    if(orientation == "N"){
      mirror([0,0,0])
      obj() ;
    }
    else if(orientation == "S"){
      obj() ;
    }
    else if(orientation == "FN") {
      mirror([0,0,0])
      obj() ;
    }
    else
      obj() ;
    
    module lef_() 
    { 
        lef_layer("met1")
        lef_port("in_fluid", "INPUT", "RECT", [23, 23, 37, 37]) ;

        lef_layer("met1")
        lef_port("out_fluid", "INPUT", "RECT", [turns*L2+23, ((turns+1)%2)*L1+23, turns*L2+37, ((turns+1)%2)*L1+37]) ;
    }
    
    if (show_lef)
        lef_() ;
}
module p_serpentine_1(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=22e-3, layer=10e-3, lpv=40, chan_h=20, chan_w=9, shape="cube", pitch=30, 
    no_obj=false, floor_area=false, clr="RosyBrown", layer_offset=74, alt=0, rot=0, show_lef=false)
{
    module obj() {
      p_serpentine(xpos, ypos, zpos-22, orientation,
      L1=L1, L2=L2, turns=turns, chan_layers=2, rot=true,
      px=px, layer=layer, lpv=lpv, chan_h=chan_h, chan_w=chan_w, pitch=pitch) ;
    }

    if(orientation == "N"){
      obj() ;
    }
    else if(orientation == "S"){
      obj() ;
    }
    else if(orientation == "FN") {
      obj() ;
    }
    else
      obj() ;
}
module p_serpentine_2(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=22e-3, layer=10e-3, lpv=40, chan_h=20, chan_w=9, shape="cube", pitch=30, 
    no_obj=false, floor_area=false, clr="RosyBrown", layer_offset=74)
{
    module obj()
    {
      p_serpentine(xpos, ypos, zpos-22, orientation,
      L1=L1, L2=L2, turns=turns, chan_layers=3, rot=true,
      px=px, layer=layer, lpv=lpv, chan_h=chan_h, chan_w=chan_w, pitch=pitch) ;
    }
    if(orientation == "N"){
      obj() ;
    }
    else if(orientation == "S"){
      obj() ;
    }
    else if(orientation == "FN") {
      obj() ;
    }
    else
      obj() ;
}
module p_serpentine_3(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=22e-3, layer=10e-3, lpv=40, chan_h=20, chan_w=9, shape="cube", pitch=30, 
    no_obj=false, floor_area=false, clr="RosyBrown", layer_offset=74)
{
    module obj() {
      p_serpentine(xpos, ypos, zpos-22, orientation,
      L1=L1, L2=L2, turns=turns, chan_layers=4, rot=true, 
      px=px, layer=layer, lpv=lpv, chan_h=chan_h, chan_w=chan_w, pitch=pitch) ;
    }

    if(orientation == "N"){
      obj() ;
    }
    else if(orientation == "S"){
      obj() ;
    }
    else if(orientation == "FN") {
      obj() ;
    }
    else
      obj() ;
}
module p_serpentine_obj(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, 
    no_obj=false, floor_area=false, chan_layers=2, clr="RosyBrown", layer_offset=20, alt=0, rot=0)
{
    module obj(orientation){
        i_len = [[[[[0,0,0], [L1*px,0,0]]]]];
        pts = 
        
            (alt?concat(i_len,[for(j=[1:chan_layers])
                [[for (i=[1:(j%2?turns:turns-1)]) [                    
                    [0,(j%2?L2:-L2)*px,0], 
                    [(j%2?-1:(turns%2?1:-1))*(i%2?L1:-L1)*px,0,0]
                    ]], 
                [[
                    [0,(j%2?0:-L2)*px,0],
                    [(j%2?0:L1)*px,0,0],
                    [0,0,(j==chan_layers?0:lpv*layer)]]]] ])
            :
                [for(j=[1:chan_layers])
                    concat((j%2?1:-1)*i_len[0],
                    [[for (i=[1:(j%2?turns:(turns))]) [                    
                    [0,(j%2?L2:-L2)*px,0], 
                    [(j%2?1:-1)*(i%2?-L1:L1)*px,0,0]
                    ]], 
                [[
                    [0,0,(j==chan_layers?0:lpv*layer)]]]]) ]
            );
                
        /*pts = [for(j=[1:chan_layers])
                [[for (i=[1:(j%2?turns:turns)]) [
                    [0,(j%2?(i==1?0:L2):-L2)*px,0], 
                    [(j%2?L1:L1)*px,0,0], 
                    [0,(j%2?L2:-L2)*px,0], 
                    [-(j%2?L1:L1)*px,0,0]
                    ]], 
                [[[0,0,(j==chan_layers?0:lpv*layer)]]]] ];*/
                
        pts_c = [for(i=[0:len(pts)-1]) 
                    for(j=[0:len(pts[i])-1]) 
                        for(k=[0:len(pts[i][j])-1]) 
                            for(l=[0:len(pts[i][j][k])-1]) pts[i][j][k][l]];
        
        poly_pts = [for(i=[0:len(pts_c)-1])
            [shape, [chan_w*px, chan_w*px, chan_h*layer], pts_c[i], [0,[0,0,1]]] ];
        
        rotate([0,0,(rot?90:0)])
        mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
        mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
        translate([-L1*px/2, -L2*px*(turns)/2, 0])
            polychannel(poly_pts, clr=clr) ;
    }
    
    x_off = L1/2*px+(pitch+chan_w/2)*px;
    y_off = L2*px*(turns)/2+(pitch)*px;

    if(!no_obj)
        translate([xpos*px, ypos*px, zpos*px])
            translate((rot?[y_off, x_off, chan_h/2*layer]:[x_off, y_off, chan_h/2*layer+layer_offset*layer])-[(rot?0:1),(rot?1:0),0]*chan_w*px/2)
                obj(orientation);
    
    if(floor_area && floor_area != "transparent"){
        translate([xpos*px-chan_w/2*px, ypos*px-chan_w/2*px, zpos*px]){
        color("blue")
        translate([(pitch)*px, (pitch)*px,-layer/10])
            cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
        }
    }
    if(floor_area == "transparent"){
        color("blue")
        translate([(pitch)*px, (pitch)*px,-layer/10])
            %cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            %cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
    }
}
module interconnect_32channel(xpos, ypos, zpos){
    gasket_side_length = 40*px;
    gasket_aperture_length = 20*px;
    gasket_height = 1*layer;

    gasket_grid = [2, 2];
    block_gasket_offset = 155*px;
    block_height_default = 200*layer;
    block_long_side = 600*px;
    block_short_side = 399*px;
    gasket_offset = 50*px;

    pedestal_x = 780*px;
    pedestal_y = 380*px;
    pedestal_height = 100*px;

    channel_width_thick = 20 * px;
    channel_width_default = 12*px;

    module zchan(l, xy = channel_width_default) {
        color("lightblue")
        translate([-xy / 2, -xy / 2, 0]) {
            if (l < 0)
                mirror([0, 0, 1])
            cube([xy, xy, -l]);
            else
            cube([xy, xy, l]);
        }
    }

    module gasket(
        gasket_side_length=gasket_side_length, 
        aperture_side_length=gasket_aperture_length, 
        height=gasket_height
        ){

            gasket_width = (gasket_side_length - aperture_side_length)/2;
            difference(){
                cube([gasket_side_length, gasket_side_length, height]);
                translate([gasket_width, gasket_width, 0])
                    cube([aperture_side_length, aperture_side_length, height]);
        }
    }

    module interconnect(
        gasket_grid=gasket_grid,
        gasket_side_length=gasket_side_length, 
        aperture_side_length=gasket_aperture_length, 
        gasket_height=gasket_height,
        gasket_offset = gasket_offset,
        block_gasket_offset=block_gasket_offset,
        block_height=block_height_default,
        block_long_side=block_long_side,
        block_short_side=block_short_side,
        ccim=false,        for_interface_chip=false        ){
        gasket_group_x_lenght = gasket_grid[1] * gasket_side_length + (gasket_grid[1]-1) * gasket_offset;
        gasket_group_y_lenght = gasket_grid[0] * gasket_side_length + (gasket_grid[0]-1) * gasket_offset;
        x_centering_offset = gasket_group_x_lenght/2;
        y_centering_offset = gasket_group_y_lenght/2;
        if (ccim){
            cube([1, 1, 1]);        }
        else {
            flip_angle = for_interface_chip ? 180:0;
            diff_interface_blocks = for_interface_chip ? 0:50*layer;
            rotate([flip_angle, 0, 0]){
                translate([-x_centering_offset, -y_centering_offset, 0]){
                    for (row=[0:gasket_grid[1]-1]){
                        for (col=[0:gasket_grid[0]-1]){
                            translate([(gasket_side_length + gasket_offset)*row, (gasket_side_length + gasket_offset)*col, 0])
                            if (for_interface_chip){
                                %gasket(gasket_side_length=gasket_side_length, aperture_side_length=aperture_side_length, height=gasket_height);
                            }
                            else {
                                gasket(gasket_side_length=gasket_side_length, aperture_side_length=aperture_side_length, height=gasket_height);
                            }
                        }
                    }
                }
                translate([x_centering_offset + block_gasket_offset, -block_long_side/2, -pedestal_height])
                    cube([block_short_side, block_long_side, block_height - diff_interface_blocks]);
                translate([-x_centering_offset - block_gasket_offset - block_short_side, -block_long_side/2, -pedestal_height])
                    cube([block_short_side, block_long_side, block_height - diff_interface_blocks]);
            }
        }
    }

    module corner_connections(){
        for (row=[0.5, 1.5]) {
            for (col=[-0.5, -1.5, -2.5, -3.5]) {
                x_offset_outchan = col*gasket_side_length + col*gasket_offset;
                y_offset_outchan = row*gasket_side_length + row*gasket_offset;
                translate([x_offset_outchan, y_offset_outchan, 0])
                    zchan(pedestal_height+gasket_height, xy=channel_width_thick);
            }
        }
    }

    module obj(){
        difference(){
            translate([-pedestal_x/2, -pedestal_y/2, 0])
                cube([pedestal_x, pedestal_y, pedestal_height]);
            corner_connections();
            translate([4*(gasket_side_length+gasket_offset), 0, 0]){
                corner_connections();
            }
            translate([0, -2*(gasket_side_length+gasket_offset), 0]){
                corner_connections();
            }
            translate([4*(gasket_side_length+gasket_offset), -2*(gasket_side_length+gasket_offset), 0]){
                corner_connections();
            }
        }

        translate([0, 0, pedestal_height])
            interconnect(gasket_grid=[4, 8], for_interface_chip=false);
        }

    translate([xpos*px, ypos*px, zpos*layer]){
        obj();
    }
        
}
module pinhole_325px_0(xpos, ypos, zpos, orientation){
    
    d_pin   = 140*px;    l_pin   = 260*px;    h_cone  = 67*px;    
    module obj(){
        rotate([-90, 0, 0]){
            translate([0, 0, l_pin]){
                cylinder(h = h_cone, d1 = d_pin, d2 = 0);
            }
        cylinder(d = d_pin, h = l_pin);
        }
    }
    
    if (orientation == "bottom"){
        translate([xpos*px, ypos*px, zpos*layer + 5 * layer])
        obj();
    }
    
    if (orientation == "left"){
        rotate([0, 0, -90])
        translate([-ypos*px, xpos*px, zpos*layer + 5 * layer])
        obj();
    }
    
    if (orientation == "top"){
        rotate([0, 0, -180])
        translate([-xpos*px, -ypos*px, zpos*layer + 5 * layer])
        obj();
    }
    
    if (orientation == "right"){
        rotate([0, 0, 90])
        translate([ypos*px, -xpos*px, zpos*layer+ 5 * layer])
        obj();
    }

}
module empty_obj(str_obj){
    
}
module in_line_membrane(xpos, ypos, zpos, orientation,
    mem_r, mem_th, fl_chm_h, pn_chm_h, inport_center=false, 
    fl_out_len  = 30, pn_out_len=30, 
    extra_sp = 0,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, $fn=30, 
    no_obj=false, floor_area=false)
{
    
    module obj()
    {
            chan_dimm = [chan_w*px, chan_w*px, chan_h*layer];
        translate([0,0,fl_chm_h/2*layer])
            cylinder(fl_chm_h*layer, r=mem_r*px, center=true);
        translate([0,0,(fl_chm_h+mem_th+pn_chm_h/2)*layer])
            cylinder(pn_chm_h*layer, r=mem_r*px, center=true);
        
        polychannel([
        ["cube", chan_dimm, [-(mem_r+fl_out_len)*px, 0, chan_h*layer/2], [0,[0,0,1]] ],
        ["cube", chan_dimm, [(mem_r+fl_out_len)*2*px, 0, 0], [0,[0,0,1]], ]]);
        
        z_chan_offset = (fl_chm_h+pn_chm_h+mem_th-chan_h/2)*layer;
        
        polychannel([
        ["cube", chan_dimm, [0, -(mem_r+fl_out_len)*px, z_chan_offset], [0,[0,0,1]] ],
        ["cube", chan_dimm, [0, (mem_r+fl_out_len)*2*px, 0], [0,[0,0,1]], ]]);
    }
    
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, 0])
        translate([(mem_r+fl_out_len+chan_w/2)*px, (mem_r+pn_out_len+chan_w/2)*px, 0])
            obj();
    
}
module lefdef_orient(direction, center=[0,0], size=[0,0]) {
  module centertranslate() {
    if (center[0] != 0 || center[1] != 0) {
      if (size[0] > 0 || size[1] > 0)
        echo("Both center and size defined, center wins") ;

      translate([center[0], center[1], 0])
        children() ;
    }
    else if (size[0] > 0 || size[1] > 0) {
      translate([size[0]/2, size[1]/2, 0])
        children() ;
    }
    else {
      children() ;
    }
  }
  if (direction == "N" || direction == "R0") {
    centertranslate() 
      children() ;
  }
  else if (direction == "S" || direction == "R180") {
    centertranslate() 
    rotate(180)
      children() ;
  }
  else if (direction == "FN" || direction == "MX") {
    centertranslate() 
    mirror([1,0,0])
      children() ;
  }
  else if (direction == "FS" || direction == "MY") {
    centertranslate() 
    mirror([0,1,0])
      children() ;
  }
  else if (direction == "W" || direction == "R180") {
    centertranslate() 
    rotate(90)
      children() ;
  }
  else if (direction == "E" || direction == "R180") {
    centertranslate() 
    rotate(270)
      children() ;
  }
  else if (direction == "FW" || direction == "MX90") {
    centertranslate() 
    mirror([1,0,0])
    rotate(90) 
      children() ;
  }
  else if (direction == "FE" || direction == "MY90") {
    centertranslate() 
    mirror([0,1,0])
    rotate(90)
      children() ;
  }
  else {
    echo("Invalid orientation for lefdef_orient ", direction) ;
    children() ;
  }
}
module marker(xpos, ypos, zpos){
    marker_height = 80*layer;
    marker_diameter = 200*px;
    
    module obj(){
        cylinder(h = marker_height, d = marker_diameter);
    }

    translate([xpos, ypos, zpos]){
        obj();
    }
}
module multi_in_chamber(xpos, ypos, zpos, orientation,
    num_inputs, input_sp, chm_h, chm_l,
    chan_out_w, chan_out_h, has_nozzle=false, nozzle_l,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, rot=false,
    no_obj=false, floor_area=false
)
{
    chm_w = (input_sp*(num_inputs-1)+chan_w)*px;
    chm_l_s1 = (has_nozzle?chm_l - nozzle_l:chm_l);
    chm_l_s2 = (has_nozzle?nozzle_l:0);
    chan_in_l  = 30*px;
    chan_out_l = 30*px;

    
    module obj(){
        translate([0,(chm_l-chm_l_s1)/2*px,0])
        cube([chm_w, 
            chm_l_s1*px, 
            chm_h*layer], center=true) ;
        translate([chm_w/2-chan_w/2*px, chm_l/2*px, 0])
            for(i = [0:num_inputs-1])
                translate([-input_sp*px*i, chan_in_l/2, 0])
                    cube([chan_w*px, chan_in_l, chan_h*layer], center=true);
        if(has_nozzle)
        {
            polychannel(
                [["cube", [chm_w, px/10, chm_h*layer], [0,-(chm_l/2-chm_l_s2)*px,0], [0,[0,0,1]]],
                ["cube", [chan_w*px, px/10, chan_h*layer],  [0,-chm_l_s2*px,0], [0,[0,0,1]]]]);
        }
        translate([0,-chm_l*px/2-chan_out_l/2, 0])
            cube([chan_w*px, chan_out_l, chan_h*layer], center=true);
    }
    
    x_off = chm_w/2;
    y_off = chan_out_l+chm_l*px/2;
    
    translate([(pitch-chan_w/2)*px,(pitch-chan_w/2)*px,0])
        translate([(rot?y_off:x_off),(rot?x_off:y_off),chm_h*layer/2])
            rotate([0,0,(rot?-90:0)])
            mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
            mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
            obj() ;
    if (floor_area)
        color("blue")
        translate([0,0,-layer/10])
            cube([(pitch*2+chm_l)*px+chan_in_l+chan_out_l,
                    (pitch*2)*px+chm_w,
                    (layer/10)]);
}
module optical_view(xpos, ypos, zpos, orientation,
    r_ch=20, i_depth=10, d_depth=6, d_ch_distance=10, num_of_ch=5, init_path_len=27,
    px=7.6e-3, layer=10e-3, lpv=20, pitch=30, fn=30, offset_layer=55,
   chan=[10, 10, 14], shape="cube", center_chambers=false, flip_z=false, ren_lef=false)
{
    r_chpx = r_ch*px ;
    ipx_dpth = i_depth*layer ;
    dpx_dpth = d_depth*layer ;
    dist_ch= d_ch_distance*px ;
    
    num_ch = num_of_ch ;
    
    i_dimm = [chan[0]*px, chan[1]*px, ipx_dpth] ;
    nr = [0,[0,0,1]] ;
    
    cc = 3;
    
    i_path_len = init_path_len * px;
    
    module obj()
    {
        for(i = [0:num_ch-1])
        {
            translate([i*(2*r_chpx+dist_ch),0,(center_chambers?-dpx_dpth*i/2:0)])
            cylinder(r=r_chpx, h=ipx_dpth+dpx_dpth*i, $fn=fn) ;
            
            d1  = [i_dimm[0], i_dimm[1], ipx_dpth+dpx_dpth*i] ;
            d2  = [i_dimm[0], i_dimm[1], ipx_dpth+dpx_dpth*(i+1)] ;
            
            pt1 = [
                r_chpx+i*(2*r_chpx+dist_ch)+cc*px, 
                0, 
                (center_chambers?
                    i_dimm[2]/2:
                    i_dimm[2]/2+dpx_dpth/2*i)] ;
            pt2 = [
                dist_ch+i_dimm[0]/2-cc*px, 
                0, 
                (center_chambers?-dpx_dpth/2:0)+dpx_dpth/2] ;
            
            if(i < num_ch-1)
                polychannel([
                    [shape, d1, pt1, nr],
                    [shape, d2, pt2, nr],
                ]) ;
            polychannel([[shape, i_dimm, [-r_chpx,0,i_dimm[2]/2], nr],
                [shape, i_dimm, [-i_path_len,0,0], nr]]) ;
            
            f_dimm = [i_dimm[0], i_dimm[1], i_dimm[2]+(num_ch-1)*dpx_dpth] ;
            f_pt = 
                [(r_chpx*2+dist_ch)*(num_ch-1)+r_chpx-i_dimm[0]/2, 0, center_chambers?i_dimm[2]/2:f_dimm[2]/2] ;
            
            polychannel([[shape, f_dimm, f_pt, nr],
                [shape, i_dimm, [i_path_len/2, 0, (center_chambers?0:-f_dimm[2]/2+i_dimm[2]/2)], nr],
                [shape, i_dimm, [i_path_len/2, 0, 0], nr]]) ;
        }
    }
   
    translate([xpos*px, ypos*px, zpos*layer])
    translate([pitch*px, pitch*px, offset_layer*layer])
    translate([0,(30)*px-r_chpx,lpv*3*layer])
    mirror([0,0,(flip_z?1:0)])
    translate([i_path_len+r_chpx+i_dimm[0]/2, r_chpx, 0])
    obj();
    
    module lef()
    {
        lef_size(360, 120) ;
        
        lef_layer("met1")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met2")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met3")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met4")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met5")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met6")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met7")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met8")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        lef_layer("met9")
        lef_obs("RECT", [30, 30, 330, 90]) ;
        
        lef_layer("met4")
        lef_port("in_fluid", "INPUT", "RECT", [29.5, 59.5, 30.5, 60.5]) ;
        
        lef_layer("met4")
        lef_port("out_fluid", "OUTPUT", "RECT", [329.5, 59.5, 330.5, 60.5]) ;
    }
    if(ren_lef)
        lef() ;
}
module p_chamber(xpos, ypos, zpos, orientation,
    chm_r, chm_h, chm_len=0,
    conn_ch_w=14, conn_ch_h=10, conn_ch_l=20, 
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10, $fn=50,
    rot=false, no_obj=false, floor_area=false)
    {
        
        module obj(){
        c_px_len = chm_len*px;
        c_px_r   = chm_r*px;
        c_lay_h  = chm_h*layer;
        
        real_conn_h = (conn_ch_h>chm_h?chm_h:conn_ch_h);
        
        if(chm_len > 2*chm_r)
        {
            
            translate([c_px_len/2-c_px_r, 0, 0])
                cylinder(c_lay_h, r=c_px_r, center= true) ;
            translate([-c_px_len/2+c_px_r, 0, 0])
                cylinder(c_lay_h, r=c_px_r, center= true) ;
            cube([c_px_len-c_px_r*2, c_px_r*2, c_lay_h], center= true) ;
        }
        else{
            cylinder(chm_h*px, r=chm_r*px, center= true) ;
        }
        translate([-c_px_len/2-conn_ch_l*px/2+c_px_r/2, 0, 0])
            cube([conn_ch_l*px+c_px_r, conn_ch_w*px, real_conn_h*layer], center=true);
        translate([c_px_len/2+conn_ch_l*px/2-c_px_r/2, 0, 0])
            cube([conn_ch_l*px+c_px_r, conn_ch_w*px, real_conn_h*layer], center=true);
        
        }
        
        x_off = chm_len/2*px+conn_ch_l*px ;
        y_off = chm_r*px ;
        
        translate([xpos*px, ypos*px, zpos*layer])
        translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, offset_layers*layer])
        translate([(rot?y_off:x_off), (rot?x_off:y_off), chm_h/2*layer])
        rotate([0,0,(rot?90:0)])
            mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
            mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
            obj();
        
    }
module pinhole(d=106*layer, l=200*px, orth=0, ychan_z_angle=0) {
    rotate([-90, 0, orth]){
        union(){
            cylinder(d = d, h = l, $fn = 100);
            translate([0, 0, l])
                cylinder(h=300*px, r1=d/4, r2=2*layer, $fn = 100);
        }
    }
}
module p_pump(xpos, ypos, zpos, orientation,
    r1=46, r2=46, r3=46,
    th1 = 10, th2 = 10, th3 = 10,
    fl_h1=10, fl_h2=10, fl_h3=10,
    pn_h1=14, pn_h2=14, pn_h3=14,
    len_sp=30, pn_out_len=20, 
    fl_extra_sp=4, pn_extra_sp="fill",
    fl_out_h=10, pn_out_h=10, ends_ex_len=10,
    dwn_chan_h=0, dwn_chan_w=0,
    port_chan_h=0, port_chan_w=0,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10,
    rot=false, no_obj=false, floor_area=false){
    
    module obj() {
        r_max = max(r1, r2, r3);
    
        
        dimm  = [chan_w*px,chan_w*px,chan_h*layer] ;
        dimmp = [port_chan_w*px,port_chan_w*px,port_chan_h*layer] ;
        pt0_0 = [chan_w/2*px,(r_max-chan_w/2+pn_out_len)*px,chan_h/2*layer] ;
        pt0_1 = [ends_ex_len*px,0,0] ;
        
        pt1_0 = [
            (r1*2+r2*2+r3*2+len_sp*3+ends_ex_len+chan_w/2)*px,
            (r_max-chan_w/2+pn_out_len)*px,
            chan_h/2*layer] ;
        pt1_1 = [ends_ex_len*px,0,0] ;
        translate([(ends_ex_len+chan_w)*px, 0,0]){
        translate([0,0,0])
            p_pvalve(0,0,0,"N",
            valve_r=r1, 
            mem_th=th1,
            fl_extra_sp=fl_extra_sp,
            fl_chm_h=fl_h1, 
            pn_chm_h=pn_h1, 
            inport_center=true,
            pitch=0,
            fl_out_len=len_sp/2,
            pn_out_len=r_max-r1+pn_out_len,
            rot_pn=false,
            flip_fl=true,
            pn_extra_sp=pn_extra_sp,
            fl_out_h=fl_out_h,
            px=px,
            layer=layer,
            chan_h=chan_h, chan_w=chan_w,
            dwn_chan_h=dwn_chan_h, dwn_chan_w=dwn_chan_w,
            offset_layers=0
            );
        translate([(r1*2+len_sp)*px,0,0])
            p_pvalve(0,0,0,"N",
            valve_r=r2, 
            mem_th=th2, 
            fl_chm_h=fl_h2, 
            pn_chm_h=pn_h2, 
            inport_center=false,
            pitch=0,
            fl_out_len=len_sp/2,
            pn_out_len=r_max-r2+pn_out_len,
            rot_pn=false,
            fl_extra_sp="fill",
            pn_extra_sp=pn_extra_sp,
            fl_out_h=fl_out_h,
            px=px,
            layer=layer,
            chan_h=chan_h, chan_w=chan_w,
            dwn_chan_h=dwn_chan_h, dwn_chan_w=dwn_chan_w,
            offset_layers=0);
        translate([((r1*2+len_sp)+(r2*2+len_sp))*px,0,0])
            p_pvalve(0,0,0,"N",
            valve_r=r3, 
            mem_th=th3,
            fl_extra_sp=fl_extra_sp,
            fl_chm_h=fl_h3, 
            pn_chm_h=pn_h3, 
            inport_center=true,
            pitch=0,
            fl_out_len=len_sp/2,
            pn_out_len=r_max-r3+pn_out_len,
            rot_pn=false,
            pn_extra_sp=pn_extra_sp,
            fl_out_h=fl_out_h,
            px=px,
            layer=layer,
            chan_h=chan_h, chan_w=chan_w,
            dwn_chan_h=dwn_chan_h, dwn_chan_w=dwn_chan_w,
            offset_layers=0);
        }
        polychannel(
        [[shape, (port_chan_w==0 || port_chan_h==0?dimm:dimmp), pt0_0, [0,[0,0,1]]],
        [shape, dimm, pt0_1, [0,[0,0,1]]],]) ;
        polychannel(
        [[shape, dimm, pt1_0, [0,[0,0,1]]],
        [shape, (port_chan_w==0 || port_chan_h==0?dimm:dimmp), pt1_1, [0,[0,0,1]]],]) ;
    }
    translate([xpos*px, ypos*px, zpos*layer])
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, offset_layers*layer])
        obj() ;
}
module p_pvalve(xpos, ypos, zpos, orientation,
    valve_r, mem_th, fl_chm_h, pn_chm_h, inport_center=false, 
    fl_out_len=20, pn_out_len=20,
    fl_out_h  =10, pn_out_h  =10,
    dwn_chan_h=0, dwn_chan_w=0,
    fl_extra_sp = 0, pn_extra_sp = 0, rot_pn="true",
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10, $fn=30, flip_fl=false,
    rot=false, no_obj=false, floor_area=false)
{
   
    
    module obj()
    {
        chan_dimm     = [chan_w*px, chan_w*px, chan_h*layer];
        chan_dimm_dwn = [dwn_chan_w*px, dwn_chan_w*px, chan_h*layer];
        translate([0,0,fl_chm_h/2*layer])
            cylinder(fl_chm_h*layer, r=valve_r*px, center=true);
        translate([0,0,(fl_chm_h+mem_th+pn_chm_h/2)*layer])
            cylinder(pn_chm_h*layer, r=valve_r*px, center=true);
        
        
        inp_pos = (inport_center?
            0:
            (fl_extra_sp=="fill"?-(valve_r-chan_w/2-1)*px:-((valve_r/4+fl_extra_sp)*px)));
        
        outp_pos= (inport_center?
            (valve_r-chan_w/2+fl_extra_sp)*px:
            -inp_pos);
        
        
        
        fl_len_0 = (inport_center?
                (fl_out_len>fl_extra_sp?(valve_r-chan_w/2+fl_out_len)*px:
                (valve_r-chan_w/2+fl_out_len)*px)
            :            (fl_extra_sp=="fill"?(fl_out_len+1)*px:
            (valve_r*3/4-chan_w/2-fl_extra_sp+fl_out_len)*px));
        fl_len_1 = (inport_center?
                abs(fl_out_len-fl_extra_sp)*px
            :            (fl_extra_sp=="fill"?(fl_out_len+1)*px:
            (valve_r*3/4-chan_w/2-fl_extra_sp+fl_out_len)*px));
            
        
        if(flip_fl)
        {
        polychannel(
            [
            [shape, (dwn_chan_h==0 || dwn_chan_w==0?chan_dimm:chan_dimm_dwn), [-inp_pos,0,-chan_h*layer/2], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [fl_len_0,0,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, (dwn_chan_h==0 || dwn_chan_w==0?chan_dimm:(inport_center?chan_dimm:chan_dimm_dwn)), 
            [-outp_pos,0,-chan_h*layer/2], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [-fl_len_1,0,0], [0,[0,0,1]]]
        ]);
        } else {
        polychannel(
            [
            [shape, (dwn_chan_h==0 || dwn_chan_w==0?chan_dimm:chan_dimm_dwn), [inp_pos,0,-chan_h*layer/2], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [-fl_len_0,0,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, (dwn_chan_h==0 || dwn_chan_w==0?chan_dimm:(inport_center?chan_dimm:chan_dimm_dwn)), 
            [outp_pos,0,-chan_h*layer/2], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [fl_len_1,0,0], [0,[0,0,1]]]
        ]); 
        }
        
        
        init_z_off = (fl_chm_h+mem_th+pn_chm_h+chan_h/2)*layer;
        pn_pos_lat = (pn_extra_sp=="fill"?
            (valve_r-chan_w/2-1)*px:
            (pn_extra_sp=="fill-edge"?(valve_r+chan_w/2-4)*px:
                (valve_r/4+chan_w/2)*px));
        pn_len     = (pn_extra_sp=="fill"?
            (pn_out_len+1)*px:
            (pn_extra_sp=="fill-edge"?(pn_out_len-chan_w+4)*px:
                (valve_r*3/4-chan_w+pn_out_len)*px));
        
        rotate([0,0,(rot_pn?90:0)])
        {
        polychannel(
            [[shape, chan_dimm, [0,pn_pos_lat,init_z_off], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,pn_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,pn_len,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [0,-pn_pos_lat,init_z_off], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,pn_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,-pn_len,0], [0,[0,0,1]]]
        ]);
        }
    }
    
    tran_x_offset = (valve_r+fl_out_len)*px;
    tran_y_offset = (valve_r+pn_out_len)*px;
    
    translate([(pitch-chan_w/2)*px,(pitch-chan_w/2)*px,offset_layers*layer])
    translate([
        (rot?tran_y_offset:tran_x_offset),
        (rot?tran_x_offset:tran_y_offset),
        (fl_out_h+chan_h)*layer])        rotate([0,0,(rot?90:0)])
        mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
        mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
            obj();
}
module p_serpentine_obj(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, 
    no_obj=false, floor_area=false, chan_layers=2, clr="RosyBrown", layer_offset=20, alt=0, rot=0)
{
    module obj(orientation){
        i_len = [[[[[0,0,0], [L1*px,0,0]]]]];
        pts = 
        
            (alt?concat(i_len,[for(j=[1:chan_layers])
                [[for (i=[1:(j%2?turns:turns-1)]) [                    
                    [0,(j%2?L2:-L2)*px,0], 
                    [(j%2?-1:(turns%2?1:-1))*(i%2?L1:-L1)*px,0,0]
                    ]], 
                [[
                    [0,(j%2?0:-L2)*px,0],
                    [(j%2?0:L1)*px,0,0],
                    [0,0,(j==chan_layers?0:lpv*layer)]]]] ])
            :
                [for(j=[1:chan_layers])
                    concat((j%2?1:-1)*i_len[0],
                    [[for (i=[1:(j%2?turns:(turns))]) [                    
                    [0,(j%2?L2:-L2)*px,0], 
                    [(j%2?1:-1)*(i%2?-L1:L1)*px,0,0]
                    ]], 
                [[
                    [0,0,(j==chan_layers?0:lpv*layer)]]]]) ]
            );
                
        /*pts = [for(j=[1:chan_layers])
                [[for (i=[1:(j%2?turns:turns)]) [
                    [0,(j%2?(i==1?0:L2):-L2)*px,0], 
                    [(j%2?L1:L1)*px,0,0], 
                    [0,(j%2?L2:-L2)*px,0], 
                    [-(j%2?L1:L1)*px,0,0]
                    ]], 
                [[[0,0,(j==chan_layers?0:lpv*layer)]]]] ];*/
                
        pts_c = [for(i=[0:len(pts)-1]) 
                    for(j=[0:len(pts[i])-1]) 
                        for(k=[0:len(pts[i][j])-1]) 
                            for(l=[0:len(pts[i][j][k])-1]) pts[i][j][k][l]];
        
        poly_pts = [for(i=[0:len(pts_c)-1])
            [shape, [chan_w*px, chan_w*px, chan_h*layer], pts_c[i], [0,[0,0,1]]] ];
        
        rotate([0,0,(rot?90:0)])
        lefdef_orient(orientation)
        translate([-L1*px/2, -L2*px*(turns)/2, 0])
            polychannel(poly_pts, clr=clr) ;
    }
    
    x_off = L1/2*px+(pitch+chan_w/2)*px;
    y_off = L2*px*(turns)/2+(pitch)*px;

    if(!no_obj)
        translate([xpos*px, ypos*px, zpos*px])
            translate((rot?[y_off, x_off, chan_h/2*layer]:[x_off, y_off, chan_h/2*layer+layer_offset*layer])-[(rot?0:1),(rot?1:0),0]*chan_w*px/2)
                obj(orientation);
    
    if(floor_area && floor_area != "transparent"){
        translate([xpos*px-chan_w/2*px, ypos*px-chan_w/2*px, zpos*px]){
        color("blue")
        translate([(pitch)*px, (pitch)*px,-layer/10])
            cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
        }
    }
    if(floor_area == "transparent"){
        color("blue")
        translate([(pitch)*px, (pitch)*px,-layer/10])
            %cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            %cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
    }
}
module p_serpentine(xpos, ypos, zpos, orientation, L1, L2, turns,
    px=22e-3, layer=10e-3, lpv=40, chan_h=20, chan_w=9, shape="cube", pitch=30, 
    no_obj=false, floor_area=false, report_len=false, chan_layers=2, clr="RosyBrown", layer_offset=0, alt=0, rot=0)
{
    module obj(orientation){
        i_len = [[[[[0,0,0], [L1*px,0,0]]]]];
        pts = 
        
            (alt?concat(i_len,[for(j=[1:chan_layers])
                [[for (i=[1:(j%2?turns:turns-1)]) [                    
                    [0,(j%2?L2:-L2)*px,0], 
                    [(j%2?-1:(turns%2?1:-1))*(i%2?L1:-L1)*px,0,0]
                    ]], 
                [[
                    [0,(j%2?0:-L2)*px,0],
                    [(j%2?0:L1)*px,0,0],
                    [0,0,(j==chan_layers?0:lpv*layer)]]]] ])
            :
                [for(j=[1:chan_layers])
                    concat((j%2?1:(turns%2?1:-1))*i_len[0],
                    [[for (i=[1:(j%2?turns:(turns))]) [                    
                    [0,(j%2?L2:-L2)*px,0], 
                    [(j%2?1:(turns%2?1:-1))*(i%2?-L1:L1)*px,0,0]
                    ]], 
                [[
                    [0,0,(j==chan_layers?0:lpv*layer)]]]]) ]
            );
                
        /*pts = [for(j=[1:chan_layers])
                [[for (i=[1:(j%2?turns:turns)]) [
                    [0,(j%2?(i==1?0:L2):-L2)*px,0], 
                    [(j%2?L1:L1)*px,0,0], 
                    [0,(j%2?L2:-L2)*px,0], 
                    [-(j%2?L1:L1)*px,0,0]
                    ]], 
                [[[0,0,(j==chan_layers?0:lpv*layer)]]]] ];*/
                
        pts_c = [for(i=[0:len(pts)-1]) 
                    for(j=[0:len(pts[i])-1]) 
                        for(k=[0:len(pts[i][j])-1]) 
                            for(l=[0:len(pts[i][j][k])-1]) pts[i][j][k][l]];
        
        poly_pts = [for(i=[0:len(pts_c)-1])
            [shape, [chan_w*px, chan_w*px, chan_h*layer], pts_c[i], [0,[0,0,1]]] ];
        
        mirror([(orientation=="FN"||orientation=="S"?1:0),0,0])
        mirror([0,(orientation=="FS"||orientation=="S"?1:0), 0])
        mirror([0,(rot?1:0),0]) rotate([0,0,(rot?-90:0)])
        translate([-L1*px/2, -L2*px*(turns)/2, 0])
            polychannel(poly_pts, clr=clr) ;
    }
    
    x_off = L1/2*px+(pitch+chan_w/2)*px;
    y_off = L2*px*(turns)/2+(pitch)*px;

    if(!no_obj)
        translate([xpos*px, ypos*px, zpos*px])
            translate((rot?[y_off, x_off, chan_h/2*layer]:[x_off, y_off, chan_h/2*layer+layer_offset*layer])-[(rot?0:1),(rot?1:0),0]*chan_w*px/2)
                obj(orientation);
    
    if(floor_area && floor_area != "transparent"){
        translate([xpos*px-chan_w/2*px, ypos*px-chan_w/2*px, zpos*px]){
        color("blue")
        translate([(pitch)*px, (pitch)*px,-layer/10])
            cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
        }
    }
    if (report_len) {
        len_of_serp = (L1*(turns+1) + L2*turns)*chan_layers*px + 
        (chan_layers-1)*lpv*layer ;        
        echo("serpentine length", len_of_serp) ;
    }
    if(floor_area == "transparent"){
        color("blue")
        translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px,-layer/10])
            %cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            %cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
    }
}
module p_squeeze_pump(xpos, ypos, zpos, orientation,
    mem_th, fl_chm_h,
    valve_sp=30,
    fl_ext_len=30, fl_tran_len=5, fl_ext_th_len=4, 
    pn_ch_w=14, pn_pad = 14, pn_len = 40, pn_bttm_chm_h=20, 
    no_out_transition=false, no_in_transition=false,
    extra_sp = 0,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10,
    no_obj=false, floor_area=false)
{
    module obj() {
        
        p_squeeze_valve(0,0,0,"N",
            mem_th, fl_chm_h,
            fl_ext_len=fl_ext_len,
            fl_tran_len=fl_tran_len,
            fl_ext_th_len=fl_ext_th_len,
            pn_ch_w=pn_ch_w,
            pn_pad=pn_pad,
            pn_len=pn_len,
            pn_bttm_chm_h=pn_bttm_chm_h,
            pitch=0, 
            offset_layers=offset_layers,
            px=px, layer=layer,
            no_out_transition=true);
        p_squeeze_valve((valve_sp+pn_ch_w)*px,0,0,"N",
            mem_th, fl_chm_h,
            pn_ch_w=pn_ch_w,
            pn_pad=pn_pad,
            pn_len=pn_len,
            pn_bttm_chm_h=pn_bttm_chm_h,
            pitch=0, 
            offset_layers=offset_layers,
            px=px, layer=layer,
            no_out_transition=true,
            no_in_transition=true);
        p_squeeze_valve((valve_sp+pn_ch_w)*px*2,0,0,"N",
            mem_th, fl_chm_h,
            fl_ext_len=fl_ext_len,
            fl_tran_len=fl_tran_len,
            fl_ext_th_len=fl_ext_th_len,
            pn_ch_w=pn_ch_w,
            pn_pad=pn_pad,
            pn_len=pn_len,
            pitch=0, 
            offset_layers=offset_layers,
            px=px, layer=layer,
            pn_bttm_chm_h=pn_bttm_chm_h,
            no_in_transition=true);
    }
    
    translate([xpos, ypos, zpos])
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, 0])
        obj();
}
module p_squeeze_valve(xpos, ypos, zpos, orientation,
    mem_th, fl_chm_h,
    fl_ext_len=30, fl_tran_len=5, fl_ext_th_len=4, 
    pn_ch_w=14, pn_pad = 10, pn_len = 30, pn_bttm_chm_h=20, 
    no_out_transition=false, no_in_transition=false,
    extra_sp = 0,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10,
    rot=false, no_obj=false, floor_area=false)
{
    no_rot = [0,[0,0,1]];
    
    pn_chan_dimm = [pn_ch_w*px, chan_w*px, chan_h*layer];
    pn_chm_offset= (mem_th*2+fl_chm_h)*layer;
    pn_chm_h = pn_bttm_chm_h;
    
    ifl_chan_dimm = [px, chan_w*px, chan_h*layer] ;
    fl_chan_dimm  = [px, chan_w*px, fl_chm_h*layer] ;
    
    module obj() {
        
        polychannel([
            [shape, pn_chan_dimm, [0,-pn_len*px,0], no_rot],
            [shape, pn_chan_dimm, [0,2*pn_len*px,0], no_rot]
        ]);
        translate([0,(chan_w/2+pn_pad)*px,-pn_chm_offset/2-chan_h/2*layer])
            cube([pn_ch_w*px, chan_w*px, pn_chm_offset], center=true);
        translate([0,-(chan_w/2+pn_pad)*px,-pn_chm_offset/2-chan_h/2*layer])
            cube([pn_ch_w*px, chan_w*px, pn_chm_offset], center=true);
        bttm_chm_l = (chan_w*2+pn_pad*2);
        translate([0,0,-pn_chm_offset-(chan_h/2+pn_chm_h/2)*layer])
            cube([pn_ch_w*px, bttm_chm_l*px, pn_chm_h*layer], center=true);
        
        
        fl_z_offset = (chan_h/2+mem_th+fl_chm_h/2)*layer ;
        fl_pt_1 = (fl_ext_len-fl_tran_len-pn_ch_w/2-fl_ext_th_len)*px ;
        
        polychannel([
            [shape, (no_in_transition?fl_chan_dimm:ifl_chan_dimm), [-fl_ext_len*px, 0, -fl_z_offset], no_rot],
            [shape, (no_in_transition?fl_chan_dimm:ifl_chan_dimm), [fl_pt_1, 0,0], no_rot],
            [shape, fl_chan_dimm, [fl_tran_len*px, 0,0], no_rot],
            [shape, fl_chan_dimm, [(pn_ch_w+fl_ext_th_len*2)*px, 0,0], no_rot],
            [shape, (no_out_transition?fl_chan_dimm:ifl_chan_dimm), [fl_tran_len*px, 0,0], no_rot],
            [shape, (no_out_transition?fl_chan_dimm:ifl_chan_dimm), [fl_pt_1, 0,0], no_rot],
            
        ]);
    }
    
    obj_z_offset = (chan_h/2+mem_th*2+fl_chm_h+pn_bttm_chm_h)*layer ;
    obj_x_off = (fl_ext_len+0.5)*px ;
    obj_y_off = (pn_len+chan_w/2)*px ;
    
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, offset_layers*layer])
    translate([xpos, ypos, zpos])
    translate([(rot?obj_y_off:obj_x_off),(rot?obj_x_off:obj_y_off),obj_z_offset])
        rotate([0,0,(rot?90:0)])
        mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
        mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
        obj();
    
}
module p_tall_mixer(xpos, ypos, zpos, orientation,
    mix_l, mix_w, mix_h,
    chan_io_len=20, chan_tran_len=10, mix_z_offset=0,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, 
    no_obj=false, floor_area=false)
{
    chan_io_dimm = [px, chan_w*px, chan_h*layer];
    chan_mix_dimm= [px, mix_w*px, mix_h*layer] ;
    
    init_l_offset = (chan_io_len+chan_tran_len+mix_l/2);
    
    module obj() {
        polychannel([
        ["cube", chan_io_dimm, [-init_l_offset*px, 0, 0], [0,[0,0,1]]],
        ["cube", chan_io_dimm, [chan_io_len*px, 0, 0], [0,[0,0,1]]],
        ["cube", chan_mix_dimm,[chan_tran_len*px, 0, mix_z_offset*layer], [0,[0,0,1]]],
        ["cube", chan_mix_dimm,[mix_l*px, 0, 0], [0,[0,0,1]]],
        ["cube", chan_io_dimm, [chan_tran_len*px, 0, -mix_z_offset*layer], [0,[0,0,1]]],
        ["cube", chan_io_dimm, [chan_io_len*px, 0, 0], [0,[0,0,1]]],
        ]) ;
    }
    
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, 0])
        translate([init_l_offset*px, chan_w/2*px, mix_h/2*layer])
            obj();
    
}
module p_valve_4way(xpos, ypos, zpos, orientation,
    valve_r, mem_th, fl_chm_h, pn_chm_h, 
    out_len=30, fl_out_h=10, fl_out_len=10, pn_out_len=10,
    fl_extra_sp=10, pn_extra_sp=10, pn_up_layers=10, rot_pn=false,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10,
    no_obj=false, floor_area=false)
{
    
    module obj()
    {
        $fn=30;
        chan_dimm = [chan_w*px, chan_w*px, chan_h*layer];
        translate([0,0,fl_chm_h/2*layer])
            cylinder(fl_chm_h*layer, r=valve_r*px, center=true);
        translate([0,0,(fl_chm_h+mem_th+pn_chm_h/2)*layer])
            cylinder(pn_chm_h*layer, r=valve_r*px, center=true);
        
        
        inp_pos = -((valve_r/4+fl_extra_sp)*px);
        
        outp_pos= -inp_pos;
        
            
        fl_len_0 = (valve_r*3/4-chan_w/2-fl_extra_sp+fl_out_len)*px;
        
        fl_len_1 = (valve_r*3/4-chan_w/2-fl_extra_sp+fl_out_len)*px ;
        
        polychannel(
            [[shape, chan_dimm, [inp_pos,0,-chan_h/2*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [-fl_len_0,0,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [outp_pos,0,-chan_h/2*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [fl_len_1,0,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [0,inp_pos,-chan_h/2*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,-fl_len_0,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [0,outp_pos,-chan_h/2*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_out_h*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,fl_len_1,0], [0,[0,0,1]]]
        ]);
        
        init_z_off = (fl_chm_h+mem_th+pn_chm_h)*layer;
        pn_pos_lat = (pn_extra_sp=="fill"?
            (valve_r-chan_w/2-1)*px:
            (pn_extra_sp=="fill-edge"?(valve_r+chan_w/2-4)*px:
                (valve_r/4+chan_w/2)*px));
        pn_len     = (pn_extra_sp=="fill"?
            (pn_out_len+1)*px:
            (pn_extra_sp=="fill-edge"?(pn_out_len-chan_w+4)*px:
                (valve_r*3/4-chan_w+pn_out_len)*px));
        
        rotate([0,0,(rot_pn?90:0)])
        {
        polychannel(
            [[shape, chan_dimm, [0,pn_pos_lat,init_z_off], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,pn_up_layers*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,pn_len,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [0,-pn_pos_lat,init_z_off], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,pn_up_layers*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,-pn_len,0], [0,[0,0,1]]]
        ]);
        }
    }
    
    tran_offset = (out_len+valve_r)*px;
    
    
    translate([xpos*px, ypos*px, zpos*layer])
    
    translate([(pitch-chan_w/2)*px,(pitch-chan_w/2)*px,layer*offset_layers])
    translate([tran_offset,tran_offset,(20+chan_h)*layer])
    lefdef_orient(orientation)
        obj();
}
module p_valve(xpos, ypos, zpos, orientation,
    valve_r, mem_th, fl_chm_h, pn_chm_h, inport_center=false,
    out_len=30, fl_extra_sp = "fill", fl_chan_down_layers=30, pn_extra_sp="fill", pn_chan_up_layers=30, rot_pn=false,
    extra_sp = 0,
    px=7.6e-3, layer=10e-3, lpv=20, chan_h=10, chan_w=14, shape="cube", pitch=30, offset_layers=10,
    rot=false, no_obj=false, floor_area=false)
{

    module obj()
    {
        $fn=30;
        chan_dimm = [chan_w*px, chan_w*px, chan_h*layer];
        translate([0,0,fl_chm_h/2*layer])
            cylinder(fl_chm_h*layer, r=valve_r*px, center=true);
        translate([0,0,(fl_chm_h+mem_th+pn_chm_h/2)*layer])
            cylinder(pn_chm_h*layer, r=valve_r*px, center=true);
        
        
        inp_pos = (inport_center?
            0:
            (fl_extra_sp=="fill"?-(valve_r-chan_w/2-1)*px:-((valve_r/4+fl_extra_sp)*px)));
        outp_pos= (inport_center?
            (valve_r-chan_w/2+fl_extra_sp)*px:
            -inp_pos);
        
        fl_len_0 = (inport_center?
            (valve_r/2+chan_w-extra_sp+out_len)*px:
            (fl_extra_sp=="fill"?(out_len+1)*px:(valve_r*3/4-chan_w/2-extra_sp+out_len)*px));
        
        fl_len_1 = (inport_center?
            (out_len-chan_w/4-fl_extra_sp)*px:
            (fl_extra_sp=="fill"?(out_len+1)*px:(valve_r*3/4-chan_w/2-extra_sp+out_len)*px));
        
        polychannel(
            [[shape, chan_dimm, [inp_pos,0,-chan_h/2*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_chan_down_layers*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [-fl_len_0,0,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [outp_pos,0,-chan_h/2*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,-fl_chan_down_layers*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [fl_len_1,0,0], [0,[0,0,1]]]
        ]);
        
        init_z_off = (fl_chm_h+mem_th+pn_chm_h+chan_h/2)*layer;
        pn_pos_lat = (pn_extra_sp=="fill"?(valve_r-chan_w/2-1)*px:(valve_r/4+chan_w/2)*px);
        pn_len     = (pn_extra_sp=="fill"?(out_len+1)*px:(valve_r*3/4-chan_w+out_len)*px);
        
        rotate([0,0,(rot_pn?90:0)])
        {
        polychannel(
            [[shape, chan_dimm, [0,pn_pos_lat,init_z_off], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,pn_chan_up_layers*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,pn_len,0], [0,[0,0,1]]]
        ]);
        polychannel(
            [[shape, chan_dimm, [0,-pn_pos_lat,init_z_off], [0,[0,0,1]]],
            [shape, chan_dimm, [0,0,pn_chan_up_layers*layer], [0,[0,0,1]]],
            [shape, chan_dimm, [0,-pn_len,0], [0,[0,0,1]]]
        ]);
        }
    }
    
    tran_offset = (out_len+valve_r)*px;
    
    translate([xpos*px, ypos*px, zpos*layer])
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, offset_layers*layer])
    translate([tran_offset,tran_offset,(fl_chan_down_layers+chan_h/2)*layer])
        rotate([0,0,(rot?90:0)])
        mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
        mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
            obj();
}
module p_reservoir(xpos, ypos, zpos, orientation,
    p1_dir="z+", p2_dir="z+", port_len1=50, port_len2=-1, p1_offset=[0,0], p2_offset=[0,0], 
    size=[300, 300, 250], edge_rounding=0.5, 
    center=true, clr="gray",
    px=0.0076, layer=0.010, chan_w=14, chan_h=10, rot=false, pitch=30, layer_offset=10, $fs=0.04, $fa=1)
{
    n_size = [size[0]*px, size[1]*px, size[2]*layer];
    
    translate([xpos*px, ypos*px, zpos*layer])
    translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px, layer_offset*layer])
    translate(n_size/2)
    rotate([0,0,(rot?90:0)])
    mirror([(orientation=="FN"||orientation=="FS"?1:0),0,0])
    mirror([0,(orientation=="S"||orientation=="FS"?1:0), 0])
        reservoir(size=size, edge_rounding=edge_rounding,
    p1_dir=p1_dir, p2_dir=p2_dir, port_len1=port_len1, port_len2=port_len2, p1_offset=p1_offset, p2_offset=p2_offset,
    chan_w=chan_w, chan_h=chan_h,
    center=center, clr=clr, px=px, layer=layer, $fs=$fs, $fa=$fa) ; 
}
module reservoir(size=[300, 300, 250], edge_rounding=0.5, center=true, clr="gray",
    p1_dir="z+", p2_dir="z+", port_len1=50, port_len2=-1,
    p1_offset=[0,0], p2_offset=[0,0],
    chan_w=14, chan_h=10, 
    px=0.0076, layer=0.010, $fs=0.04, $fa=1) {
	module obj() {
        n_size = [size[0]*px, size[1]*px, size[2]*layer];
        translate = (center == false) ?
		[edge_rounding, edge_rounding, edge_rounding] :
		[
			edge_rounding - (n_size[0] / 2),
			edge_rounding - (n_size[1] / 2),
			edge_rounding - (n_size[2] / 2)
	];

    color(clr){
        translate(v = translate)
        minkowski() {
            cube(size = [
                n_size[0] - (edge_rounding * 2),
                n_size[1] - (edge_rounding * 2),
                n_size[2] - (edge_rounding * 2)
            ]);
            sphere(r = edge_rounding);
        }
    }
    }
    module port (side, port_len=50, from_center=true, x_off=0, y_off=0)
    {
        i_orient = 
            (side[0]=="x"?
                (side[1]=="+"?
                    [[1,0,0]*px,[0,-1,0]*px,[0,0,1]*layer]
                    :[[-1,0,0]*px,[0,-1,0]*px,[0,0,1]*layer]
                ):
            (side[0]=="y"?
                (side[1]=="+"?
                    [[0,1,0]*px, [1,0,0]*px, [0,0,1]*layer]
                    :[[0,-1,0]*px, [1,0,0]*px, [0,0,1]*layer]
                ):
            (side[0]=="z"?
                (side[1]=="+"?
                    [[0,0,1]*layer, [1,0,0]*px, [0,1,0]*px]
                    :[[0,0,-1]*layer, [1,0,0]*px, [0,1,0]*px]
                )
                :"error")));
        
        
        i_pt_s = 
            (side[0]=="x"?
                size[0]/4
                :
            (side[0]=="y"?
                size[1]/4
                :
            (side[0]=="z"?
                size[2]/4
                :"error")));
                
        pt0 = i_orient[0]*i_pt_s+i_orient[1]*x_off+i_orient[2]*y_off;
        pt1 = i_orient[0]*(port_len)+i_orient[0]*i_pt_s;
        polychannel([
            ["cube",[chan_w*px, chan_w*px, chan_h*layer], pt0, [0,[1,0,0]]],
            ["cube",[chan_w*px, chan_w*px, chan_h*layer], pt1, [0,[1,0,0]]]
            ], clr="crimson");

    }
        %obj() ;
        port(p1_dir, port_len=port_len1, x_off=p1_offset[0], y_off=p1_offset[1]) ;
        if(port_len2 >= 0)
            port(p2_dir, port_len=port_len2, x_off=p2_offset[0],  y_off=p2_offset[1]) ;
        else
            port(p2_dir, port_len=port_len1, x_off=p2_offset[0],  y_off=p2_offset[1]) ;
            
}