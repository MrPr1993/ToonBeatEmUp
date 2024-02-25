/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=10360-2-320
{
en8=instance_create_depth(__view_get( e__VW.XView, 0)-64,176,-1,oMartian)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=65}
en9=instance_create_depth(__view_get( e__VW.XView, 0)-64,176+32,-1,oMartian)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=65}
en10=instance_create_depth(__view_get( e__VW.XView, 0)-64,176+64,-1,oMartian)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=65}
en11=instance_create_depth(__view_get( e__VW.XView, 0)-64,176+96,-1,oMartian)
with en11 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=65}
}
else
{
timeline_position-=1
}

