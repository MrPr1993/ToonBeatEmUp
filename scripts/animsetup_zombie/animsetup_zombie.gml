// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_zombie(){
animsetup_enemy()
overwriteMove=1
overwriteStand=1
canRun=0

if anim=0
{sprite_index=StandSpr
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1) if animFrame>3.75 animFrame=0
}

	if anim=1 ///Move
	{
	if !RunAnimRecharge>0
	{sprite_index=MoveSpr} ///Walk
	else
	{sprite_index=MoveSpr
	if HasRunAnim=1 
	if (image_xscale=1 and key_right) 
	or (image_xscale=-1 and key_left) sprite_index=RunSpr 

	}
	image_index+=0.1 if image_index>5.9 image_index=0 atk=0}
	
///Rise from the Dead
if anim=666
{
if object_index=oZombieMan sprite_index=spr_zombiem_rise
if object_index=oZombieWoman sprite_index=spr_zombiew_rise
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) if animFrame>5 {canmove=1 }
}

}
