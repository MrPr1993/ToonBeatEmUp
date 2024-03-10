/// @description Baddies Appear 4 - Elevator

if __view_get( e__VW.XView, 0 )>=4026-2
{


PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10

specialSet6=0

with oEnemySpawner
specialscript=function()
{
specialSet8+=2
if specialSet8>72 specialSet8=0
layer_x("ElevatorBG",-specialSet8)
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
with en2 {rangeX=0 image_xscale=1	spawnFall=spr_fatburglar_move spawnEnemy=oFatBurglar}	
}

if specialSet6=60 
{
en3=instance_create(4300,206,oEntryJump)
with en3 {rangeX=0 image_xscale=-1 	spawnFall=spr_monk_jump spawnEnemy=oMonk}

en4=instance_create(4300,236,oEntryJump)
with en4 {rangeX=0 image_xscale=-1	spawnFall=spr_monk_jump spawnEnemy=oMonk
	
	}	
}

if specialSet6=120 
{
en5=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryJump)
with en5 {rangeX=0	spawnFall=spr_nurse_move image_xscale=-1	spawnEnemy=oNurse
	enemy_switch("DR.SULF",0)
	}	
en6=instance_create(__view_get( e__VW.XView, 0)+320-64,256,oEntryJump)
with en6 {rangeX=0	spawnFall=spr_nurse_move image_xscale=-1	spawnEnemy=oNurse
	enemy_switch("DR.SULF",0)
	}	
}

if specialSet6=180 
{
en7=instance_create(4060,190,oEntryJump)
with en7 {rangeX=0 image_xscale=1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot
	enemy_switch("METR-A",0)
	}	

en8=instance_create(4060,250,oEntryJump)
with en8 {rangeX=0 image_xscale=-1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot
	enemy_switch("METR-A",0)
	}	
}

if specialSet6=240 
{

en9=instance_create(__view_get( e__VW.XView, 0)+64,200,oEntryJump)
with en9 {rangeX=0 image_xscale=-1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot}	
}

timeline_position-=1
}

