/// @description Insert description here
// You can write your code in this editor

hp=clamp(hp,0,9999)

///Intro
if anim=100
{alarm[0]=0 if image_alpha=0 PlaySound(snd_mirrorlady1)
if image_alpha<1 image_alpha+=0.01 else image_alpha=1
sprite_index=spr_mirrorlady_laugh

if image_alpha=1 AnimFrame+=0.01

if AnimFrame>5.8 {AnimFrame=0 anim=10}
}

////Stand
if anim=0
{
	

sprite_index=spr_mirrorlady_stand
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1)
if AnimFrame>3.9 AnimFrame=0

if enemyset!=0
{
if hp=0
{AnimFrame=0 anim=11 specialcheck1=0
	
	if enemyset=3 anim=12 ///Defeat
	}

}
}

////Spawn Units
if anim=10
{
sprite_index=spr_mirrorlady_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1) if AnimFrame=2 {PlaySound(snd_thunderclap2) PlaySound(snd_mirrorfx2) oControl.quakeFXTime=10 enemyset+=1 spawnenemyscript()}
frame_set(2,2,0.1)
frame_set(3,1,0.05)
frame_set(4,0,0.1)
if AnimFrame>4.9 {AnimFrame=0 anim=0}
}

////Angry
if anim=11
{
sprite_index=spr_mirrorlady_angry

image_index+=0.25

if image_index>2 image_index=0

specialcheck1+=1 if specialcheck1>120 {anim=10}
}


////Dead
if anim=12
{hp=0 if AnimFrame=0 {specialtimes[0]=0 specialtimes[1]=0 oControl.quakeFXTime=10 PlaySound(snd_mirrorlady11)	
	enemydeathcount()
	}

specialtimes[1]+=0.01	

sprite_index=spr_mirrorlady_uhoh
frame_set(0,1,0.01) if specialtimes[1]=1 PlaySound(snd_mirrorlady12)	
frame_set(1,0,0.1)
frame_set(2,1,0.1)
frame_set(3,2,0.1)

if specialtimes[1]=2.25 PlaySound(snd_mirrorlady13)

frame_set(4,1,0.1) if AnimFrame>4.9 {if specialtimes[0]<1.5 {AnimFrame=1  specialtimes[0]+=0.25}

else {oControl.quakeFXTime=30  PlaySound(snd_mirrorlady14)
	
	brokenbg=instance_create_depth(x,y,-1,oFlashFX) with brokenbg
	{alarm[0]=-1 isDepth=0 animEnd=0 sprite_index=spr_mirrorlady_front image_speed=0 image_index=3} brokenbg.depth=depth
	
	glass1=instance_create_depth(x,y,-99999,oFlashFX) with glass1
{depth=999999 sprite_index=mask_none animEnd=0 alarm[0]=0 isDepth=0
	PlaySound(snd_break) 
	var iceFX=0;
		repeat(5)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 {part.x=x part.y=y part.z=z}
if iceFX=1 {part.x=x-24*2 part.y=y part.z=z}
if iceFX=2 {part.x=x-48*2 part.y=y part.z=z}
if iceFX=3 {part.x=x+24*2 part.y=y part.z=z}
if iceFX=4 {part.x=x+48*2 part.y=y part.z=z}
part.sprite_index=spr_shatteredglass2
if iceFX<2
{part.hspeed=-2 part.image_xscale=-1}
else
{part.hspeed=2 part.image_xscale=1}
if iceFX=0 part.hspeed=0
part.image_index=choose(0,1,2) part.image_speed=0 part.z-=32
part.spdZ=-4 part.image_blend=image_blend part.vspeed=4
part.disappeartime=random_range(24,32)
iceFX+=1;
} iceFX=0;
}


	instance_destroy()
	}

}


}

