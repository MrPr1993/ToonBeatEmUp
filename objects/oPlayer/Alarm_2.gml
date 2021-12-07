/// @description Respawn
if disappearTime=0
{
if PlayerLife!=0
event_user(9)
else
{visible=0

oControl.characterSelect=character
with oControl
{alarm[2]=90
continueScreen=1
continueCountdown=9
}}
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

