/// @description Insert description here
// You can write your code in this editor


if global.CanGlobalBeta=1
{
if keyboard_check_pressed(ord("B")) 
if global.GlobalBeta=1 global.GlobalBeta=0 else global.GlobalBeta=1
}
if global.GlobalBeta=1
{
if keyboard_check_pressed(ord("R"))
room_restart()
}
if blackFX!=0 blackFX-=1

if optionSelect=0
{
if isGameOver=0 and continueScreen!=1 and trainRan=0 and stageClear=0
{
if keyboard_check_pressed(vk_escape)
{
if continueCountdown!=0
{
alarm[2]=90
continueCountdown-=1
}
}

if instance_exists(p1)
{
with p1 {controller_setup()}
if p1.key_start or p1.key_attack
{continuePlayer=1  instance_destroy()}
}
if instance_exists(p2)
{
with p2 {controller_setup()}
if p2.key_start or p2.key_attack
{continuePlayer=2 instance_destroy()}
}
if instance_exists(p3)
{
with p3 {controller_setup()}
if p3.key_start or p3.key_attack
{continuePlayer=3 instance_destroy()}
}
if instance_exists(p4)
{
with p4 {controller_setup()}
if p4.key_start or p4.key_attack
{continuePlayer=4 instance_destroy()}
}

}
}
else
{
controlNO=9 controller_setup()
if key_A
{PlaySound(snd_picked) canControl=0 fadetoblack=1 alarm[8]=90
global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart

global.P1Life+=global.P1Life*global.Cheat[2]*global.NoCheat
global.P2Life+=global.P2Life*global.Cheat[2]*global.NoCheat
global.P3Life+=global.P3Life*global.Cheat[2]*global.NoCheat
global.P4Life+=global.P5Life*global.Cheat[2]*global.NoCheat



global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0
global.Continues=global.ContinueStart

	if optionPick=0 stageNext=room
	if optionPick=1 {if global.IsMinigame=0 stageNext=rm_map else stageNext=rm_minigames}
	}
	if key_up_pressed {if optionPick=0 optionPick=1 else optionPick-=1 PlaySoundNoStack(snd_select)}
	if -key_down_pressed {if optionPick=1 optionPick=0 else optionPick+=1 PlaySoundNoStack(snd_select)}


}