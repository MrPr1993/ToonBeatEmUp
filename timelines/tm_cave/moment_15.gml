/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=596-2
{
//en1=instance_create_depth(__view_get( e__VW.XView, 0 )+320-128,178,-1,oMineCart)

en1=instance_create(840,172,oAreaSpawner) with en1
{
spawnX=0 ///768
enemytype0=oGoblin MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0
}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oGoblin)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("GOHNNY",0)
	weapon_add("PICKAXE")
	}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,162,oGoblin)
with P2en1 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oGoblin)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=-1 enemy_switch("GOHNNY",0)	weapon_add("PICKAXE")}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,270,oGoblin)
with P2en3 {canAttack=5 alarm[1]=60 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

