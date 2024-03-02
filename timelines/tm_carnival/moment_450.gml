/// @description Plane Area

if __view_get( e__VW.XView, 0 )>=3594
{


 en5=instance_create_depth(6018,192,-1,oEntrySeat) en5.rangeX=6018+60
 with en5 {z=-38 sittingSpr=spr_bear_hang2 spawnFall=spr_bear_front  spawnEnemy=oBear enemy_switch("ROOSEVELT",0)}
 en6=instance_create_depth(6018+64,192,-1,oEntrySeat) en6.rangeX=6018+60
 with en6 {z=-64 sittingSpr=spr_bear_hang1 spawnFall=spr_bear_front  spawnEnemy=oBear enemy_switch("TEDDIE",0)}


}
else
timeline_position-=1
