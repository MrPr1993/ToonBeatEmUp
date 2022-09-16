if global.IsMovie=0
{
global.MenuSkip=0 global.IntroSkip=1 
room_goto(rm_titlescreen)
}
else
room_goto(rm_cutscenes)