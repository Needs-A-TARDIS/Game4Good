show_debug_message('run first was run')
global.sitID = 0
global.gamePaused = false
global.indic = array(0,0,0,0)
//group objects by whether or not they exist in gameplay or the pause menu
global.playObjs = array(situation,card1_obj,card0_obj,back_button)
global.pauseObjs= array(quit_button,pause_menu)
global.indicSet = array(false,false,false)
//TODO put in for loop for reading from text
//modulo line counters wont work 
//put start & end markers like ---
//sitList is a big global array that contains all the information for each situation
//each row is a situation
//sitID is the row (or first index) 
    //sit id uses +100 + index   
global.sitList[0,0] = "It’s the afternoon of the O-Week's second day, and your parents just left campus to drive back home, 500 miles away. Your roommate is still hanging out with her brother, a junior, and his friends. You sit at your desk, aware that you don’t know anyone at Duke. You remember that your RA planned an ice cream social for the hall, but also realize that you’re already falling behind on your goal of going to the gym each day. What do you do?"
//indicator changes: hp, soc, con, kn
global.sitList[0,1] = array(0,0,0,0)
//number of choices in this situation (up to 4, in this ex. only 2) 
global.sitList[0,2] = 2
//each card takes up 4 entries ex: card 0 takes up [0,2] to [0,5]
    //text
global.sitList[0,3] = "Go to the ice cream social."
    //image path name (not supported yet) 
global.sitList[0,4] = "" 
    //sitID of the situation it links to 
global.sitList[0,5] = 1
    //name of the room it leads to 
global.sitList[0,6] = ice_cream_social1
//second choice
global.sitList[0,7] = "Go to the gym."
global.sitList[0,8] = ""
global.sitList[0,9] = 2
global.sitList[0,10] = gym2
//ice cream situation
global.sitList[1,0] = "You decide to go to the ice cream social in the common room. You put guilt aside and begin to enjoy a bowl of the Harris Teeter-brand good stuff. You hear plenty of chatter in the room, punctuated by the occasional moment of awkward silence. Standing to the side with your bowl, you notice a group of four or five others forming close by. What do you do?"
global.sitList[1,1] = array(-5,10,0,0)
global.sitList[1,2] = 2
global.sitList[1,3] = "Approach and introduce yourself to the student closest to you."
global.sitList[1,4] = ""
global.sitList[1,5] = 3
global.sitList[1,6] = ice_cream_social1
global.sitList[1,7] = "Stay where you are. They seem to know each other -- why should you interrupt?" 
global.sitList[1,8] = ""
global.sitList[1,9] = 4
global.sitList[1,10] = ice_cream_social1
global.sitList[2,0] = "You arrive at Brodie Gym, swipe in with your DukeCard, and realize that your t-shirt and ponytail stand out in a sea of bro tanks and backwards baseball caps on the weight room floor. You wanted to do a strength workout, but the resistance area looks really crowded...And are you really the only one not wearing a bro tank? What do you do?"
global.sitList[2,1] = array(5,-5,0,0) 
global.sitList[2,2] = 2
global.sitList[2,3] = "Get on a treadmill in the aerobic area upstairs."
global.sitList[2,4] = ""
global.sitList[2,5] = 5
global.sitList[2,6] = gym2
global.sitList[2,7] = "Stay on the first floor and do the back exercises you were planning."
global.sitList[2,8] = ""
global.sitList[2,9] = 6
global.sitList[2,10] = gym2
global.sitList[3,0] = "You introduce yourselves. The standard conversation ensues ("+chr(34)+"Hi! Where are you from? What's your major?"+chr(34)+"). They then invite you to a pregame before the first Wednesday Shooters night ("+chr(34)+"My roommate and I have so much alcohol, and trust me, Shooters is not the kind of bar you want to go to sober!"+chr(34)+"). As you return to your room, you think about going to the pregame, but remember hearing about the Duke University Improv show that evening. What do you do?"
global.sitList[3,1] = array(0,0,10,0)
global.sitList[3,2] = 2
global.sitList[3,3] = "Go to the improv show."
global.sitList[3,4] = "" 
global.sitList[3,5] = 7
global.sitList[3,6] = dorm0 //change this!
global.sitList[3,7] = "Go to the pregame."
global.sitList[3,8] = ""
global.sitList[3,9] = 8
global.sitList[3,10] = dorm0
global.sitList[4,0] = "One of them leaves the group, and seeing you, walks over. The standard conversation ensues ("+chr(34)+"Hi! Where are you from? What's your major?"+chr(34)+"). They then invite you to a pregame before the first Wednesday Shooters night ("+chr(34)+"My roommate and I have so much alcohol, and trust me, Shooters is not the kind of bar you want to go to sober!"+chr(34)+"). As you return to your room, you think about going to the pregame, but remember hearing about the Duke University Improv show that evening. What do you do?"
global.sitList[4,1] = array(0,0,-10,0)
global.sitList[4,2] = 2
global.sitList[4,3] = "Go to the improv show."
global.sitList[4,4] = "" 
global.sitList[4,5] = 7
global.sitList[4,6] = dorm0 //change this!
global.sitList[4,7] = "Go to the pregame."
global.sitList[4,8] = ""
global.sitList[4,9] = 8
global.sitList[4,10] = dorm0
