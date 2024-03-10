/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=10380-2-320-320
{
en8=instance_create(__view_get( e__VW.XView, 0)+320+64,208-32,oNurse)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("DR.GLUCO",0)}
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oSneak)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.PROWL",0)}
en10=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oSneak)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.PROWL",0)}
en11=instance_create(__view_get( e__VW.XView, 0)+320+64,208+32,oNurse)
with en11 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("DR.GLUCO",0)}

}
else
{
timeline_position-=1
}

