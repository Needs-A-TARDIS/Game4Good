//draw text for cards
draw_set_font(font0);
numChoices = global.sitList[global.sitID,2]
//step through cards
for (i=0; i<numChoices; i +=1) {
    global.cardID[i] = instance_find(card_obj,i)
    desc = global.sitList[global.sitID,3+4*i]
    draw_sprite(card0,0,global.cardID[i].x,global.cardID[i].y)
    draw_text_ext(global.cardID[i].x,global.cardID[i].y,desc,string_height(desc)/1.5,sprite_width);
}
//(move into step code? ) 
