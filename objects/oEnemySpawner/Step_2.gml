if __view_get( e__VW.XView, 0 )>timehit if active=0
{
event_user(0)
}

if oControl.camMove=1
if canFollowY=1
{if GoBackY=1
{if oPlayer.y<YView+160
if YView>MinY YView-=oPlayer.totalSpeedY*2
}}

if active=1 and oControl.camMove=1
{


if canFollow=1
{if GoBack=1
{if oPlayer.x<__view_get( e__VW.XView, 0 )+160
if __view_get( e__VW.XView, 0 )>MinX __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (abs(oPlayer.totalSpeed*2)) )//abs(oPlayer.totalSpeed)
}
}
//if oPlayer.x>__view_get( e__VW.XView, 0 )+160
//if __view_get( e__VW.XView, 0 )<MaxX __view_get( e__VW.XView, 0 )+=abs(oPlayer.totalSpeed)



}

if roomMove=1
{
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (roomHSpd) )
MaxX+=roomHSpd
}
else
{
if MaxX<MaxXAdd
MaxX+=oPlayer.totalSpeed
}
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),MinX,MaxX-320) )


if roomMoveY=1
{
YView+=roomVSpd
MaxY+=roomVSpd 
}
else
{
if MaxY<MaxYAdd
MaxY+=oPlayer.totalSpeedY
}



//oPlayer.y+oControl.quakeFX-240+80//


visible=oControl.betatest

if specialscript!=-1 specialscript();