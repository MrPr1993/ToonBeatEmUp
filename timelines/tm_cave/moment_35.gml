if oControl.ambushtime>=300
{
enM=instance_create_depth(__view_get( e__VW.XView, 0 )+320-128,178,-1,oMineCart)
}
if oControl.ambushtime>=150
{
enM=instance_create_depth(__view_get( e__VW.XView, 0 )+128,178,-1,oMineCart)
enM.movedir=1
}
else
{
timeline_position-=1;
oControl.ambushtime++;
}