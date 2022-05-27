/// @description Insert description here
// You can write your code in this editor

if anim=0
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd) if animFrame>4-framespd animFrame=0
}

if anim=1
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd) if animFrame>3-framespd animFrame=0
}

depth=-y
