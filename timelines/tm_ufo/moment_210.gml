/// @description Baddies Appear 10 - Boss

if __view_get( e__VW.XView, 0 )>=11824-2-320
{
boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oMartianBoss)
musicplaystart(msc_boss4)
oControl.bossID=oMartianBoss

}
else
{
timeline_position-=1
}

