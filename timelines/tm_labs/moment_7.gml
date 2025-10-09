var _ready=0;

with oPlayer if ground _ready=1

if global.StageRecord[6]=2 with oPlayer if canmove _ready=1

if _ready=0
timeline_position-=1;
else
{oControl.showMap=1
with oPlayer
{
canControl=1
key_right=0
key_left=0
areaEntry=0
}
timer_set(1)
}