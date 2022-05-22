with relic
{
	

					iceFX=0;
					
					PlaySoundNoStack(snd_break)
					
		repeat(6)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 {part.x=x part.image_index=3}
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 {part.x=x part.image_index=3}
if iceFX=0 or iceFX=4 {part.z=z-8 part.image_index=2}
if iceFX=1 or iceFX=5 {part.z=z-16 part.image_index=2}
if iceFX=2 or iceFX=6 {part.z=z-24 part.image_index=2}
if iceFX=3 or iceFX=7 {part.z=z-32 part.image_index=1}
part.image_angle=random(360)
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
 part.image_speed=0 part.sprite_index=spr_egyptface
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
	iceFX+=1;
} iceFX=0;
	
	instance_destroy()
	} 
