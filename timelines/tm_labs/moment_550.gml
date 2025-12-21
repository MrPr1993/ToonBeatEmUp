/// @description Head to the End

if __view_get( e__VW.XView, 0 )>=7644+320-160+920-2-320+32
{
if oControl.allPlayersMid and oControl.allPlayersMove
{

with oControl
{
PlaySound(snd_hitgroundmetal)
quakeFXTime=10

with oPlayer
{
areaEntry=1
automoveX=8848//oControl.camX+160-64
automoveY=oControl.wallY+16+16*controlNO

if playerNO=2
{
automoveX=8848//oControl.camX+160+64
automoveY=oControl.wallY+16+16*controlNO
}
if playerNO=3
{
automoveX=8848//oControl.camX+160-64
automoveY=oControl.wallY+64+16+16*controlNO
}
if playerNO=4
{
automoveX=8848//oControl.camX+160+64
automoveY=oControl.wallY+64+16+16*controlNO
}

canControl=0
automove=1
}

}

}
else
{
timeline_position-=1
}
}
else
{
timeline_position-=1
}

