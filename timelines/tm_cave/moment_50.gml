/// @description Baddies Appear 2

if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{

en1=instance_create_depth(__view_get( e__VW.XView, 0 )+128,178,-1,oMineCart)

en2=instance_create_depth(__view_get( e__VW.XView, 0 )+128,248,-1,oMineCart)
en2.movedir=1

}
else
{
timeline_position-=1
}

