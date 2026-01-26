
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



}
else
{
if specialSet6!=300
specialSet6+=1

if specialSet6=10 
{
en1=instance_create(7674,190,oEntryJump)
with en1 {rangeX=0 image_xscale=1 	spawnFall=spr_nurse_move	spawnEnemy=oNurse}

en2=instance_create(7674,256,oEntryJump)
with en2 {rangeX=0 image_xscale=1	spawnFall=spr_nurse_move spawnEnemy=oNurse}	



}

if specialSet6=60 
{
en3=instance_create(7732,206,oEntryJump)
with en3 {rangeX=0 image_xscale=1 	spawnFall=spr_nurse_move spawnEnemy=oNurse}

en4=instance_create(7732,236,oEntryJump)
with en4 {rangeX=0 image_xscale=1	spawnFall=spr_nurse_move spawnEnemy=oNurse
	
	}	
}

if specialSet6=120 
{
en5=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryJump)
with en5 {rangeX=0	spawnFall=spr_nurse_move image_xscale=-1	spawnEnemy=oNurse}	
en6=instance_create(__view_get( e__VW.XView, 0)+320-64,256,oEntryJump)
with en6 {rangeX=0	spawnFall=spr_nurse_move image_xscale=-1	spawnEnemy=oNurse}	
}

if specialSet6=180 
{
en7=instance_create(__view_get( e__VW.XView, 0)+64,190,oEntryJump)
with en7 {rangeX=0 image_xscale=1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot
	enemy_switch("METR-A",0)
	}	

en8=instance_create(__view_get( e__VW.XView, 0)+64,250,oEntryJump)
with en8 {rangeX=0 image_xscale=-1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot
	enemy_switch("METR-A",0)
	}	



}

if specialSet6=240 
{

en9=instance_create(__view_get( e__VW.XView, 0)+64,200,oEntryJump)
with en9 {rangeX=0 image_xscale=1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+64,264,oEntryJump)
with P2en1 {rangeX=0 image_xscale=1 spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryJump)
with P2en2 {rangeX=0 image_xscale=-1 spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320-64,270,oEntryJump)
with P2en3 {rangeX=0 image_xscale=-1 spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot canAttack=5 alarm[1]=60}}
////

}


timeline_position-=1;
}







