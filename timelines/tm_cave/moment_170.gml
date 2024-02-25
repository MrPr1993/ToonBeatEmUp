/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=8380-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oGoblin)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oGoblin)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,256,oGoblin)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en4=instance_create(8106,200+24,oSlime) with en4 {image_xscale=1 canAttack=5 alarm[1]=60 anim=13 z=-200 canmove=0}


}
else
{
timeline_position-=1
}

