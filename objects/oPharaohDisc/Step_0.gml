/// @description Insert description here
// You can write your code in this editor

hspeed=lerp(hspeed,reverseSpd,0.05)



if instance_exists(oPharaoh)
if oPharaoh.hp=0 or oPharaoh.dead=1 and sprite_index=spr_psmoke
{mask_index=mask_none}

depth=-y