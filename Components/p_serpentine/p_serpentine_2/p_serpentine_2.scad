
// use <../scad_base_src/p_serpentine_obj.scad>
use <../../../scad_include/scad_objects/p_serpentine.scad>
use <../../../scad_include/lef_helper.scad>

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
      //translate([(2*xpos+L2*turns+pitch*2)*px, 0, 0])
      //mirror([1,0,0])
      obj() ;
    }
    else if(orientation == "S"){
      //translate([(2*xpos+L2*turns+pitch*2)*px, 0, 0])
      //mirror([1,0,0])
      //translate([0, (2*ypos+L1+pitch*2)*px, 0])
      //mirror([0,1,0])
      obj() ;
    }
    else if(orientation == "FN") {
      //translate([0, (2*ypos+L1+pitch*2)*px, 0])
      //mirror([0,1,0])
      obj() ;
    }
    else
      obj() ;
}

p_serpentine_2(0, 0, 0, "N", 200, 50, 4);
