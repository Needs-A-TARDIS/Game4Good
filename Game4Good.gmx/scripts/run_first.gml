show_debug_message('run first was run')
global.sitID = 0
global.gamePaused = false
nSit = 19
maxnC = 4
global.indic = zero(4)
global.cardID = zero(maxnC)
//group objects by whether or not they exist in gameplay or the pause menu
global.playObjs = array(situation,card_obj,back_button)
global.pauseObjs= array(quit_button,pause_menu)
global.indicSet = zero(nSit)
/*global.isListen = zero(nSit) 
for (i=0;i<nSit;i+=1) {
    global.indicSet[i] = false
    global.isListen[i] = false
}*/
global.isListen[0] = true
/*
    global.isCardSet = zero(nSit)
    for (i=0;i<nSit;i+=1) {
        global.isCardSet[i] = false
    }*/
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
global.sitList[3,5] = 7 //change this -- should be 7 
global.sitList[3,6] = dorm1 //change this --- make a new room 
global.sitList[3,7] = "Go to the pregame."
global.sitList[3,8] = ""
global.sitList[3,9] = 8 //change this -- should be 8 
global.sitList[3,10] = dorm1
global.sitList[4,0] = "One of them leaves the group, and seeing you, walks over. The standard conversation ensues ("+chr(34)+"Hi! Where are you from? What's your major?"+chr(34)+"). They then invite you to a pregame before the first Wednesday Shooters night ("+chr(34)+"My roommate and I have so much alcohol, and trust me, Shooters is not the kind of bar you want to go to sober!"+chr(34)+"). As you return to your room, you think about going to the pregame, but remember hearing about the Duke University Improv show that evening. What do you do?"
global.sitList[4,1] = array(0,0,-10,0)
global.sitList[4,2] = 2
global.sitList[4,3] = "Go to the improv show."
global.sitList[4,4] = "" 
global.sitList[4,5] = 7 
global.sitList[4,6] = dorm1 //change this -- should be new room 
global.sitList[4,7] = "Go to the pregame."
global.sitList[4,8] = ""
global.sitList[4,9] = 8 
global.sitList[4,10] = dorm1
global.sitList[5,0] = "You go upstairs and find an open treadmill. As you warm up and increase the speed, you glance at the TV and notice that it's showing NFL highlights on ESPN -- well, it doesn't look like there's a remote around... As you complete your 30-minute treadmill run, you notice that the student who was running next to you is also getting off their machine. They turn to you with a smile. What do you do?"
global.sitList[5,1] = array(0,0,-5,0)
global.sitList[5,2] = 2
global.sitList[5,3] = "Introduce yourself."
global.sitList[5,4] = ""
global.sitList[5,5] = 9
global.sitList[5,6] = gym2
global.sitList[5,7] = "Smile and turn to leave."
global.sitList[5,8] = ""
global.sitList[5,9] = 10
global.sitList[5,10] = gym2 
global.sitList[6,0] = "You explore the weight room and eventually find all the equipment you need. As you go through the workout, you observe the others around you and wonder if you're missing out on the comprehensive Duke lifting experience by not yelling and throwing your weights around. As you finish your strength exercises, you begin to stretch by the racquetball courts, and are using the foam roller when another student approaches you. "+chr(34)+"Hey!"+chr(34)+" they say, "+chr(34)+"I've never seen someone who uses a foam roller but doesn't run. Are you the exception?"+chr(34)
global.sitList[6,1] = array(0,0,-10,0)
global.sitList[6,2] = 2
global.sitList[6,3] = "Reply that you do a fair amount of running."
global.sitList[6,4] = ""
global.sitList[6,5] = 16
global.sitList[6,6] = gym2
global.sitList[6,7] = "State that you are the exception."
global.sitList[6,8] = ""
global.sitList[6,9] = 17
global.sitList[6,10] = gym2
global.sitList[7,0] = "You arrive a few minutes early and sit in the front row. As the show begins, you glance around and realize that everyone else is sitting rows back – and it looks like they’re all part of a massive, familiar group. The show’s amusing – and interactive: At one point, a performer shouts, "+chr(34)+"We need a volunteer! Come on, you can’t be any worse than we are!"+chr(34)+" And then – though you’d done your best to shrink into your seat – he points right at you. "+chr(34)+"Hey you, you’re practically on stage anyway! Join us!"+chr(34)
global.sitList[7,1] = array(5,-5,0,0)
global.sitList[7,2] = 1
global.sitList[7,3] = "Feeling the whole audience stare at you, you slowly rise from your chair and move to the stage."
global.sitList[7,4] = ""
global.sitList[7,5] = 11
global.sitList[7,6] = dorm1 //change this -- need new room! 
global.sitList[7,7] = 1//dummy values here just in case not having them throws it off 
global.sitList[7,8] = 1
global.sitList[7,9] = 1
global.sitList[8,0] = "You approach the host's room for the pregame. Music blares and you have to knock three times before the music suddenly shuts off. You hear a shout of, "+chr(34)+"Shit, it’s the RA!"+chr(34)+" and then the student who invited you opens the door a few inches and peeks around. Seeing you, they relax, calling back to the others, "+chr(34)+"JK, it’s fine!"+chr(34)+" and invites you in with a smile. Inside are ten other  residents, a few who look familiar from the ice cream social. Everyone else has a drink in their hand, and a miniature beer pong game is ongoing in the middle of the room. One of them smiles and hands you a beer. You've never had a drink before."
global.sitList[8,1] = array(-5,5,0,0)
global.sitList[8,2] = 2
global.sitList[8,3] = "Take the beer and have a sip."
global.sitList[8,4] = "" 
global.sitList[8,5] = 12
global.sitList[8,6] = dorm1
global.sitList[8,7] = "Smile and refuse, stating that you don't drink."
global.sitList[8,8] = ""
global.sitList[8,9] = 13
global.sitList[8,10] = dorm1
global.sitList[9,0] = "You approach the student, and after the standard O-Week questions ("+chr(34)+"Where are you from? What are you majoring in?"+chr(34)+"), they say, "+chr(34)+"You were running really fast! I was planning to run a few laps around the East Campus loop tomorrow morning -- care to join?"+chr(34)
global.sitList[9,1] = array(0,10,0,0)
global.sitList[9,2] = 2
global.sitList[9,3] = chr(34)+"Yeah, let's do it!"+chr(34)
global.sitList[9,4] = ""
global.sitList[9,5] = 14
global.sitList[9,6] = gym2
global.sitList[9,7] = chr(34)+"I can't do tomorrow. We could try again later in the week. What's your number?"+chr(34)
global.sitList[9,8] = ""
global.sitList[9,9] = 15
global.sitList[9,10] = gym2
global.sitList[10,0] = "As you proceed to the exit, the other student catches up to you. After you introduce yourselves, they say, "+chr(34)+"You run really fast! I was thinking of going for a run tomorrow -- care to join?"+chr(34)
global.sitList[10,1] = array(0,-10,0,0)
global.sitList[10,2] = 2
global.sitList[10,3] = chr(34)+"Yeah, let's do it!"+chr(34)
global.sitList[10,4] = ""
global.sitList[10,5] = 14
global.sitList[10,6] = gym2
global.sitList[10,7] = chr(34)+"I can't do tomorrow. We could try again later in the week. What's your number?"+chr(34)
global.sitList[10,8] = ""
global.sitList[10,9] = 15
global.sitList[10,10] = gym2
global.sitList[11,0] = "You are suddenly conscious of how baggy your Class of 2021 t-shirt is (they were out of your size). Ten cast members surround you in a semicircle, and you turn to face them, your back now to the audience. After staring at you for what feels like an hour, one asks, "+chr(34)+"What do you value in friendship?"+chr(34)+" You murmur, "+chr(34)+"Humor,"+chr(34)+" to which another performer replies, "+chr(34)+"Humor? I'm surprised you stayed awake through the first ten minutes of our show -- pure drudgery!"+chr(34)+" With that, the cast members all guide you off the stage and back to your seat, leaving a stuffed Blue Devil, because "+chr(34)+"This is a much better friend than any of us could ever hope to be! Audience, we could never hope that you would clap for us, but at least cheer on our bold volunteer!"+chr(34)+" The crowd claps as you finally relax in your seat."
global.sitList[11,1] = array(0,10,10,0)
global.sitList[11,2] = 1
global.sitList[11,3] = "You survived the second day of O Week!"
global.sitList[11,4] = ""
global.sitList[11,5] = 18
global.sitList[11,6] = endroom
global.sitList[11,7] = 1
global.sitList[11,8] = 1
global.sitList[11,9] = 1
global.sitList[11,10] = 1
global.sitList[12,0] = "Five minutes later, you find yourself in the corner of the room, the can of beer a sip short of full. As you glance at your phone, you hear shouts and look up to see an unopened bottle of vodka and a dozen plastic shot glasses on a desk. Everyone gathers around the desk, palms outstretched toward the designated bartender."
global.sitList[12,1] = array(-10,5,-5,0)
global.sitList[12,2] = 1
global.sitList[12,3] = " "
global.sitList[12,4] = ""
global.sitList[12,5] = 18
global.sitList[12,6] = endroom
global.sitList[12,7] = 1
global.sitList[12,8] = 1
global.sitList[12,9] = 1
global.sitList[12,10] = 1
global.sitList[13,0] = "The student replies, "+chr(34)+"No problem!"+chr(34)+" and hands the can to someone else. You stand in the corner of the room, as far from the chaos as possible. As you glance at your phone, you hear shouts and look up to see an unopened bottle of vodka and a dozen plastic shot glasses on a desk. Everyone gathers around the desk, palms outstretched toward the designated bartender."
global.sitList[13,1] = array(0,-5,-5,0)
global.sitList[13,2] = 1
global.sitList[13,3] = " "
global.sitList[13,4] = ""
global.sitList[13,5] = 18
global.sitList[13,6] = endroom
global.sitList[13,7] = 1
global.sitList[13,8] = 1
global.sitList[13,9] = 1
global.sitList[13,10] = 1
global.sitList[14,0] = "7 AM... You stumble out of bed to quiet your blaring alarm before it wakes your roommate, mumbling to yourself about how your first friend on campus ended up being someone who wakes at 7 AM to run -- voluntarily. But you step outside anyway, walk over to Marketplace, where you'd agreed to meet, and find them already stretching. You greet them, go for a run, and have breakfast after, before you both head to back to your dorms to shower and get ready for the third day of O-Week. You and the student have plans to go to the gym again tomorrow, and you realize how nice it is to feel like you're not alone."
global.sitList[14,1] = array(5,10,10,0)
global.sitList[14,2] = 1
global.sitList[14,3] = " "
global.sitList[14,4] = ""
global.sitList[14,5] = 18
global.sitList[14,6] = endroom
global.sitList[14,7] = 1
global.sitList[14,8] =1 
global.sitList[14,9] =1 
global.sitList[14,10] =1 
global.sitList[15,0] = "The student seems a bit disappointed but replies, "+chr(34)+"It would be great to meet -- we could come to the gym or go to one of the O-Week events instead if you'd prefer!"+chr(34)+" and you make a mental note to invite them to do something in the next day."
global.sitList[15,1] = array(0,5,0,0)
global.sitList[15,2] = 1
global.sitList[15,3] = " "
global.sitList[15,4] = ""
global.sitList[15,5] = 18
global.sitList[15,6] = endroom
global.sitList[15,7] = 1
global.sitList[15,8] = 1
global.sitList[15,9] = 1
global.sitList[15,10] = 1
global.sitList[16,0] = "The student replies, "+chr(34)+"Great, want to join me tomorrow morning? I've been thinking of going for a few laps on the East Campus loop."+chr(34)+" You reply,"
global.sitList[16,1] = array(0,0,5,0)
global.sitList[16,2] = 2
global.sitList[16,3] = chr(34)+"Yeah, let's do it!"+chr(34)
global.sitList[16,4] = ""
global.sitList[16,5] = 14
global.sitList[16,6] = gym2
global.sitList[16,7] = chr(34)+"I can't do tomorrow, but how about later this week? What's your number?"+chr(34)
global.sitList[16,8] = ""
global.sitList[16,9] = 15
global.sitList[16,10] = gym2
global.sitList[17,0] = "The student says, "+chr(34)+"Well, if you want to give it a try, I'm planning to go tomorrow morning!"+chr(34)
global.sitList[17,1] = array(0,-5,0,0)
global.sitList[17,2] = 2
global.sitList[17,3] = chr(34)+"Yeah, I'll give it a shot!"+chr(34)
global.sitList[17,4] = ""
global.sitList[17,5] = 14
global.sitList[17,6] = gym2
global.sitList[17,7] = "Reaffirm that you are the exception."
global.sitList[17,8] = ""
global.sitList[17,9] = 15
global.sitList[17,10] = gym2
global.sitList[18,0] = " "
global.sitList[18,1] = array(0,0,0,0)
global.sitList[18,2] = 1
global.sitList[18,3] = "Continue to the next day."
global.sitList[18,4] = 0 //change this!
global.sitList[18,5] = dorm1
global.sitList[18,6] = 1
global.sitList[18,7] = 1
global.sitList[18,8] = 1
global.sitList[18,9] = 1
global.sitList[18,10] = 1

script_execute(create_cards)
