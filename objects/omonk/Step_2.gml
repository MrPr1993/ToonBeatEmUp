/// @description Insert description here
// You can write your code in this editor

enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
if anim=10
{
anim=11
}

if anim=11 ///Attack Stand
{ hit=0  
atkcol_set(35,0,42,1.85,1,22)
sprite_index=AtkSpr MoveType=1 damage=0.2
image_index=animFrame image_speed=0 if animFrame=2 {PlaySoundNoStack(snd_swing) }
 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0 if animFrame==clamp(animFrame,2,2.2) sentflying=8*image_xscale else sentflying=0
if animFrame=clamp(animFrame,0,1.5)
animFrame+=0.1 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
}}