/// @description Insert description here
// You can write your code in this editor
if stoptimer=0
{
if stageClear=0
{
if time=0
{songbeaten=0 songdone=1 PlaySound(snd_fall) stoptimer=1
with oSingPlayer
if anim!=10 {bagged=1 AnimFrame=1.75 image_index=7 anim=10 win=0;}

}
else
{
if songdone=0
{
alarm[1]=60
time-=1
}
}
}
}