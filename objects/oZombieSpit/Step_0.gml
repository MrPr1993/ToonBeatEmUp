/// @description Insert description here
// You can write your code in this editor

zSpeed+=0.45

z+=zSpeed

depth=-y

if image_index=3 image_speed=0

if x!=clamp(x,__view_get( e__VW.XView, 0 )-16,__view_get( e__VW.XView, 0 )+320+16)
instance_destroy()

if ground if hit=0 {puddle=instance_create(x,y,oFlashFX) puddle.alarm[0]=-1 puddle.sprite_index=spr_zombiespitend puddle.image_speed=0.5   instance_destroy()}

if z>0 {z=0 hspeed=0 zSpeed=0 ground=1} else ground=0