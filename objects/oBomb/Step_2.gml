item_endstep()

if ground {vspeed=0 spdY=0}

if place_free(x,y+spdY) y+=spdY

if carry=1
if trigger=0
{
trigger=1
image_index=0
}

if trigger=1
{
if image_index>2.9 image_index=1 else
if triggerTime<10
{
image_index=0
}
else 
if triggerTime<20
image_index+=0.5
else
image_index+=0.75

triggerTime+=0.1

if triggerTime>30
{
event_user(0)
}
}

