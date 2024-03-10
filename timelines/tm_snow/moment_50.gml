/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oWrestler)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}


en6=instance_create(__view_get( e__VW.XView, 0)+320+64,236,oWrestler)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MS.CRUSH",0)	
	}

}
else
{
timeline_position-=1
}

