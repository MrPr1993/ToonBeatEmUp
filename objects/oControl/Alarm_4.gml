/// @description Countdown to title and stage 1
if isPaused=0
{
if room=rm_titlescreen 
{
if !instance_exists(oSettings)
{
if menuSelect=0 room_goto(rm_characterselect)
if menuSelect=1 room_goto(rm_map)
if menuSelect=2 room_goto(rm_chardata)
if menuSelect=3 {instance_create_depth(0,0,0,oSettings)}
if menuSelect=4 room_goto(rm_hiscore)
}
}
else room_goto(rm_opening)
}