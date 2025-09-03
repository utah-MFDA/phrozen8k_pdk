use <../../../scad_include/routing.scad>
use <../../../scad_include/lef_helper.scad>

px = 22e-3;
layer = 10e-3;
        
module serpentine_100px_200um(xpos, ypos, zpos, orientation, ren_lef=false){
    
    // Sub-modules
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

serpentine_100px_200um(0,0,0,"N",true);
//translate([23*px,23*px,-0.01]) 
//cube([110*px, 315*px, 0.01]);
