if __view_get( e__VW.XView, 0 )>=928
{
//en3=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
en3=instance_create_depth(1136,160,-1,oEntryShatter) en3.z=-56 en3.rangeX=1136-240 en3.fxYadd=-60 en3.rangeXAdd=0

en4=instance_create_depth(1136-40,160,-1,oEntryShatter) en4.z=-56 en4.rangeX=1136-240 en4.fxYadd=-60 en4.rangeXAdd=0
en4.spawnEnemy=oEnemy1B en4.canEvent0=0 en4.ySpeed=0.8 en4.spawnSpeedZ=-6.2 en4.spawnFall=spr_burglarB_front

en6=instance_create_depth(1136+40,160,-1,oEntryShatter) en6.z=-56 en6.rangeX=1136-240 en6.fxYadd=-60 en6.rangeXAdd=0
with en6 enemy_modify(my_pal_sprite,4,"MR.LAR",0,0.24,0.24) en6.canEvent0=0 en6.ySpeed=1.2 en6.spawnSpeedZ=-6.1

}
else
timeline_position-=1

