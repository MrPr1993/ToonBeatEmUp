with oni1 image_index=6
with oni2 image_index=6

PlaySound(snd_explosion)
oControl.quakeFXTime=30

with oPlayer {ground=0 zSpeed=-4}

clubb=instance_create_depth(oniR.x-14,oniR.y,-1,oFlashFX) with clubb
{depth=16777215 isDepth=0 sprite_index=spr_oni_club animEnd=0 image_speed=0 alarm[0]=0 image_angle=270 z-=90 zSpeed=-6}
clubb2=instance_create_depth(oniR.x+14,oniR.y,-1,oFlashFX) with clubb
{depth=16777215 isDepth=0 sprite_index=spr_oni_club animEnd=0 image_speed=0 alarm[0]=0 image_angle=270 z-=90 zSpeed=-6}

with oniR
{
					var iceFX=0;
					
		
		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-16
if iceFX=1 or iceFX=5 part.z=z-48
if iceFX=2 or iceFX=6 part.z=z-64
if iceFX=3 or iceFX=7 part.z=z-80
part.image_angle=random(360) part.sprite_index=spr_bahati_rock3
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
	iceFX+=1;
} iceFX=0;
	
	instance_destroy()}


