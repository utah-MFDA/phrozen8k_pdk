use <../../../scad_include/routing.scad>

px = 22e-3;
layer = 10e-3;
        
module serpentine_100px_300um(xpos, ypos, zpos, orientation){
    
    // Sub-modules
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

serpentine_100px_300um(0,0,0,"N");
translate([23*px,23*px,-0.01]) cube([150*px, 325*px, 0.01]);
