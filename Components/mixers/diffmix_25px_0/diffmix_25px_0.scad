use <../../../scad_include/lef_helper.scad> 
use <../../../scad_include/polychannel_v2.scad>

px = 0.022;
layer = 0.01;

module diffmix_25px_0(xpos, ypos, zpos, orientation, ren_lef=false){
      
    // Channel Dimensions
    hchan = 20*layer;
    Wchan = 9*px;

    eps = 0.01;
    params_relative = [    
    ["cube", [1*px, Wchan, hchan], [-4.5*px, 30*px, 0], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [39*px, 0, 0], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-4.5*px, 0, 0], [45, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-30*px, -30*px, 0], [45, [0, 0, 1]]],
    // -29*px, -29*px, 0 
    ["cube", [Wchan, eps*px, hchan], [-(5-(Wchan/2)/px)*px, (Wchan/(2*px))*px, 0], [0, [0, 0, 1]]],
    // -1.5*px, 3.5*px, 0 for 22px 
    ["cube", [Wchan, eps*px, hchan], [0, -Wchan, 0], [0, [0, 0, 1]]],
];
    module obj(){
        polychannel(params_relative, show_only_shapes=false);  
        
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

diffmix_25px_0(0,0,0,"N",true);
