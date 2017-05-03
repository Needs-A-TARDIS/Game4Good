//find the correct index of the thing 
i = 0
for (j=0;j<array_length_1d(global.cardID);j+=1) {
    if(id == global.cardID[j]){
        i = j;
    }
}
if (global.isListen[global.sitID]){
    global.isListen[global.sitID] = false
    
    //change the room if it needs to be changed 
  //  if (global.sitList[global.sitID,6+4*(i)] != room) {
        room_goto(global.sitList[global.sitID,6+4*i])
   // }
    //reset 
    //change the sit ID 
    global.sitID = global.sitList[global.sitID,5+4*i]
    //start listening for click under the new sitID
}
