/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2832
{
//__background_set( e__BG.Index, 0, bg_sky2 )
en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,170,0,oSneak) with en6
{enemy_switch(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2) image_xscale=-1 canAttack=3 alarm[3]=10}
en7=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,190,0,oSneak) with en7
{enemy_switch(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2) image_xscale=-1 canAttack=3 alarm[3]=60}


}
else
{
timeline_position-=1
}



