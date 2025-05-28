/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2614
{


en1=instance_create_depth(3168, 160,-1,oEntryPainting) with en1
{rangeX=3168-160 z=-16 enemyID=48}

en2=instance_create_depth(3328, 160,-1,oEntryPainting) with en2
{rangeX=3328-160 z=-14 paintingSpr=spr_painting2 enemyID=49}

en8=instance_create_depth(3504, 160,-1,oEntryPainting) with en8
{rangeX=3504-160 z=-16 paintingSpr=spr_painting3 enemyID=50}

en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,192,0,oZombieWoman)
with en3 {canmove=0 anim=61 idleRange=15}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16+64,192,0,oZombieMan)
with en4 {canmove=0 anim=61 image_xscale=-1 idleRange=15+64}
en5=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16+16,192+16,0,oSkeleton)
with en5 {canmove=0 anim=61 idleRange=15+16}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oSkeleton)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oSkeleton)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oSkeleton)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
{
timeline_position-=1
}



