/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3640
{
enA=instance_create_depth(__view_get( e__VW.XView, 0 ),178,-1,oEntryTeleport)
enB=instance_create_depth(__view_get( e__VW.XView, 0 ),260,-1,oEntryTeleport)
}
else
{
timeline_position-=1
}



