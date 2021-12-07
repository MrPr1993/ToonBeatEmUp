/// @description Timer
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor  and room!=rm_newspaper and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata
{
if oPlayer.dead=0
{
if time!=0 {time-=1 alarm[0]=120}
else
with oPlayer
{
if hurt=0
{
hp=0 canmove=0 hurt=1 HitType=1
event_user(0)
}
}
}
}

