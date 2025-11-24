if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7440,1)


en1=instance_create_depth(5876,200,0,oEntryJump) with en1
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

en2=instance_create_depth(5876,260,0,oEntryJump) with en2
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

/////

en3=instance_create_depth(6076,200,0,oEntryJump) with en3
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

en4=instance_create_depth(6076,230,0,oEntryJump) with en4
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

en5=instance_create_depth(6076,260,0,oEntryJump) with en5
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

//
en6=instance_create_depth(6076,200,0,oEntryJump) with en6
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

//
en7=instance_create_depth(6076,230,0,oEntryJump) with en7
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

//
en8=instance_create_depth(6076,260,0,oEntryJump) with en8
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

//
en9=instance_create_depth(6376,200,0,oEntryJump) with en9
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

en10=instance_create_depth(6376,260,0,oEntryJump) with en10
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

en11=instance_create_depth(6576,200,0,oEntryJump) with en11
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

en12=instance_create_depth(6576,260,0,oEntryJump) with en12
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

en13=instance_create_depth(6776,200,0,oEntryJump) with en13
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

en14=instance_create_depth(6776,260,0,oEntryJump) with en14
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 enemy_switch("SKELIE",0)	 
}

en15=instance_create_depth(6776,260,0,oEntryJump) with en15
{image_xscale=-1 canAttack=5 alarm[3]=30 spawnFall=spr_skeleton_move spawnEnemy=oSkeleton rangeX=x-200
	current_pal=0 //enemy_switch("SKELIE",0)	 
}

}
else
timeline_position-=1;