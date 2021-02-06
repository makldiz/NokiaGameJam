/// @description Insert description here
// You can write your code in this editor
//test

// @desc GUI/Vars/Menu Setup

gui_width = GAMEWIDTH;
gui_height = GAMEHEIGHT;
gui_margin = 2;

menu_x = gui_width + 200; //+200 or 4;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 15; //lower is faster
menu_font = fTitle; //created this font in the fonts folder
menu_itemheight = font_get_size(fTitle);
menu_committed = -1; //this gets set to new number when a menu item is selected
menu_control = true; //boolean decides whether we can control the menu

//menu variable array. menu will be drawn from bottom upwards (reason for 2,1,0 instead of 0,1,2)
menu[0] = "Press Enter to Start";

menu_items = array_length_1d(menu); //counts length of a 1D array
menu_cursor = 0; //decides default menu option

//menu[menu_cursor] would refer to specific entry on the menu

