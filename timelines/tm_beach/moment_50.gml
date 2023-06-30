/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=3280-2-640-320-320
{
en1=instance_create(1594,448,oEntryClimb)
en1.z=-16*6 en1.rangeX=en1.x-200 en1.rangeXAdd=0
with en1
{spawnEnemy=oSneak
spawnSpr=spr_sneak_entry1
spawnFall=spr_sneak_front
}	

en2=instance_create(1654,160,oEntryClimb)
en2.z=-16*4 en2.rangeX=en2.x-200 en2.rangeXAdd=0

en3=instance_create(__view_get( e__VW.XView, 0)+320+80,460+32,oBoxer)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=80}
en4=instance_create(__view_get( e__VW.XView, 0)-32,460,oEnemy1)
with en4 {image_xscale=1 canAttack=5 alarm[1]=80 enemy_modify(my_pal_sprite,4,"MR.LAR",0,0.24,0.24)}
en5=instance_create(__view_get( e__VW.XView, 0)-32,460+64,oEnemy1)
with en5 {image_xscale=1 canAttack=5 alarm[1]=80}

}
else
{
timeline_position-=1
}

