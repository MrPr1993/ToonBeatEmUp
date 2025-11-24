/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2000-2-320
{
enM=instance_create_depth(__view_get( e__VW.XView, 0 )+128,178,-1,oMineCart)
enM.movedir=1
}
else
{
timeline_position-=1
}

