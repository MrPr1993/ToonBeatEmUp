global.StageGoing=rm_titlescreen
global.MenuSkip=0 global.IntroSkip=1 

if global.IsMovie=1
global.StageGoing=rm_cutscenes


room_goto(global.StageGoing)