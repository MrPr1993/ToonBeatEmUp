
enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1


if bombRecharge!=0 bombRecharge-=1;
if bombRecharge2!=0 bombRecharge2-=1;

//if x>__view_get( e__VW.XView, 0 ) and x<__view_get( e__VW.XView, 0 )+320
if anim=10
{offScreen=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<50
anim=choose(21,13)
else
{
	
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
anim=1202
else
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<100
anim=choose(12,11,1201) else {anim=choose(1200,1201,11,12)
}

	
	if anim=1200 if x!=clamp(x,oControl.camX+40,oControl.camX+320-40) anim=1201
	}

if anim=12 or anim=11 if bombRecharge!=0 anim=1201 else bombRecharge=120+choose(200,220,240,260)
if anim=1200 if bombRecharge2!=0 anim=1201 else bombRecharge2=120+choose(200,220,240,260)


}
}

if anim=1200
{sprite_index=spr_witch_attack5
	if AnimFrame=0 {specialtimes[0]=0
		PlaySound(choose(snd_witch2,snd_witch3,snd_witch4))
		}
	specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.1)
frame_set(3,3+specialtimes[0],0.025) if AnimFrame=4
{
	
with oPlayer
{
if invincible=0 and recovery=0 and superThrown=0
{hitID=oWitch PlaySoundNoStack(snd_melthit)
sprite_index=meltSpr canmove=0 hurt=1

specialFX=1 alarm[3]=5

		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oFlashFX)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-16
if iceFX=1 or iceFX=5 part.z=z-48
if iceFX=2 or iceFX=6 part.z=z-64
if iceFX=3 or iceFX=7 part.z=z-80
part.sprite_index=spr_dust
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
	iceFX+=1;
} iceFX=0;

	hp-=0.4
	roll=0
thrownPlayer=-1

	recovery=20
 hitBack=0
	
	dizzyHit=0;
	
	cutDMG=0

	HitType=44


	HitForceReact=0
	HitForceReactZ=0

	event_user(0)

}

}
}
frame_set(4,5,0.25)
frame_set(5,6,0.25)
frame_set(6,7,0.25)
frame_set(7,8,0.05)
frame_set(8,0,0.1)
if AnimFrame>8.5 canmove=1
}

///Spin Attack
if anim=1201
{isCut=1 MoveType=1 damage=0.2 selfatk.HitSound=snd_cut selfatk.flashX=spr_blood2
sprite_index=spr_witch_attack3 atkcol_set(0,0,0,2,1.5,96)
if AnimFrame=0 {specialtimes[0]=0 PlaySound(choose(snd_witch5,snd_witch6))}
specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
frame_set(0,0,0.25)
frame_set(1,1,0.1)
frame_set(2,2+specialtimes[0],0.02) if AnimFrame=clamp(AnimFrame,2,3) {sentflying=6*image_xscale atk=1} else atk=0
frame_set(3,1,0.25)
frame_set(4,0,0.25)
if AnimFrame>4.5 canmove=1
}

if anim=11 ///Sumon Bone Fist
{if AnimFrame=0 {specialtimes[0]=0}
sprite_index=spr_witch_attack1 
frame_set(0,0,0.1) if AnimFrame=1 PlaySound(choose(snd_witch3,snd_witch4,snd_witch7))
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5) if AnimFrame=10 
{
bone=instance_create_depth(targetEnemy.x,targetEnemy.y,-1,oBossHazard)
bone.hitSource=self.id bone.playerNO=playerNO
}
frame_set(10,3,0.25) if AnimFrame=2.5 if specialtimes[0]!=2 {specialtimes[0]+=1 AnimFrame=9.5}
frame_set(11,4,0.25)
frame_set(12,3,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)
if AnimFrame>15.75 {canmove=1 atk=0}
}

