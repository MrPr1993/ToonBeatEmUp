if oControl.allPlayersMove
{
with bgsetter
{
newscript=function()
{if image_alpha>0 image_alpha-=0.01}

with oPlayer
{
canControl=0
automoveX=6688+64 automoveY=178+64 automove=1
}
}
}
else timeline_position-=1;

