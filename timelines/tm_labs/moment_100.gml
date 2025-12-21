if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and specialSet6=300
{
if specialSet8<=0
{//camMove=0 camMax=room_width
with oControl
{time=99
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,5200,1)
layer_y("ElevatorBG",0)
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10

en1=instance_create(4790-48-16,208,oNurse) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30 en1.enemyIdle1=spr_nurse_idle2 with en1
{
enemy_switch("DR.MONIA",0)
}

en2=instance_create(4790-16,208,oEnemy1B) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30 en2.enemyIdle1=spr_burglarB_idle4 en2.image_xscale=-1


en3=instance_create(4790-48+16-16,208+24,oEnemy1) en3.canmove=0 en3.isIdle=1 en3.alarm[1]=60 en3.anim=70000
en3.idleRange=30+16 with en3
enemy_switch("MR.LAR",0) en3.enemyIdle1=spr_burglar_idle3
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
en1=instance_create(4074,190,oEntryJump)
with en1 {rangeX=0 image_xscale=1 	spawnFall=spr_wrestler_move	spawnEnemy=oWrestler}

en2=instance_create(4074,256,oEntryJump)
with en2 {rangeX=0 image_xscale=1	spawnFall=spr_wrestler_move spawnEnemy=oWrestler
	spawnEnemy=oWrestler enemy_switch("MS.CRUSH",0)
	
	}	
}

if specialSet6=60 
{
en3=instance_create(4300,206,oEntryJump)
with en3 {rangeX=0 enemy_switch("NOUSAGI",0) image_xscale=-1 	spawnFall=spr_ninjabun_jump spawnEnemy=oNinjaBun}

en4=instance_create(4300,236,oEntryJump)
with en4 {rangeX=0 enemy_switch("NOUSAGI",0) image_xscale=-1	spawnFall=spr_ninjabun_jump spawnEnemy=oNinjaBun
	
	}	
}

if specialSet6=120 
{
en5=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryJump)
with en5 {rangeX=0 	spawnFall=spr_ninjabun_jump image_xscale=-1	spawnEnemy=oNinjaBun}	
en6=instance_create(__view_get( e__VW.XView, 0)+320-64,256,oEntryJump)
with en6 {rangeX=0 	spawnFall=spr_ninjabun_jump image_xscale=-1	spawnEnemy=oNinjaBun}	

}

if specialSet6=180 
{
en7=instance_create(4060,190,oEntryJump)
with en7 {rangeX=0 image_xscale=1 spawnFall=spr_ninjabun_jump enemy_switch("KONI",0) spawnEnemy=oNinjaBun}	

en8=instance_create(4060,250,oEntryJump)
with en8 {rangeX=0 image_xscale=1 spawnFall=spr_ninjabun_jump enemy_switch("KONI",0) spawnEnemy=oNinjaBun}	

////
if playernumber>=2 { P2en1=instance_create(__view_get( e__VW.XView, 0)+320-64,190,oEntryJump)
with P2en1 {rangeX=0 image_xscale=-1 enemy_switch("KONI",0) canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320-64,222,oEntryJump)
with P2en2 {rangeX=0 image_xscale=-1 enemy_switch("KONI",0) canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320-64,258,oEntryJump)
with P2en3 {rangeX=0 image_xscale=-1 enemy_switch("KONI",0) canAttack=5 alarm[1]=60}}
////

}

if specialSet6=240 
{

en9=instance_create(__view_get( e__VW.XView, 0)+64,200,oEntryJump)
with en9 {rangeX=0 image_xscale=1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot}	

en10=instance_create(__view_get( e__VW.XView, 0)+320-64,200,oEntryJump)
with en10 {rangeX=0 image_xscale=-1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot}	

}

timeline_position-=1;
}