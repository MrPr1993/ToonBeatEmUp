/// @description Countdown to title and stage 1
if isPaused=0
{
if room=rm_titlescreen 
{global.MenuSkip=0 global.IntroSkip=1 
if !instance_exists(oSettings)
{global.MenuGlobal=menuSelect
room_goto(rm_menu)
}
}
else 
if room=rm_map or room=rm_minigames
{global.StageSelect=1
room_goto(rm_characterselect)
}
else
{
if room=rm_characterselect and global.TrainingRoom=1
room_goto(rm_training)
else
{
if room=rm_opening {global.StageSelect=0 global.StageGoing=rm_stage1}
else
if room=rm_menu
{global.P1Only=0;
global.MenuGlobal=menuSelect global.HiScoreSee=1 global.HiscoreSkip=1
if menuSelect=0 {global.HiScoreSee=0 global.HiscoreSkip=0 global.SkipDifficulty=0 room_goto(rm_characterselect) global.IsMovie=0 global.IsMinigame=0  global.TrainingRoom=0 global.StageGoing=rm_opening global.StageSelect=0}
if menuSelect=1 {global.SkipDifficulty=0 room_goto(rm_map) global.IsMinigame=0 global.TrainingRoom=0 global.StageSelect=1}
if menuSelect=2 {room_goto(rm_feats) global.StageSelect=0}
if menuSelect=3 {global.TrainingRoom=0 room_goto(rm_settings)}
if menuSelect=4 room_goto(rm_shop)
if menuSelect=5 {global.SkipDifficulty=1 global.StageSelect=0 global.P1Only=1; global.TrainingRoom=1 global.IsMinigame=0 room_goto(rm_characterselect)}
if menuSelect=6 {global.StageSelect=1 global.TrainingRoom=0 global.HiscoreSkip=1 global.IsMinigame=1 room_goto(rm_minigames)}
if menuSelect=7 room_goto(rm_chardata)
if menuSelect=8 {room_goto(rm_gallery) global.HiscoreSkip=1}
if menuSelect=9 {room_goto(rm_soundtest) global.HiscoreSkip=1}
if menuSelect=10 {room_goto(rm_cutscenes) global.IsMovie=1  global.HiscoreSkip=1}
if menuSelect=11 {room_goto(rm_hiscore) global.HiScoreSee=1 global.HiscoreSkip=1}
}
else
if room=rm_training room_goto(rm_menu)
else
room_goto(global.StageGoing)
}

}

}

