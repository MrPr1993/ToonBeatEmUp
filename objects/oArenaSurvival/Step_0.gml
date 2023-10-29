/// @description Insert description here
// You can write your code in this editor

if gameready=0
{
if gamesetting=0
{gamesetting=1
with oControl
{
with p1 {alarm[0]=90 x=-96 y=176 key_right=1}
with p2 {alarm[0]=90 x=320+96 y=176 key_right=0  key_left=-1 image_xscale=-1}
with p3 {alarm[0]=90 x=-96 y=224 key_right=1}
with p4 {alarm[0]=90 x=320+96 y=224 key_right=0 key_left=-1 image_xscale=-1}
}
}

if oPlayer.areaEntry=0
if gameready=0
{
gameready=1

alarm[0]=2
}
}


