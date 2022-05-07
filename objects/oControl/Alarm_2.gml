/// @description Countdown for Game Over
if isPaused=0
{
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop and room!=rm_opening
{
if continueCountdown!=0
{alarm[2]=90
continueCountdown-=1
}
else
{
gameover_set()
}
}

}