// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function frozen_fx(){
					iceFX=0;
					
					PlaySoundNoStack(snd_break)
					
		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-16
if iceFX=1 or iceFX=5 part.z=z-48
if iceFX=2 or iceFX=6 part.z=z-64
if iceFX=3 or iceFX=7 part.z=z-80
part.image_angle=random(360) part.sprite_index=spr_ice
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
}

function groundhit_fx(){

dust_make(x,y,z,2,0,0)
dust_make(x,y,z,-2,0,0)
dust_make(x,y,z,2,-1,0)
dust_make(x,y,z,2,1,0)
dust_make(x,y,z,-2,-1,0)
dust_make(x,y,z,-2,1,0)
dust_make(x,y,z,0,-1,0)
dust_make(x,y,z,0,1,0)

}

function burnedash_fx(){


dust_make(x-8,y,z-8,0,0,-1) dustmk.current_pal=2
dust_make(x+8,y,z-8,0,0,-1) dustmk.current_pal=2
dust_make(x-8,y,z-8-16,0,0,-1) dustmk.current_pal=2
dust_make(x+8,y,z-8-16,0,0,-1) dustmk.current_pal=2
dust_make(x-8,y,z-8-32,0,0,-1) dustmk.current_pal=2
dust_make(x+8,y,z-8-32,0,0,-1) dustmk.current_pal=2
dust_make(x-8,y,z-8-48,0,0,-1) dustmk.current_pal=2
dust_make(x+8,y,z-8-48,0,0,-1) dustmk.current_pal=2


}