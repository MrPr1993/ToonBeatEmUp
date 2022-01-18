/// @description Insert description here
// You can write your code in this editor
depth=-y




if anim=0
{
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame>2 animFrame=0
frame_set(2,1,0.1)
}

if anim=1
{
frame_set(0,2,0.1)
frame_set(1,3,0.1)
frame_set(2,3,0.1)
if animFrame>2 animFrame=0
}

if petID!=-1
{
if anim=1 if petID.anim!=10010 {petID=-1 anim=0 interact=0}
	
if !instance_exists(petID) petID=-1
}
