/// @desc Controlling Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed; //where we are - where we want to be / speed

//Keyboard controls
if (menu_control)
{

	if (keyboard_check_pressed(vk_enter))
	{
		nokia_play_sound(odd4,1,0);
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		//ScreenShake(4,30); not yet created
		menu_control = false;
	}
	
}

//if (menu_x > gui_width+150) && (menu_committed != -1)
//{
//	switch (menu_committed)
//	{
		//case 2: default: 
		//case 1:
		//case 0: 
//	}
//}