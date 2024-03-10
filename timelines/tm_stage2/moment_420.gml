if __view_get( e__VW.XView, 0 )>=1050
{

en6=instance_create_depth(1500,132,0,oSneak)
with en6 {canAttack=6 isIdle=1 alarm[1]=60 idleRange=60 image_xscale=-1
		 enemy_switch("MR.SLINK",0)
		//enemy_switch(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2)
		
		}

}
else
timeline_position-=1

