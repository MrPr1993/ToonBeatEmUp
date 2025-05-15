/// @description Baddies Appear 1

if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32+240,oMonk)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+96+240,oMonk)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 }	

}
else
{
timeline_position-=1
}

