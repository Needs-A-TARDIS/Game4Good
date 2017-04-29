//draw indicators
draw_set_font(font0)

ni = array_length_1d(global.indic)

    //find the center 
cx = room_width/2
cy = room_height/2
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
