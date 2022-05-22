if __view_get( e__VW.XView, 0 )>=4544
{
en10=instance_create_depth(4544-128,190,0,oFatBurglar) with en10 {canAttack=3 alarm[3]=40}
en11=instance_create_depth(4544-128,210,0,oBoxer) with en11 {canAttack=3 alarm[3]=40}

}
else
{
timeline_position-=1
}
