/// @description Disappear


if act=1
{
if specialBossState=0
{
if disappearTime=0 instance_destroy()
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
frozen_fx()
visible=0 disappearTime=0 alarm[2]=90
}

}
}
else
event_user(15)///Special Boss State
}

