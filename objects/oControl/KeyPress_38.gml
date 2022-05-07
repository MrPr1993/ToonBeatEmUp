if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop and room!=rm_opening
if !keyboard_check(vk_control)
{
if enemySpawn=0 enemySpawn=60
else enemySpawn-=1
event_user(0)
global.enemytest=enemySpawn
}


