/// @description Insert description here
// You can write your code in this editor

if anim=0
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,0,framespd)
frame_set(3,2,framespd) if AnimFrame>4-framespd AnimFrame=0
}

if anim=1
{
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd) if AnimFrame>3-framespd AnimFrame=0
}

if newscript!=-1
newscript();

if isDepth
depth=-y

if place_meeting(x,y,oTrainFXSpot)
{trainzSet=instance_place(x,y,oTrainFXSpot)
if ground
trainz=trainzSet.Train1Y else trainz=0
}else trainz=0
