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
}


