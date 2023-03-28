oPlayer.x-=96

en1=instance_create_depth(3214+80,128+28,-1,oEntrySeat) en1.rangeX=3214-64+80
 with en1 {depth=16777212 isDepth=0}
en2=instance_create_depth(3214+80*2,128+28,-1,oEntrySeat) en2.rangeX=3214-64+80
 with en2 {depth=16777212 isDepth=0}
 en3=instance_create_depth(3214+80*3,128+28,-1,oEntrySeat) with en3
{depth=16777212 isDepth=0 sittingSpr=spr_sneak_seat spawnFall=spr_sneak_jump
	spawnEnemy=oSneak rangeX=3214-64+80 rangeXAdd=0}
 en4=instance_create_depth(3214+80*5,128+28,-1,oEntrySeat) with en4
{depth=16777212 isDepth=0 sittingSpr=spr_burglarB_seat spawnFall=spr_burglarB_jump
	spawnEnemy=oEnemy1B rangeX=3214-64+80*5 rangeXAdd=0}

