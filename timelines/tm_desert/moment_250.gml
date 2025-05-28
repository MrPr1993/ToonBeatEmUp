/// @description Pyramid Area - Hieroglyphs

if __view_get( e__VW.XView, 0 )>=5896-2-320+16
{PlaySound(snd_stonebreakl)
oControl.quakeFXTime=10

with oEntryPainting rangeX=0

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 260+64-32,oCatman)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 260,oCatman)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 260+32,oCatman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////
}
else
timeline_position-=1
