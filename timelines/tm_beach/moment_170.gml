/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=7440-2-320+320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oLobster)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oLobster)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

