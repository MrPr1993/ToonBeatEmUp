/// @description Plane Area

if __view_get( e__VW.XView, 0 )>=5744-2
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,196,-1,oBear) with en5
{canAttack=5 alarm[1]=30 image_xscale=-1}
en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,196+48,-1,oBear) with en6
{canAttack=5 alarm[1]=30 image_xscale=-1 enemy_modify(spr_bearpal,1,"TEDDIE",hplayer,hp,maxhp)}
//spawner_followset("WaveSet1",0,3338-64+640,1)
}
else
timeline_position-=1
