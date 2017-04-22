///card_draw_tmp(index)
draw_set_font(font0);
index = 1
desc = global.sitList[global.sitID,2+4*index];
cardID = instance_find(card1_obj,1)
show_debug_message(cardID)
draw_text_ext(card1_obj.x,card1_obj.y,desc,string_height(desc)/1.5,sprite_width);
