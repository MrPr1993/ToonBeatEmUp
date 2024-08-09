if oControl.allPlayersMove
{
with bgsetter
{
newscript=function()
{if image_alpha>0 image_alpha-=0.01}

with oPlayer
{
canControl=0
automoveX=oControl.camX+64 automoveY=178+64 automove=1

if controlNO=2 {automoveX=oControl.camX+320-64 automoveFace=-1}
if controlNO=3 {automoveY=178+64+32}
if controlNO=4 {automoveX=oControl.camX+320-64 automoveY=178+64+32 automoveFace=-1}


}
}
}
else timeline_position-=1;

