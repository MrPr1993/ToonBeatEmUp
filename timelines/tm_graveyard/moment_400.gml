/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3380
{
//__background_set( e__BG.Index, 0, bg_sky2 )
en6=instance_create_depth(__view_get( e__VW.XView, 0 )+24,250-48,0,oEntryJump) with en6
{spawnFall=spr_skeleton_kick spawnEnemy=oSkeleton
	current_pal=1 name="SKELIE" my_pal_sprite=spr_mummypal enemy_switch("SKELIE",0)
	}
en7=instance_create_depth(__view_get( e__VW.XView, 0 )+28,250,0,oEntryJump) with en7
{spawnFall=spr_skeleton_kick spawnEnemy=oSkeleton}
}
else
{
timeline_position-=1
}



