//this code modified from 
//http://imakeretrogames.com/index.php/2015/08/26/tutorial-how-to-pause-your-game-in-gamemaker/
//credit to imakeretrogames, who provided this code for free on their site
if (global.gamePaused == false && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,pause_button))
{
    for(i = 0; i<array_length_1d(global.playObjs);i+=1) {
        instance_deactivate_object(global.playObjs[i])
    }
    for(i = 0; i<array_length_1d(global.pauseObjs);i+=1) {
        instance_activate_object(global.pauseObjs[i])
    }
    sprite_index = play_spr
    global.gamePaused = true;
}
else if (global.gamePaused == true && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,pause_button))
{
    for(i = 0; i<array_length_1d(global.playObjs);i+=1) {
        instance_activate_object(global.playObjs[i])
    }
    for(i = 0; i<array_length_1d(global.pauseObjs);i+=1) {
        instance_deactivate_object(global.pauseObjs[i])
    }
    sprite_index = pause_spr
    global.gamePaused = false;
}
