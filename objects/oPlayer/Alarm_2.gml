/// @description Respawn
if ContinueMode=0
{
if disappearTime=0
{
if PlayerLife!=0
event_user(9)
else
{visible=0
ContinueCountdown=9
ContinueCTime=90
continueScreen=1 ContinueSelect=1
oControl.characterSelect=character
oControl.playNO=playerNO
ContinueMode=1
with oControl
{
//cont=instance_create_depth(0,0,-1,oContinueScreen)
//cont.TVfx=TVfx cont.playNO=playNO
if x=-9999
{
alarm[2]=90
continueScreen=1
continueCountdown=9
}
}

}
}
else
{

if anim!=41 ///Check if it's frozen animation
{
alarm[2]=2
if visible=0 visible=1 else visible=0
disappearTime-=1
}
else
{///Frozen Death
				///Spawn Ice Effect
			alarm[2]=90	
if visible
{frozen_fx()} else alarm[2]=2
visible=0 disappearTime=0 
}

}

}