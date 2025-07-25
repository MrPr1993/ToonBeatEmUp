if oControl.ambushtime>=150
{
enM=instance_create_depth(__view_get( e__VW.XView, 0 )+320-128,178,-1,oMineCart)
}
else
{
timeline_position-=1;
oControl.ambushtime++;
}