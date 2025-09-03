use <../../../scad_include/routing.scad>
use <../../../scad_include/lef_helper.scad>

px = 22e-3;
layer = 10e-3;

module junction_25px_0(xpos, ypos, zpos, orientation, ren_lef=false){
      
    // Channel Dimensions
    hchan = 20*layer;
    Wchan = 9*px;

    dim  = [
            [[0,0],[-Wchan/2,Wchan/2],[0,hchan]], // 0
            [[-Wchan/2,Wchan/2],[0,0],[0,hchan]], // 1
                    
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

junction_25px_0(0,0,0,"N",true);
