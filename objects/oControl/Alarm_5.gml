/// @description /This is so it can check when to go and scroll up and where to stop. 
if isPaused=0
if global.HiScoreSee=0
{
if hiScoreYgo=0
hiScoreYgo=1
else
{
if global.HiscoreSkip=0 {global.MenuSkip=0 global.IntroSkip=0}
else {global.MenuSkip=1 global.IntroSkip=2}
room_goto(rm_titlescreen)
}

}