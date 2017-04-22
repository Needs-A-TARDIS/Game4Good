global.sitID = 0
global.gamePaused = false
nIndic = 4
for (i=0; i<nIndic; i+=1) {
    global.indic[i] = 0 
}
//group objects by whether or not they exist in gameplay or the pause menu
global.playObjs = array(situation,card1_obj,card0_obj,back_button)
global.pauseObjs= array(pause_menu)

for(i = 0; i<array_length_1d(global.pauseObjs);i+=1) {
        instance_deactivate_object(global.pauseObjs[i])
    }
//TODO put in for loop for reading from text
//modulo line counters wont work 
//put start & end markers like ---
//sitList is a big global array that contains all the information for each situation
//each row is a situation
//sitID is the row (or first index)  
global.sitList[0,0] = "It’s the afternoon of the O-Week's second day, and your parents just left campus to drive back home, 500 miles away. Your roommate is still hanging out with her brother, a junior, and his friends. You sit at your desk, aware that you don’t know anyone at Duke. You remember that your RA planned an ice cream social for the hall, but also realize that you’re already falling behind on your goal of going to the gym each day. What do you do?"
//number of choices in this situation (up to 4, in this ex. only 2) 
global.sitList[0,1] = 2
//each card takes up 4 entries ex: card 0 takes up [0,2] to [0,5]
    //text
global.sitList[0,2] = "Go to the ice cream social."
    //image path name (not supported yet) 
global.sitList[0,3] = "" 
    //sitID of the situation it links to 
global.sitList[0,4] = 1
    //name of the room it leads to 
global.sitList[0,5] = ice_cream_social1
//second choice
global.sitList[0,6] = "Go to the gym."
global.sitList[0,7] = ""
global.sitList[0,8] = 2
global.sitList[0,9] = gym2
//ice cream situation
global.sitList[1,0] = "Health -1, Connection 1 | You decide to go to the ice cream social in the common room. You put guilt aside and begin to enjoy a bowl of the Harris Teeter-brand good stuff. You hear plenty of chatter in the room, punctuated by the occasional moment of awkward silence. Standing to the side with your bowl, you notice a group of four or five others forming close by. What do you do?"
global.sitList[1,1] = 0
global.sitList[1,2] = "Approach and introduce yourself to them."
global.sitList[1,3] = ""
global.sitList[1,4] = 0
global.sitList[1,5] = "Wait for one of them to approach you."
global.sitList[1,6] = ""  
global.sitList[1,7] = 0
global.sitList[1,8] = 0
global.sitList[1,9] = 0 
global.sitList[2,0] = "You arrive at Brodie Gym, swipe in with your DukeCard, and realize that your t-shirt and ponytail stand out in a sea of bro tanks and backwards baseball caps on the weight room floor. You wanted to do a strength workout, but the resistance area looks really crowded...And are you really the only one not wearing a bro tank? What do you do?"
global.sitList[2,1] = 0 
