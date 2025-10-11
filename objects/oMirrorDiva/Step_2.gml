enemy_endstep()

cRed=-0.25;
cBlue=0.0;
cGreen=-0.25;

character=charchoose;

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=0 {key_right=0 key_left=0 key_attack=0 sprite_index=StandSpr
	
	if oControl.p1.dead=1 
	and oControl.p2.dead=1 
	and oControl.p3.dead=1 
	and oControl.p4.dead=1 
	{specialtaunt(); animsetup_enemy(); exit;}
	
	}


if anim=35
{mirrorAIThrowTime+=1
if mirrorAIThrowTime>10+random(10)
{AnimFrame=0 
	mirrorAIThrowTime=choose(0,1,0)
	var _voice=snd_viva4
	if character=1 _voice=snd_hina5
	if character=2 _voice=snd_bahati3
	if character=3 _voice=snd_sofia4
		
	switch(mirrorAIThrowTime)
	{
	case 0: anim=37 PlaySound(_voice) break;
	case 1: anim=38 PlaySound(_voice) break;
	//case 2: anim=36  break;
	
	}
	if anim=37 and character=2 {AnimFrame=0 image_index=0 ground=0 z-=2 zSpeed=-8}
	
	
	}
}

if anim=82 and character=2 {if !ground key_attack=1}

if anim=9000
{AnimFrame=0 key_right=0 key_left=0
if distance_to_point(targetEnemy.x,targetEnemy.y)>50 {
if image_xscale=1 key_right=1 else key_left=-1 
anim=choose(10,80,15,9001,9002) //81

if anim=15 {ground=0 zSpeed=-6}

}
else {anim=choose(10,80,81,15,9001,9002)
if anim=15 {ground=0 zSpeed=-4}
}
}

if anim=9001 ///Running attack
{sprite_index=RunSpr 
sentflying=4*image_xscale
AnimFrame+=0.1
image_index+=0.2 if image_index>=6 image_index=0

if y!=clamp(y,targetEnemy.y-4,targetEnemy.y+4)
{
if y>targetEnemy.y y-=2 else y+=2
}

if AnimFrame>2 or x=clamp(x,targetEnemy.x-60,targetEnemy.x+60)
{AnimFrame=0 anim=16}
}

if anim=9002 ///Running to grab
{
selfatk.spriteFX=mask_none
	atkcol_set(13,0,0,0.85,1,1) damage=0 MoveType=0
AnimFrame+=0.01 //selfatk.HitSound=-1
if AnimFrame<0.25 {sprite_index=StandSpr image_index=1}
else
{
if targetEnemy.anim=30 or targetEnemy=31
{canmove=1 anim=0 alarm[0]=60 exit;}
	atk=1 
	sprite_index=MoveSpr image_index+=0.25
if x<targetEnemy.x {image_xscale=1 sentflying=2}
else {image_xscale=-1 sentflying=-2}
if y!=clamp(y,targetEnemy.y-2,targetEnemy.y+2)
if y>targetEnemy.y {if place_free(x,y-1) y-=1}
else {if place_free(x,y+1) y+=1}
}
if AnimFrame>2 {atk=0 canmove=1 anim=0}
}

if anim=10 or anim=11 or anim=12 or anim=13 or anim=14 or anim=15 or anim=16
or anim=17 or anim=35 or anim=36 or anim=37 or anim=38 or anim=39 or anim=80 or anim=81 or anim=82 or anim=25
{enemyscript=mirrorscript}
else {enemyscript=animsetup_enemy}

throw_step()



if dead=1 if visible
{

					iceFX=0;
					
					PlaySoundNoStack(snd_break)
					
		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-0
if iceFX=1 or iceFX=5 part.z=z-8
if iceFX=2 or iceFX=6 part.z=z-16
if iceFX=3 or iceFX=7 part.z=z-24
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

	canmove=0
	hurt=1
	shaketime=30
	throwing=0 dead=1;
	visible=0 disappearTime=0 alarm[2]=90///Instantly kill and shatter character while frozen
}