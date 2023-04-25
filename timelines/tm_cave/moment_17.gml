if !instance_exists(en1)
and !instance_exists(en2)
{
en1=instance_create_depth(__view_get( e__VW.XView, 0 )+320-128,178,-1,oMineCart)
}
else
timeline_position-=1;