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
