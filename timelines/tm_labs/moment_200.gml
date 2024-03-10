if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
if specialSet6=300
{
if specialSet7=0
{//camMove=0 camMax=room_width
//////// Mark for boss area
foody=instance_create(__view_get( e__VW.XView, 0)+160-32,200,oBurger)
foody.z=-200
foody=instance_create(__view_get( e__VW.XView, 0)+160,200,oPizza)
foody.z=-200
foody=instance_create(__view_get( e__VW.XView, 0)+160+32,200,oMeat)
foody.z=-200
///Part for lab BG

specialSet7=1
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
with en5 {rangeX=0	spawnFall=spr_nurse_move image_xscale=-1	spawnEnemy=oNurse}	
en6=instance_create(__view_get( e__VW.XView, 0)+320-64,256,oEntryJump)
with en6 {rangeX=0	spawnFall=spr_nurse_move image_xscale=-1	spawnEnemy=oNurse}	
}

if specialSet6=180 
{
en7=instance_create(4060,190,oEntryJump)
with en7 {rangeX=0 image_xscale=1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot
	enemy_modify("METR-A",0)
	}	

en8=instance_create(4060,250,oEntryJump)
with en8 {rangeX=0 image_xscale=-1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot
	enemy_modify("METR-A",0)
	}	
}

if specialSet6=240 
{

en9=instance_create(__view_get( e__VW.XView, 0)+64,200,oEntryJump)
with en9 {rangeX=0 image_xscale=-1	spawnFall=spr_ladybot_charge	spawnEnemy=oLadybot}	
}

timeline_position-=1;
}