/// @description Countdown to title and stage 1
if isPaused=0
{
if room=rm_titlescreen 
{
if !instance_exists(oSettings)
{global.MenuGlobal=menuSelect
if menuSelect=0 {room_goto(rm_characterselect) global.StageGoing=rm_opening global.StageSelect=0}
if menuSelect=1 {room_goto(rm_map) global.StageSelect=1}
if menuSelect=2 {instance_create_depth(0,0,0,oSettings)}
if menuSelect=3 room_goto(rm_training)
if menuSelect=4 room_goto(rm_shop)
if menuSelect=5 room_goto(rm_feats)
if menuSelect=6 room_goto(rm_chardata)
if menuSelect=7 {room_goto(rm_hiscore) global.HiscoreSkip=1}
}
}
else 
if room=rm_map
{global.StageSelect=1
room=rm_characterselect
}
else
{
if room=rm_opening {global.StageSelect=0 global.StageGoing=rm_stage1}
else
room_goto(global.StageGoing)
}
}

