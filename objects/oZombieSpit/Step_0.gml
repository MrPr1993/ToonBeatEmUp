/// @description Insert description here
// You can write your code in this editor

zSpeed+=0.45

z+=zSpeed

depth=-y

if animLock=0
{
if image_index=3 image_speed=0
}

if x!=clamp(x,oControl.camX-16,oControl.camX+320+16)
instance_destroy()

if ground if bounce!=0 {z=0 z-=4 zSpeed=bouncespd bounce-=1}
else
if hit=0
{puddle=instance_create(x,y,oFlashFX) puddle.alarm[0]=-1 puddle.sprite_index=endflash puddle.image_speed=0.5   instance_destroy()}

if z>0 {z=0 if bounce=0 hspeed=0 zSpeed=0 ground=1} else ground=0

