/// @description Insert description here
// You can write your code in this editor

sprSpin+=Spin
z+=zSpeed

zSpeed+=zSpeedAdd

hspeed+=sidespeedadd

depth=-y

if x!=clamp(x,__view_get( e__VW.XView, 0 )-16,__view_get( e__VW.XView, 0 )+320+16)
instance_destroy()

if ground if hit=0 {hit=1 alarm[2]=20 image_index=1}

if z>0 {z=0 hspeed=0 zSpeed=0 ground=1} else ground=0