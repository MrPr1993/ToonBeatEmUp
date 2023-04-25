/// @description Insert description here
// You can write your code in this editor

if movedir=-1
{
x=__view_get( e__VW.XView, 0 )+320+100
hspeed=-6
}
else
{
x=__view_get( e__VW.XView, 0 )-100
hspeed=6
}
image_xscale=1
danger=2
sprite_index=spr_minecart
PlaySound(snd_carengine)


