if oGenie.canmove
{oControl.bossID=oGenie
	with oPlayer
	{canmove=1 AnimFrame=0 anim=0
	canControl=1;
	specialanimscript=-1;
	}
boss=oGenie
}
else
{
timeline_position-=1
}
