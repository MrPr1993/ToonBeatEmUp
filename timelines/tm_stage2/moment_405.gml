if __view_get( e__VW.XView, 0 )>=978
{
enA=instance_create_depth(1184, 96,-1, oEntryPool)	
with enA {rangeX=1184-240 rangeXAdd=0}
enB=instance_create_depth(1184+32+8, 96,-1, oEntryPool)	
with enB {rangeX=1184-240  rangeXAdd=0 spawnSpeedZ=-7}
enC=instance_create_depth(1184+64+8, 96,-1, oEntryPool)
with enC {rangeX=1184-240  rangeXAdd=0 spawnSpeedZ=-8}


}
else
timeline_position-=1