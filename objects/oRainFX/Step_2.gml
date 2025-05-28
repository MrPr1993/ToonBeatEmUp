/// @description Insert description here
// You can write your code in this editor

if fade=0 if image_alpha<1 image_alpha+=0.01
if fade=1 if image_alpha>-0.1 image_alpha-=0.01

x-=fallSpd*fallSpdX
y+=fallSpd*fallSpdY
//if x=-64 {x=0 y=0}
depth=-5000

if raintype=1
{
x2=lengthdir_x(32,x)//-=fallSpd*0.9
y2+=fallSpd*0.9
//if x2=-64*0.9 {x2=0 y2=0}
}

if oControl.betatest
if keyboard_check_pressed(vk_alt) visible^=1;