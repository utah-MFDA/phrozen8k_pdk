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

    eps = 0.01;
    params_relative = [    
    ["cube", [1*px, Wchan, hchan], [-4.5*px, 30*px, ((hchan/2)/px)*px], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [39*px, 0, 0], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-4.5*px, 0, 0], [45, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-30*px, -30*px, 0], [45, [0, 0, 1]]],
    ["cube", [Wchan, eps*px, hchan], [-(5-(Wchan/2)/px)*px, (Wchan/(2*px))*px, 0], [0, [0, 0, 1]]],
    ["cube", [Wchan, eps*px, hchan], [0, -Wchan, 0], [0, [0, 0, 1]]],
];
    module obj(){
        color("RosyBrown")
            polychannel(params_relative, show_only_shapes=false);  
        
    }
    
    if (orientation == "N"){
        translate([30*px + xpos*px, 30*px + ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FN"){
        mirror([1, 0, 0])
        translate([-2*25*px - xpos*px, 30*px + ypos*px, zpos*layer])
        obj([1, 0, 0]);
    }
    if (orientation == "S"){
        mirror([1, 0, 0])
        mirror([0, 1, 0])
        translate([-2*25*px - xpos*px, -2*25*px - ypos*px, zpos*layer])
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

    eps = 0.01;
    params_relative = [    
    ["cube", [1*px, Wchan, hchan], [-4.5*px, 25*px, ((hchan/2)/px)*px], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [35*px, 0, 0], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-5.5*px, 0, 0], [45, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-25*px, -25*px, 0], [45, [0, 0, 1]]],
    ["cube", [Wchan, eps*px, hchan], [-(5-(Wchan/2)/px)*px, (Wchan/(2*px))*px, 0], [0, [0, 0, 1]]],
    ["cube", [Wchan, eps*px, hchan], [0, -Wchan, 0], [0, [0, 0, 1]]],
];

    module obj(){
        color("RosyBrown")
            polychannel(params_relative, show_only_shapes=false);  
    }
    
    if (orientation == "FN"){
        translate([15*px + xpos*px, 25*px + ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "N"){
        mirror()
        translate([-2*25*px - xpos*px, 25*px + ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "S"){
        mirror([0, 1, 0])
        translate([15*px + xpos*px, -2*20*px - ypos*px, zpos*layer])
        obj();
    }
    if (orientation == "FS"){
        mirror()
        mirror([0, 1, 0])
        translate([-2*25*px - xpos*px, -2*20*px - ypos*px, zpos*layer])
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
    module tpx(x, y, z){
        translate([x*px, y*px, z*layer])
            children() ;
    }
    
    tpx(1,1,5)
    p_valve(xpos, ypos, zpos, orientation,
        valve_r=20, mem_th=1, fl_chm_h=3, pn_chm_h=6, inport_center=true,
        out_len=44, fl_extra_sp = 4, fl_chan_down_layers=10, 
        pn_extra_sp="fill", pn_chan_up_layers=12, rot_pn=false,
        extra_sp = 0, 
        px=px, layer=layer, lpv=lpv, chan_h=20, chan_w=9, shape="cube", pitch=pitch, 
        offset_layers=5, no_obj=false, floor_area=false) ;
    
    module lef()
    {
        color("yellow")
        lef_size(180, 180);
        
        lef_layer("met1")
        lef_port("in_fluid", "INPUT", "RECT",  [20.5, 89.5, 21.5, 90.5]) ;
        lef_layer("met1")
        lef_port("out_fluid", "OUTPUT", "RECT", [151.5, 89.5, 152.5, 90.5]) ;
        
        lef_layer("met2")
        lef_port("in_air", "INPUT", "RECT", [89.5, 24.5, 90.5, 25.5]) ;
        lef_layer("met2")
        lef_port("out_air", "OUTPUT", "RECT", [89.5, 154.5, 90.5, 155.5]) ;
        
        lef_layer("met1")
        lef_obs("RECT", [21, 25, 152, 155]) ;
        lef_layer("met2")
        lef_obs("RECT", [21, 25, 152, 155]) ;
        lef_layer("met3")
        lef_obs("RECT", [21, 25, 152, 155]) ;
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
        valve_r=20, mem_th=1, fl_chm_h=10, pn_chm_h=8, inport_center=true,
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
        lef_layer("met2")
        lef_obs("RECT", [25, 22, 275, 96]) ;
        lef_layer("met3")
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