if anim=12 ///Fire
{
sprite_index=spr_witch_attack4
frame_set(0,0,0.1) 
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25)
if AnimFrame=11
for(var drawparts = -1; drawparts < 2; drawparts++)
{
//projectile_create(x+28*image_xscale,y+1,z-32,32,spr_spacer_bubbleproj,4*image_xscale,mask_small,spr_hitflash,0.1,591000,2,0,0)
bone=instance_create_depth(x+40*image_xscale,y,-1,oBossHazard)
bone.z=z-70 bone.zSpeed=-4 bone.playerNO=playerNO
bone.hitSource=self.id bone.sprite_index=spr_witch_bomb bone.shadow=spr_shadow bone.image_xscale=image_xscale
bone.sentflying=1*((point_distance(x,0,targetX,0)/48)/2)*image_xscale bone.vspeed=1*drawparts
if image_xscale=1 
bone.sentflying=clamp(bone.sentflying,1.5,9999)
else
bone.sentflying=clamp(bone.sentflying,-9999,-1.5)
with bone selfscript = function()
{
if anim=0
{ x+=sentflying//*image_xscale

z+=zSpeed zSpeed+=0.45
if z>0 {anim=1 z=0}
}
if anim=1
{MoveType=591000 dizzyAtk=1 damage=0.1 recovery=10 vspeed=0
frame_set(0,1,0.1)
frame_set(1,2,0.1)
frame_set(2,3,0.1)
frame_set(3,4,0.1) if AnimFrame=4 {sprite_index=spr_witch_bomb2 shadow=-1; oControl.quakeFXTime=10}
frame_set(4,0,0.25) if AnimFrame=clamp(AnimFrame,4,4.9) atk=1 else atk=0
frame_set(5,1,0.25)
frame_set(6,2,0.25)
frame_set(7,3,0.25)
frame_set(8,4,0.25) if AnimFrame>8.8 instance_destroy()

}

}
}
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)
if AnimFrame>15.75 {canmove=1 atk=0}
}

if anim=13 ///Teleport
{if AnimFrame=0 sprite_index=spr_witch_attack1
frame_set(0,0,0.1) if AnimFrame=1
{
dust_make(x,y,z,0,0,0) dustmk.sprite_index=spr_smoket

if instance_nearest(x,y,oPlayer).x< oControl.camX+160
x=oControl.camX+160+32*random_range(1,5)
else
x=oControl.camX+32*random_range(1,5)

dust_make(x,y,z,0,0,0) dustmk.sprite_index=spr_smoket

sprite_index=spr_witch_attack2
}
frame_set(1,1,0.05)
frame_set(2,0,0.1)

if AnimFrame>2.75 {canmove=1 atk=0}
}

////Sickle Attack
if anim=1202
{
MoveType=1 damage=0.25 selfatk.isCut=1 selfatk.HitSound=snd_cut
sprite_index=spr_witch_sickle
image_index=AnimFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame=3 {PlaySound(snd_swing5) PlaySound(choose(snd_witch8,snd_witch5))}
frame_set(3,3,0.5)
if AnimFrame=clamp(AnimFrame,3,3.99){atk=1 sentflying=6*image_xscale
} else { atk=0 sentflying=0}
frame_set(4,4,0.05)
frame_set(5,2,0.25)
frame_set(6,0,0.25)

if AnimFrame>6.5 {atk=0 canmove=1}
}

///Kick Away
if anim=21 ///Bite Attack
{
if AnimFrame=0  PlaySound(choose(snd_witch8,snd_witch5))

canbeGrabbed=0
MoveType=2 damage=0.2
sprite_index=spr_witch_kick
image_index=AnimFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if AnimFrame=clamp(AnimFrame,2,2.99){atk=1
} else { atk=0}

frame_set(3,3,0.05)
frame_set(4,0,0.5)
if AnimFrame>3.5 canbeGrabbed=1

if AnimFrame>4.5 {atk=0 canmove=1}
}

if anim=100 ///Intro
{
if specialanim=-1
{

if AnimFrame=0 sprite_index=spr_witch_intro
frame_set(0,0,0.01)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.1)
frame_set(5,5,0.05)
frame_set(6,6,0.1)
frame_set(7,7,0.01) if AnimFrame=8 PlaySound(snd_witch9)
frame_set(8,8,0.1)
frame_set(9,9,0.05) if AnimFrame=10 {
bowl=instance_create_depth(x+16*image_xscale,y+1,-1,oCameoChar) 
bowl.z=z-57 bowl.image_xscale=image_xscale;
with bowl
{
shadow=mask_none
sprite_index=spr_witch_bowl anim=99 image_speed=0

newscript=function()
{z+=6
if z>0 {PlaySound(snd_break)
flashFX(x,y,z,sprite_index,1,0.5,99,image_xscale,1,c_white,1)
instance_destroy();
}
}

}

}
frame_set(10,10,0.01) if AnimFrame=11 PlaySound(snd_witch1)
frame_set(11,11,0.1)
frame_set(12,12,0.1)
frame_set(13,13,0.01) if AnimFrame=14 sprite_index=spr_witch_attack1
frame_set(14,0,0.1)
if AnimFrame>14.5 {PlaySound(snd_jump) AnimFrame=0 specialanim=1 ground=0 zSpeed=-4 z=-3}

}
if specialanim=1 ///Hop
{sprite_index=spr_witch_jump AnimFrame+=0.1 shadowSpr=spr_shadow

y+=2 x+=3 if AnimFrame>0.5
if ground {AnimFrame=0 specialanim+=1}
}
if specialanim=2
{
canmove=1
}

}

if image_xscale=1 current_pal=1; else current_pal=2;