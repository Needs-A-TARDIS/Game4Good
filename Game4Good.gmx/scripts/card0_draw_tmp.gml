///card_draw_tmp(index)
draw_set_font(font0);
index = 0
//desc = global.sitList[global.sitID,2+4*index];
desc = global.sitList[0,3+4*index]
cardID = instance_find(card0_obj,1)
draw_text_ext(card0_obj.x,card0_obj.y,desc,string_height(desc)/1.5,sprite_width);
