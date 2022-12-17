/// @description Deactivate GO!
if isPaused=0
{
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop and room!=rm_opening
and room!=rm_soundtest and room!=rm_gallery and room!=rm_loading and room!=rm_brickbreak
and room!=rm_menu and room!=rm_settings and room!=rm_minigames and room!=rm_cutscenes and room!=rm_paletteeditor
and room!=rm_slotmachine
{
if oPlayer.x>xGoCheck
{
goActive=0
goFrame=0
}
else
alarm[1]=30
}

}