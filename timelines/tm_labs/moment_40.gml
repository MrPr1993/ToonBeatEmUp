if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and specialSet6=300
{
if specialSet7<=0
{//camMove=0 camMax=room_width
with oControl
{time=99
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,1530+640+320,1)
layer_y("ElevatorBG",0)
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10
layer_vspeed("ElevatorBG",0)
}

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,192,oNurse)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	//enemy_switch("DR.MONIA",0)
	}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oNurse)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60
	
	}
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,256,oNurse)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	//enemy_switch("DR.MONIA",0)
	}

specialscript=-1;
}
else
{
timeline_position-=1;
}


}
else
{
if specialSet6!=300
specialSet6+=1

if specialSet6=10 
{
en1=instance_create(1750,190,oEntryJump)
with en1 {rangeX=0 image_xscale=-1}	

en2=instance_create(1750,250,oEntryJump)
with en2 {rangeX=0 image_xscale=-1	spawnFall=spr_burglarB_jump	spawnEnemy=oEnemy1B}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+64,200,oEntryJump)
with P2en1 {rangeX=0 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+64,224,oEntryJump)
with P2en2 {rangeX=0 image_xscale=1	spawnFall=spr_burglarB_jump	spawnEnemy=oEnemy1B}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+64,248,oEntryJump)
with P2en3 {rangeX=0 image_xscale=1}}
////


}

if specialSet6=60 
{
en3=instance_create(__view_get( e__VW.XView, 0)+160,200,oFatBurglar)
with en3 {
image_xscale=1 z=-320 canmove=0 anim=11 PlaySoundNoStack(snd_fatburglar)
sprite_index=AtkSpr2 AnimFrame=2.9 ground=0 zSpeed=8 specialcheck2=0
}	
}

if specialSet6=120 
{
en4=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryJump)
with en4 {rangeX=0	spawnFall=spr_femburglar_jump image_xscale=-1	spawnEnemy=oFemBurglar}	
en5=instance_create(__view_get( e__VW.XView, 0)+320-64,256,oEntryJump)
with en5 {enemy_switch("MS.CHILL",0)
	
	rangeX=0	spawnFall=spr_femburglar_jump image_xscale=-1	spawnEnemy=oFemBurglar}
}

if specialSet6=180 
{
en6=instance_create(1570,190,oEntryJump)
with en6 {current_pal=0; rangeX=0 image_xscale=1 	spawnFall=spr_sneak_jump	spawnEnemy=oSneak}	

en7=instance_create(1570,250,oEntryJump)
with en7 {current_pal=0; rangeX=0 image_xscale=1	spawnFall=spr_sneak_jump	spawnEnemy=oSneak}	

}

if specialSet6=240 
{
en8=instance_create(1750,190,oEntryJump)
with en8 {rangeX=0 image_xscale=-1 spawnFall=spr_monk_jump	spawnEnemy=oMonk}	

en9=instance_create(1750,250,oEntryJump)
with en9 {rangeX=0 image_xscale=-1	spawnFall=spr_monk_jump	spawnEnemy=oMonk}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+64,200,oEntryJump)
with P2en1 {rangeX=0 image_xscale=1 	spawnFall=spr_monk_jump	spawnEnemy=oMonk}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+64,224,oEntryJump)
with P2en2 {rangeX=0 image_xscale=1		spawnFall=spr_monk_jump	spawnEnemy=oMonk}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+64,248,oEntryJump)
with P2en3 {rangeX=0 image_xscale=1 	spawnFall=spr_monk_jump	spawnEnemy=oMonk}}
////

}


timeline_position-=1;
}