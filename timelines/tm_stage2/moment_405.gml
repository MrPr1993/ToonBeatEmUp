if __view_get( e__VW.XView, 0 )>=978
{PlaySound(snd_splash3)
enA=instance_create_depth(1184, 96,-1, oEntryPool)	
with enA {rangeX=1184-240 rangeXAdd=0
	spawnFall=spr_diver_front spawnEnemy=oDiver
	}
enB=instance_create_depth(1184+32+8, 96,-1, oEntryPool)	
with enB {rangeX=1184-240  rangeXAdd=0 spawnSpeedZ=-7 
	spawnFall=spr_diver_front spawnEnemy=oDiver
	}
enC=instance_create_depth(1184+64+8, 96,-1, oEntryPool)
with enC {rangeX=1184-240  rangeXAdd=0 spawnSpeedZ=-8
	spawnFall=spr_diver_front spawnEnemy=oDiver
	}


}
else
timeline_position-=1