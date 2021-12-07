/// @description /This is so it can check when to go and scroll up and where to stop. 
if isPaused=0
{
if hiScoreYgo=0
hiScoreYgo=1
else
{global.MenuSkip=0
room_goto(rm_titlescreen)
}

}