if fakeenS.timer!=120
{fakeenS.timer+=1
timeline_position-=1
}
else
{fakeenS.timer=0
with oControl {TextDialogue=""}

with oBoss1a
{sprite_index=spr_hwolf_move image_xscale=1
hspeed=4 disappearTime=0 alarm[2]=160 timeline_position=310
}
}