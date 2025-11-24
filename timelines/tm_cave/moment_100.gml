if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{oControl.time=99
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,5200,1)


en2=instance_create(3548,160,oEntryClimb)
with en2
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	}
	
en3=instance_create(3600,160,oEntryClimb)
with en3
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	}
	
en4=instance_create(3700,160,oEntryClimb)
with en4
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}
	
en5=instance_create(3800,160,oEntryClimb)
with en5
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	}	
	
en6=instance_create(3900,160,oEntryClimb)
with en6
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=3800-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	}	
	
en7=instance_create(4000,160,oEntryClimb)
with en7
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	}	
	
en8=instance_create(4100,160,oEntryClimb)
with en8
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	}	
	
en9=instance_create(4200,160,oEntryClimb)
with en9
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=4100-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}	

en10=instance_create(4300,160,oEntryClimb)
with en10
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}	

en11=instance_create(4400,160,oEntryClimb)
with en11
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=4300-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}	
	
en12=instance_create(4800,160,oEntryClimb)
with en12
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}	
	
en13=instance_create(4900,160,oEntryClimb)
with en13
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=x-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	

	}	
	
en14=instance_create(5000,160,oEntryClimb)
with en14
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=5000-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	

	}	
	
en15=instance_create(5100,160,oEntryClimb)
with en15
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=5000-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}	
	
en16=instance_create(5200,160,oEntryClimb)
with en16
{depth=1677720 isDepth=0 spawnYAdd=9+16 z=0
	rangeX=5000-128
	spawnSpr=spr_goblin_entry1
	spawnFall=spr_goblin_front
	spawnEnemy=oGoblin	
	enemy_switch("GOHNNY",0)
	}	

}
else
timeline_position-=1;