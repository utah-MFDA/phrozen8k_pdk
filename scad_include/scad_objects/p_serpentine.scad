

use <../polychannel_v2.scad>

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
                    //[0,(j%2?0:-L2)*px,0],
                    //[(j%2?0:-L1)*px,0,0],
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
                
        //pts_c = [for(i=[0:len(pts)-1]) for(j=[0:len(pts[i])-1]) pts[i][j]];
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
            ///translate([L1/2*px+(pitch+chan_w/2)*px, L2*px*(turns+1)/2+(pitch+chan_w/2)*px, (chan_h/2+layer_offset)*layer])
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
        (chan_layers-1)*lpv*layer ; // via length
        
        echo("serpentine length", len_of_serp) ;
    }
    // not working
    if(floor_area == "transparent"){
        color("blue")
        translate([(pitch-chan_w/2)*px, (pitch-chan_w/2)*px,-layer/10])
            %cube([(L1+chan_w)*px, L2*px*(turns)+chan_w*px, layer/10]);
        color("red")
        translate([0, 0,-layer*2/10])
            %cube([(L1+chan_w+pitch*2)*px, L2*px*(turns)+(chan_w+pitch*2)*px, layer/10]);
    }
}

p_serpentine(0,0,0,"S", 300, 50, 13, chan_layers=2, floor_area=true, alt=0, rot=1, report_len=true);
