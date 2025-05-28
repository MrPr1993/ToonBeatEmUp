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
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160,oDiver)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160+32,oDiver)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160+32,oDiver)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
timeline_position-=1