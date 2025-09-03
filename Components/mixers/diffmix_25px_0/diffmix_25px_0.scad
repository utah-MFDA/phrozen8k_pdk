use <../../../scad_include/routing.scad>
use <../../../scad_include/lef_helper.scad>

px = 22e-3;
layer = 10e-3;

module diffmix_25px_0(xpos, ypos, zpos, orientation, ren_lef=false){
      
    // Channel Dimensions
    hchan = 20*layer;
    Wchan = 9*px;

    dim  = [
            [[0,0],[-Wchan/2,Wchan/2],[0,hchan]], // 0
            [[-Wchan/2,Wchan/2],[0,0],[0,hchan]], // 1
                    
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

diffmix_25px_0(0,0,0,"N",true);

