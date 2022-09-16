/// @description Timer
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor  and room!=rm_newspaper and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop and room!=rm_opening
and room!=rm_soundtest  and room!=rm_gallery and room!=rm_loading and room!=rm_brickbreak
and room!=rm_menu and room!=rm_settings and room!=rm_minigames and room!=rm_cutscenes
{
if oPlayer.dead=0
{
if time!=0 {time-=1 alarm[0]=timeclick}
else
if timedead=1
{
with oPlayer
{
if hurt=0
{
hp=0 canmove=0 hurt=1 HitType=1
event_user(0)
}
}
}
else
{
if specialTimer!=-1 with specialTimer event_user(9)
}
}
}

