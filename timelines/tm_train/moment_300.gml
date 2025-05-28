/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

{
with box 
{
clothes=instance_create_depth(2496,160-1,-1,oDisappearPart) with clothes
{
disappearTime=24
dis=0
angle=0
minSprite=0
maxSprite=0
SpriteSpd=0
z=0
bounce=1
spdZ=-2 hspeed=2
angleSpin=0
sprite_index=spr_boxer_train image_index=0 image_speed=0
}
clothes.my_pal_sprite=my_pal_sprite
clothes.current_pal=current_pal
instance_destroy()	
}
en1=instance_create_depth(2496,160,-1,oEntrySeat)
with en1 {my_pal_sprite=spr_boxerpal trainFX=1 sittingSpr=spr_femburglar_seat spawnFall=spr_boxer_move image_xscale=-1
spawnEnemy=oBoxer PlaySound(snd_steal)}
en1.rangeX=0 en1.rangeXAdd=0 

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 166,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 166+24,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 166+48,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////
}



