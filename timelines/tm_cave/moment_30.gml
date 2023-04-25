/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-640
{
en1=instance_create_depth(__view_get( e__VW.XView, 0 )+128,178,-1,oMineCart)
en1.movedir=1
}
else
{
timeline_position-=1
}

