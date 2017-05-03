draw_sprite(pause_mask_spr,0,0,0)
//draw indicators
draw_set_font(font0)

       //find the center 
cx = room_width/2
cy = room_height/2
    //find the distance away from the center
pad = 3; //ensures that the polygon always has a short distance to go 
buffer = 5; //change this to increase size of polygon
d1y = cy + global.indic[0]*buffer+pad;
d2x = cx + global.indic[1]*buffer+pad;
d3y = cy - global.indic[2]*buffer-pad;
//d4x = cx - global.indic[3]*buffer-pad;
d4x = cx - 10*buffer-pad;
draw_primitive_begin(pr_linestrip);
draw_vertex(cx,d1y);
draw_vertex(d2x,cy);
draw_vertex(cx,d3y);
draw_vertex(d4x,cy);
draw_vertex(cx, d1y); //extra copy of first vertex to close loop
draw_primitive_end();

cy = cy+100
ni = array_length_1d(global.indic)

    //find the distance away from the center
maxwh = string(99)+'WWW'
dx = string_width(maxwh)/2
dy = string_height(maxwh)/2

xs = array(cx-dx,cx+dx,cx-dx,cx+dx)
ys = array(cy+dy,cy-dy,cy-dy,cy+dy)
sarr = array('HP','SOC','CON','KWL')
for (i=0;i<ni;i+=1) {
   draw_text(xs[i],ys[i],sarr[i]+string(global.indic[i]))
}
