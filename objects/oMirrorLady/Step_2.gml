/// @description Insert description here
// You can write your code in this editor

hp=0

if enemyspawn[0]!=0 if !instance_exists(enemyspawn[0]) enemyspawn[0]=0 else hp+=enemyspawn[0].hp
if enemyspawn[1]!=0 if !instance_exists(enemyspawn[1]) enemyspawn[1]=0 else hp+=enemyspawn[1].hp
if enemyspawn[2]!=0 if !instance_exists(enemyspawn[2]) enemyspawn[2]=0 else hp+=enemyspawn[2].hp
if enemyspawn[3]!=0 if !instance_exists(enemyspawn[3]) enemyspawn[3]=0 else hp+=enemyspawn[3].hp
if enemyspawn[4]!=0 if !instance_exists(enemyspawn[4]) enemyspawn[4]=0 else hp+=enemyspawn[4].hp
if enemyspawn[5]!=0 if !instance_exists(enemyspawn[5]) enemyspawn[5]=0 else hp+=enemyspawn[5].hp
if enemyspawn[6]!=0 if !instance_exists(enemyspawn[6]) enemyspawn[6]=0 else hp+=enemyspawn[6].hp
if enemyspawn[7]!=0 if !instance_exists(enemyspawn[7]) enemyspawn[7]=0 else hp+=enemyspawn[7].hp
if enemyspawn[8]!=0 if !instance_exists(enemyspawn[8]) enemyspawn[8]=0 else hp+=enemyspawn[8].hp
if enemyspawn[9]!=0 if !instance_exists(enemyspawn[9]) enemyspawn[9]=0 else hp+=enemyspawn[9].hp


///Intro
if anim=100
{alarm[0]=0
if image_alpha<1 image_alpha+=0.01 else image_alpha=1
sprite_index=spr_mirrorlady_laugh

if image_alpha=1 animFrame+=0.1

if animFrame>4 {animFrame=0 anim=10}
}

////Stand
if anim=0
{
sprite_index=spr_mirrorlady_stand
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1)
if animFrame>3.9 animFrame=0

if enemyset!=0
{
if hp=0
{animFrame=0 anim=11 specialcheck1=0
	
	if enemyset=3 anim=12 ///Defeat
	}

}
}

////Spawn Units
if anim=10
{
sprite_index=spr_mirrorlady_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=2 {enemyset+=1 spawnenemyscript()}
frame_set(2,2,0.1)
frame_set(3,1,0.05)
frame_set(4,0,0.1)
if animFrame>4.9 {animFrame=0 anim=0}
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
{if animFrame=0 specialtimes[0]=0
sprite_index=spr_mirrorlady_uhoh
frame_set(0,1,0.05)
frame_set(1,0,0.1)
frame_set(2,1,0.1)
frame_set(3,2,0.1)
frame_set(4,1,0.1) if animFrame>4.9 {if specialtimes[0]<6 {animFrame=1  specialtimes[0]+=0.25}

else {oControl.quakeFX=30  
	
	glass1=instance_create_depth(x,y,-99999,oFlashFX) with glass1
{depth=999999 sprite_index=spr_shatteredglass animEnd=0 alarm[0]=0 isDepth=0
	PlaySound(snd_break)
	var iceFX=0;
		repeat(5)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 {part.x=x part.y=y part.z=z}
if iceFX=1 {part.x=x-24 part.y=y part.z=z}
if iceFX=2 {part.x=x-48 part.y=y part.z=z}
if iceFX=3 {part.x=x+24 part.y=y part.z=z}
if iceFX=4 {part.x=x+48 part.y=y part.z=z}
part.sprite_index=spr_shatteredglass2
if iceFX<2
{part.hspeed=-2 part.image_xscale=-1}
else
{part.hspeed=2 part.image_xscale=1}
if iceFX=0 part.hspeed=0
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend part.vspeed=4
part.disappeartime=random_range(24,32)
iceFX+=1;
} iceFX=0;
}


	instance_destroy()
	}

}


}