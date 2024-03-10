if __view_get( e__VW.XView, 0 )>=4200
{
en8=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,190,0,oSneak) with en8
{enemy_switch(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2) image_xscale=-1 canAttack=3 alarm[3]=30}
en9=instance_create_depth(__view_get( e__VW.XView, 0 )+320+64,210,0,oSneak) with en9
{enemy_switch(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2) image_xscale=-1 canAttack=3 alarm[3]=30}

}
else
{
timeline_position-=1
}
