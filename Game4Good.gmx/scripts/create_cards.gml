//not finished! 
//used in creation code to place cards
cY = 427 //can be changed based on what team feels is aesthetically pleasing
nC = global.sitList[global.sitID,1] //number of choices/cards
rW = 480 //room width; change this to scale for different devices
cW = 122 //card width
//first card
instance_create(rW/2-cW,cY,card0_obj)
//second card 
instance_create(rW-cW,cY,card1_obj)


//use this when all cards are the same object but different instances
//need this for automated room/situation creation 
//for (i=0,i<=nCards,i+=1) {
//    instance_create(,cY,card1_obj)
//}