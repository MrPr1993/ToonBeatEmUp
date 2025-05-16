
if __view_get( e__VW.XView, 0 )>timehit if active=0
{
event_user(0)
}

if oControl.camMove=1
if canFollowY=1
{if GoBackY=1
{if playerClosest.y<YView+160
if YView>MinY YView-=playerClosest.totalSpeedY*2
}}

if active=1 and oControl.camMove=1
{


if canFollow=1
{if GoBack=1
{if playerClosest.x<__view_get( e__VW.XView, 0 )+160
if __view_get( e__VW.XView, 0 )>MinX __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (abs(playerClosest.totalSpeed*2)) )//abs(playerClosest.totalSpeed)
}
}
//if playerClosest.x>__view_get( e__VW.XView, 0 )+160
//if __view_get( e__VW.XView, 0 )<MaxX __view_get( e__VW.XView, 0 )+=abs(playerClosest.totalSpeed)



}

if roomMove=1
{
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (roomHSpd) )
MaxX+=roomHSpd
}
else
{
if oControl.allPlayersMid
if MaxX<MaxXAdd
MaxX+=playerClosest.totalSpeed
}
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),MinX,MaxX-320) )


if cammoveUP=0
{
if roomMoveY=1
{
YView+=roomVSpd
MaxY+=roomVSpd 
}
else
{
if MaxY<MaxYAdd
MaxY+=playerClosest.totalSpeedY
}
}
else
{
if YView>0 YView-=2 else YView=0
}


//playerClosest.y+oControl.quakeFX-240+80//


visible=oControl.betatest

if specialscript!=-1 specialscript();

if skipview!=0
{skipview-=1
MinX=skipviewX MaxX=skipviewX
__view_set( e__VW.XView, 0, skipviewX )
}