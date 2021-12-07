/// @description Insert description here
// You can write your code in this editor
if image_index>3
{
hspeed=lerp(hspeed,0,0.01)
}

depth=-y

if z>0
z+=0.1

if instance_exists(oPharaoh)
if oPharaoh.hp=0 or oPharaoh.dead=1 and sprite_index=spr_psmoke
{image_index=0 sprite_index=spr_smokeend}