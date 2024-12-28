if bosscreen.specialcheck[1]=3
{ with oEnemySpawner cammoveUP=0
boss=instance_create_depth(oControl.camX+160,220,-1,oScienceScreen)


with boss {canmove=0 anim=100 image_xscale=-1 specialanim=3
	screenX=7800 screenY=160 z=-200
	}
}
else
timeline_position-=1