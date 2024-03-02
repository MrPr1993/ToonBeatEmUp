/// @description Insert description here
// You can write your code in this editor

if lockPos
{
x=lockX;
y=lockY;
z=lockZ;
}

image_xscale=1

var watchtarget=0;
watchtarget=point_direction(x,y,targetEnemy.x,targetEnemy.y+targetEnemy.z/2)
eyeX=(x+lengthdir_x(15,watchtarget))
eyeY=(z+y+lengthdir_y(15,watchtarget))
eyeY=clamp(eyeY,z+y,z+y+10)

if eyeHit=0 eyeReaction=1 else eyeReaction=2

octopus_draw()