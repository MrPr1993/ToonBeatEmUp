if boss.canmove
{oControl.time=99
with oPlayer
{specialanimscript=-1 AnimFrame=0 anim=0
canControl=1 canmove=1
}
timer_set(1)
}
else
{
timeline_position-=1
}
