/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3920-2-640-320
{


en1=instance_create(__view_get( e__VW.XView, 0)+320+32,460+32,oLobster)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 canAttack5Move=11}
en2=instance_create(__view_get( e__VW.XView, 0)+320+32,460+64,oLobster)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 canAttack5Move=11}

}
else
{
timeline_position-=1
}
