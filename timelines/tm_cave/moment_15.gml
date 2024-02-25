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
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_modify(my_pal_sprite,1,"GOHNNY",0,hp,maxhp)
	weapon_add("PICKAXE")
	}	


}
else
{
timeline_position-=1
}

