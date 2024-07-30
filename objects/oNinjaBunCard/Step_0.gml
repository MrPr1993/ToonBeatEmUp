/// @description Insert description here
// You can write your code in this editor

sprSpin+=Spin
z+=zSpeed

zSpeed+=zSpeedAdd

hspeed+=sidespeedadd

depth=-y

if x!=clamp(x,oControl.camX-sprite_get_width(sprite_index)/2,oControl.camX+320+sprite_get_width(sprite_index)/2)
instance_destroy()

if ground if hit=0 {z=0 hit=1 alarm[2]=20 image_index=1

	if HitGroundSnd!=-1 PlaySound(HitGroundSnd)
	if HitQuake!=-1 oControl.quakeFXTime=HitQuake;
	
	if HitGroundSpr!=-1 {flashFX(x,y,z,HitGroundSpr,0,0.25,30,1,1,c_white,1)
instance_destroy()	
		}
	}

if z>0 {z=0 hspeed=0 zSpeed=0 ground=1} else ground=0