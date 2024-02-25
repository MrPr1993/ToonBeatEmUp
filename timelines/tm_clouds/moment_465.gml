/// @description Baddies Appear 8 - Castle start

if __view_get( e__VW.XView, 0 )>=7440-320-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,200,oBear)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)-64,216,oBear)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}
en3=instance_create(__view_get( e__VW.XView, 0)-64,232,oBear)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}
en4=instance_create(__view_get( e__VW.XView, 0)-64,248,oBear)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}
en5=instance_create(__view_get( e__VW.XView, 0)-64,264,oBear)
with en5 {image_xscale=1 canAttack=5 alarm[1]=60}
en6=instance_create(__view_get( e__VW.XView, 0)-64,280,oBear)
with en6 {image_xscale=1 canAttack=5 alarm[1]=60}

}
else
{
timeline_position-=1
}

////For castle area
//6916 - Book Area
//7566 - Edge of Table
//8206 - More Table - Furniture
//8846 - Boss Area
//
//
//