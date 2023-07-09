if __view_get( e__VW.XView, 0 )>=4938
{
en6=instance_create_depth(5288,196,-1,oMonk)
with en6
{image_xscale=-1
canAttack=5 alarm[1]=70
}
en7=instance_create_depth(5288,196+40,-1,oMonk)
with en7
{image_xscale=-1
canAttack=5 alarm[1]=70
}

}
else
timeline_position-=1;