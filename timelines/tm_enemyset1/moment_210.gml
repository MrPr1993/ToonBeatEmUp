/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=800
{
en3=instance_create(__view_get( e__VW.XView, 0 )+320+64,176,oEnemy1)
with en3
enemy_modify(my_pal_sprite,6,"MR. LAR",0,0.24,0.24)
en4=instance_create(__view_get( e__VW.XView, 0 )+320+64,192,oEnemy1)
with en4
enemy_modify(my_pal_sprite,6,"MR. LAR",0,0.24,0.24)
}
else
{
timeline_position-=1
}

