/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("A")) and keyboard_check(vk_up))
{
	//x += onSpeed; //character movement
	TowerA.image_speed = onSpeed; //smooth animation
	TowerA.sprite_index = TowerOn;
	towerAon = true;

}

if (towerAon = true)
{
	TowerAlookingAt = point_direction(TowerA.x, TowerA.y, mouse_x, mouse_y);

	bulletSpawnX1 = TowerA.x + lengthdir_x(1, TowerAlookingAt + TowerA.gunDirection);
	bulletSpawnY1 = TowerA.y + lengthdir_y(TowerA.gunLength, TowerAlookingAt + TowerA.gunDirection);

	bullet1 = instance_create_layer(bulletSpawnX1 + 5, bulletSpawnY1 + 3, "Instances_1", objBullet);
	bullet1.direction = TowerAlookingAt;
	bullet1.speed = 5;
}
	

if(keyboard_check(ord("A")) and keyboard_check(vk_down))
{
	//x += onSpeed; //character movement
	TowerA.image_speed = 0; //smooth animation
	TowerA.sprite_index = TowerOff;
	towerAon = false;
}

if(keyboard_check(ord("S")) and keyboard_check(vk_up))
{
	//x += onSpeed; //character movement
	TowerS.image_speed = onSpeed; //smooth animation
	TowerS.sprite_index = TowerOn;
	towerSon = true;
}


if (towerSon = true)
{
	TowerSlookingAt = point_direction(TowerS.x, TowerS.y, mouse_x, mouse_y);

	bulletSpawnX2 = TowerS.x + lengthdir_x(1, TowerSlookingAt + TowerS.gunDirection);
	bulletSpawnY2 = TowerS.y + lengthdir_y(TowerS.gunLength, TowerSlookingAt + TowerS.gunDirection);
	
	bullet2 = instance_create_layer(bulletSpawnX2 + 5, bulletSpawnY2 + 3, "Instances_1", objBullet);
	bullet2.direction = TowerSlookingAt;
	bullet2.speed = 5;
}

if(keyboard_check(ord("S")) and keyboard_check(vk_down))
{
	//x += onSpeed; //character movement
	TowerS.image_speed = 0; //smooth animation
	TowerS.sprite_index = TowerOff;
	towerSon = false;
}

if(keyboard_check(ord("D")) and keyboard_check(vk_up))
{
	//x += onSpeed; //character movement
	TowerD.image_speed = onSpeed; //smooth animation
	TowerD.sprite_index = TowerOn;
	towerDon = true;
}

if (towerDon = true)
{
	TowerDlookingAt = point_direction(TowerD.x, TowerD.y, mouse_x, mouse_y);

	bulletSpawnX3 = TowerD.x + lengthdir_x(1, TowerDlookingAt + gunDirection);
	bulletSpawnY3 = TowerD.y + lengthdir_y(gunLength, TowerDlookingAt + gunDirection);
	
	bullet = instance_create_layer(bulletSpawnX3 + 5, bulletSpawnY3 + 3, "Instances_1", objBullet);
	bullet.direction = TowerDlookingAt;
	bullet.speed = 5;
}

if(keyboard_check(ord("D")) and keyboard_check(vk_down))
{
	//x += onSpeed; //character movement
	TowerD.image_speed = 0; //smooth animation
	TowerD.sprite_index = TowerOff;
	towerDon = false;
}

if keyboard_check(ord("1"))
{
	room_goto_next();
}

//if(keyboard_check(vk_nokey))
//{
//	image_speed = 0;
//	sprite_index = TowerOff;
//	image_index = 0;
//}
//
//if(keyboard_check(ord("B"))){
//	image_speed = 0;
//	sprite_index = TowerOff;
//	image_index = 0;
//}
	