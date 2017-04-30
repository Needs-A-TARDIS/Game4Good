//draw text for cards
draw_set_font(font0);
numChoices = global.sitList[global.sitID,2]
//step through cards
for (i=0; i<numChoices; i +=1) {
    cardID = instance_find(card0_obj,i)
    desc = global.sitList[global.sitID,3+4*i]
    draw_sprite(card0,0,cardID.x,cardID.y)
    draw_text_ext(cardID.x,cardID.y,desc,string_height(desc)/1.5,sprite_width);
}
