/// @description Baddies Appear 2


if oControl.ambushtime>=150
{

enM=instance_create_depth(__view_get( e__VW.XView, 0 )+128,178,-1,oMineCart)

enM=instance_create_depth(__view_get( e__VW.XView, 0 )+128,248,-1,oMineCart)
enM.movedir=1

}
else
{oControl.ambushtime++;
timeline_position-=1
}

