use <../../../scad_include/lef_helper.scad>
use <../../../scad_include/polychannel_v2.scad>

px = 0.022;
layer = 0.01;

module junction_25px_0(xpos, ypos, zpos, orientation, ren_lef=false){
      
    // Channel Dimensions
    hchan = 20*layer;
    Wchan = 9*px;

    eps = 0.01;
    params_relative = [    
    ["cube", [1*px, Wchan, hchan], [-4.5*px, 25*px, ((hchan/2)/px)*px], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [35*px, 0, 0], [0, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-5.5*px, 0, 0], [45, [0, 0, 1]]],
    ["cube", [1*px, Wchan, hchan], [-25*px, -25*px, 0], [45, [0, 0, 1]]],
    // -29*px, -29*px, 0 
    ["cube", [Wchan, eps*px, hchan], [-(5-(Wchan/2)/px)*px, (Wchan/(2*px))*px, 0], [0, [0, 0, 1]]],
    // -1.5*px, 3.5*px, 0 for 22px 
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

junction_25px_0(0,0,0,"N",true);
