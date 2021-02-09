/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
onSpeed = 0.5;

var instA = TowerA;
var instS = TowerS;
var instD = TowerD;

towerAon = false;
towerSon = false;
towerDon = false;

//letter = instance_create_depth(x, y,depth-1, Object6);
//letter.depth = depth - 1;

//xpos = Tower.x
//ypos = Tower.y

//draw_sprite(ASDLetters,1,xpos+1,ypos+1);

//bullet spawn variables

gunOffsetX = 1;
gunOffsetY = 1;

gunDirection = point_direction(0, 0, gunOffsetX, gunOffsetY);
gunLength = point_distance(0, 0, gunOffsetX, gunOffsetY);
