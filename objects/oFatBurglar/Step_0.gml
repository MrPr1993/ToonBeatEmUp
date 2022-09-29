/// @description Insert description here
// You can write your code in this editor


enemy_step()

if hurt=1
{
///Special State to drop weapon
if anim=4
or anim=5
or anim=6
or anim=7
or anim=8
or anim=30
or anim=31
or dead=1
{
if weaponspr!=-1 {	
	item=instance_create_depth(x,y,-1,oGrabbable) item.sprite_index=weaponspr item.image_speed=0
	item.hasitem=spawnID weaponspr=-1 item.z=z-92 item.ground=0
	
	}
}
}