if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata 
if !keyboard_check(vk_control)
{
if spawnNo=3 spawnNo=0 else spawnNo+=1
event_user(0)
}

