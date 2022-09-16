if __view_get( e__VW.XView, 0 )>=4234
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )-64,218,-1,oFatBurglar) with en5
{canAttack=5 alarm[1]=30}
}
else
timeline_position-=1
