/// @description Insert description here
// You can write your code in this editor
controller_setup()

if pauseBuffer!=0 pauseBuffer-=1

if key_start if pauseBuffer=0
{
if !instance_exists(oSettings)
instance_destroy()
}

if keyboard_check_pressed(vk_escape) or key_B or keyboard_check_pressed(ord("K"))
if pauseBuffer=0
{
if !instance_exists(oSettings)
{
if AreYouSure=0
instance_destroy() else AreYouSure=0
}
else
{
//with oSettings instance_destroy()
}
}

if key_A or keyboard_check_pressed(ord("J")) or keyboard_check_pressed(vk_space)
if !instance_exists(oSettings)
if AreYouSure=0
{
{
if menuSelect=0 instance_destroy()
if menuSelect=1 
if global.StageSelect=0 PlaySound(snd_steal)
else
{PlaySound(snd_picked) Sure=0 AreYouSure=1}


if menuSelect=2 {PlaySound(snd_picked) instance_create_depth(0,0,0,oSettings)
	oSettings.stagePause=stagePause
	}
if menuSelect=3 { PlaySound(snd_picked) Sure=0 AreYouSure=1}

}
}
else
{
	
if Sure=1
{
if menuSelect=1 room_restart()
if menuSelect=3 
{
if global.StageSelect=0
{room=rm_menu global.MenuSkip=0 global.IntroSkip=1}
else
if global.IsMinigame=1 room_goto(rm_minigames)
else
room_goto(rm_map)
}
}
else
AreYouSure=0
}