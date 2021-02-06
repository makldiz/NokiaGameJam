/// @desc Draw Menu

//Always set these prior to drawing text
draw_set_font(fMenu);
draw_set_halign(fa_right); //right text alignment
draw_set_valign(fa_bottom); //drawing from bottom right



//use for drawing a number of items multiple times
//use var i instead of just i because it is a temp. variable only used for this loop
//i++ or i+=1 or i+i+1 are all the same. this is what happens to the variable after each loop
for (var i = 0; i < menu_items; i++)
{
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1))
	var offset = 2;
	var txt = menu[i]; //pull text from the array
	if (menu_cursor == i)
	{
		//txt = string_insert(">>", txt, 0)
		txt = string_insert("<<", txt, string_length(txt)+1);
		draw_line(xx-100, yy-6, xx + 500, yy-6); //underline
		draw_line(xx-100, yy-7, xx + 500, yy-7);
		var col = n_black; //color of menu item
	}
	else
	{
		var col = n_black; //make unselected item gray
	}
	
	//var xx = menu_x;
	//var yy = menu_y - (menu_itemheight * (i * 1)); //spacing between menu items
	//creating a shadow for text
	//draw_set_color(c_black);
	//draw_text(xx-offset,yy,txt);
	//draw_text(xx+offset,yy,txt);
	//draw_text(xx,yy+offset,txt);
	//draw_text(xx,yy-offset,txt);
	
	draw_set_color(col);
	draw_text(xx,yy,txt);
}