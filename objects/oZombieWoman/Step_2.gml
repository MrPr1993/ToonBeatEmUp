/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack2=1

if anim=10
{
anim=12
}

///Vomit Attack
if anim=12
{sprite_index=spr_zombiew_range
frame_set(0,0,0.125)
frame_set(1,1,0.125)
frame_set(2,2,0.125)
frame_set(3,3,0.05)
frame_set(4,4,0.25) if animFrame=5 
{
specialcheck0=0
	if specialcheck0=0
	{	spit=instance_create_depth(x+27*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-55 spit.image_xscale=image_xscale}
	else
{sm=instance_create_depth(x+27*image_xscale,y+2,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-55}
	
	}


frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,5,0.25)
frame_set(8,6,0.25)
frame_set(9,5,0.25)
frame_set(10,6,0.25)
frame_set(11,5,0.25)
frame_set(12,6,0.25)
frame_set(13,5,0.25)
frame_set(14,6,0.25)
frame_set(15,5,0.25)
frame_set(16,6,0.25)
frame_set(17,0,0.25)

if animFrame>17.75 {canmove=1 atk=0}
}