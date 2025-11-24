/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en16=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oShroom)
with en16 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("ELEGANS",0)	
	}

en17=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oSnowGirl)
with en17 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("UNDA",0)
	}		

en18=instance_create(__view_get( e__VW.XView, 0)+320+64,256,oShroom)
with en18 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("ELEGANS",0)
	}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-64, 240,oGoblin)
with P2en1 {enemy_switch("ELEGANS",0)	canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,224,oSnowGirl)
with P2en2 {enemy_switch("UNDA",0) canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,256,oShroom)
with P2en3 {enemy_switch("ELEGANS",0)	canAttack=5 alarm[1]=60 image_xscale=1}}
////


}
else
{
timeline_position-=1
}

