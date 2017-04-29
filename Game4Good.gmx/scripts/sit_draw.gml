numchoices = 2;
//draw text for situation
draw_set_font(font0);
sa = string_split(global.sitList[global.sitID,0],"|");
//if indicators are not mentioned 
if (array_length_1d(sa)<2) {
    desc = global.sitList[global.sitID,0]
}
else {
    desc = sa[1]
}
draw_text_ext(0,0,desc,string_height(desc)/1.5,room_width);
