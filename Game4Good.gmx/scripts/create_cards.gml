//not finished! 
//used in creation code to place cards
cY = 427 //can be changed based on what team feels is aesthetically pleasing
nC = global.sitList[global.sitID,2] //number of choices/cards
rW = 480 //room width; change this to scale for different devices
cW = sprite_get_width(object_get_sprite(card_obj))//card width
cH = sprite_get_height(object_get_sprite(card_obj))

//first card
id0 = instance_create(rW/2-cW,cY,card_obj)
  
//second card 
id1 = instance_create(rW-cW,cY,card_obj)

//start listening 
global.isListen[global.sitID] = true
