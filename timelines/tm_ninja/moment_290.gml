if __view_get( e__VW.XView, 0 )>=3638-640-200-32
{
en3=instance_create_depth(3160-32, 170,-1,oWrestler) with en3
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30 }

en4=instance_create(3237+48,237,oNinjaBun) with en4
{canmove=0 anim=62 image_xscale=-1 idleRange=30+48 }
en5=instance_create_depth(3237,237,-1,oSneak) with en5
{canmove=0 isIdle=1 alarm[1]=60 anim=70000 idleRange=30
idleRange=30 enemyIdle1=spr_sneak_idle4
	}
}
else timeline_position-=1
