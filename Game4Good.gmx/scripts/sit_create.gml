instance_create(0,0,pause_menu)
instance_create(0,0,situation)
show_debug_message("indicator change inside sit_create")
script_execute(indicator_change)
instance_create(0,0,back_button)
instance_create(51,0,pause_button)
instance_create(192,576,quit_button)
for(i = 0; i<array_length_1d(global.pauseObjs);i+=1) {
    instance_deactivate_object(global.pauseObjs[i])
}
script_execute(create_cards)
