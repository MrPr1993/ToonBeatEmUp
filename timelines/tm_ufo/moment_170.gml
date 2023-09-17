/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=10360-2-320
{
en8=instance_create_depth(__view_get( e__VW.XView, 0)-64,176,-1,oMartian)
en9=instance_create_depth(__view_get( e__VW.XView, 0)-64,176+32,-1,oMartian)
en10=instance_create_depth(__view_get( e__VW.XView, 0)-64,176+64,-1,oMartian)
en11=instance_create_depth(__view_get( e__VW.XView, 0)-64,176+96,-1,oMartian)

}
else
{
timeline_position-=1
}

