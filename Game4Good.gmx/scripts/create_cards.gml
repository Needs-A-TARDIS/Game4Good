show_debug_message('CREATE_CARDS')
//not finished! 
//used in creation code to place cards
cY = 427 //can be changed based on what team feels is aesthetically pleasing
nC = global.sitList[global.sitID,2] //number of choices/cards
rW = 480 //room width; change this to scale for different devices
cW = 122 //card width
cH = 64
//first card
id0 = instance_create(rW/2-cW,cY,card0_obj)
//show_debug_message("instance "+string(id0)+" at "+string(id0.x)+", "+string(id0.y))
  
//second card 
id1 = instance_create(rW-cW,cY,card0_obj)
//show_debug_message("instance "+string(id0)+" at "+string(id1.x)+", "+string(id1.y))
