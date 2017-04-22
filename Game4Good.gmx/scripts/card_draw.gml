//draw text for cards
draw_set_font(font0);
numChoices = global.sitList[global.sitID,2]
//step through cards
for (i=0; i<numChoices; i +=1) {
    desc = global.sitList[global.sitID,2+4*i]
    draw_text_ext(card_obj.x,card_obj.y,desc,string_height(desc)/1.5,sprite_width);
}
