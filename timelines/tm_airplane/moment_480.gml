///@description Plane Door

if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,3594+640+320+640-8-2,1)

///Plane Door
dr=instance_create_depth(4992,48,-1,oFlashFX) with dr
{isDepth=0 animEnd=0 image_speed=0 alarm[0]=0 sprite_index=spr_planedoor depth=16777217}

en1=instance_create_depth(3214+80*9+640,128+28,-1,oEntrySeat) en1.rangeX=3214+640-64+80*10
 with en1 {depth=16777212 isDepth=0}
en2=instance_create_depth(3214+80*10+640,128+28,-1,oEntrySeat) en1.rangeX=3214+640-64+80*10
 with en2 {depth=16777212 isDepth=0 enemy_switch("MR.LAR",0)}
en3=instance_create_depth(3214+80*11+640,128+28,-1,oEntrySeat) with en3
{depth=16777212 isDepth=0 sittingSpr=spr_sneak_seat spawnFall=spr_sneak_jump
	spawnEnemy=oSneak rangeX=3214+640-64+80*11 rangeXAdd=0}
en4=instance_create_depth(3214+80*12+640,128+28,-1,oEntrySeat) with en4
{depth=16777212 isDepth=0 sittingSpr=spr_femburglar_seat spawnFall=spr_femburglar_jump
	spawnEnemy=oFemBurglar rangeX=3214+640-64+80*13 rangeXAdd=0}
en5=instance_create_depth(3214+80*13+640,128+28,-1,oEntrySeat) with en5
{depth=16777212 isDepth=0 sittingSpr=spr_femburglar_seat spawnFall=spr_femburglar_jump
	spawnEnemy=oFemBurglar rangeX=3214+640-64+80*13 rangeXAdd=0 enemy_switch("MS.CHILL",0)}
}
else
timeline_position-=1
