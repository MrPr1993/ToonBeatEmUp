/// @description Baddies Boss Area

if __view_get( e__VW.XView, 0 )>=8734-2-320
{
boss=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oMirrorLady)



}
else
{
timeline_position-=1
}

