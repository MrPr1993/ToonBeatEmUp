if ContinueMode=0
{
if canControl=controlNO
controller_setup()

player_extramovesettings()

if hp<=0
if DeathCryOnce=0
{DeathCryOnce=1 disappearTime=24
PlaySound(DeathCry)
}

if weaponLife<=0 and spawnID!=-1 and canmove=1 and weaponIsGun=0
event_user(1)

if (weaponLife<=1 and weaponIsGun=0)
or (weaponLife<=0 and weaponIsGun=1)
{
if weaponFlash<=0 weaponFlash=2 else weaponFlash-=0.25
}else weaponFlash=2

character_physics()

if hurt=1 and powlock=1 powlock=0
if powlock=0
if pow<5 pow+=0.01 else pow=5

if takingitem!=0 takingitem-=1 else takingitem=0

if hurt=1 throwcombo=2
if hurt=1 if carry=1{dropitem=0 event_user(2)}
if hurt=0 specialDead=0

comboHit=selfatk.comboHit
selfatk.targetHeight=targetHeight
selfatk.flashX=flashX
selfatk.flashY=flashY
selfatk.flashZ=flashZ
selfatk.canSuper=canSuper

if canmove=1
{

if -key_left 
{//if x>view_xview[0]+16
if place_free(x-walkSpeed-dashing,y) x-=walkSpeed+dashing if ground image_xscale=-1
if dashing=2 doubledash=0.2}

if key_right
{//if x<view_xview[0]+320-16
if place_free(x+walkSpeed+dashing,y) x+=walkSpeed+dashing
  if ground image_xscale=1
if dashing=2 doubledash=0.2}

if -key_left_pressed or key_right_pressed
{
if doubledash=0 doubledash=1 else {
if carry=0 {doubledash=1 dashing=2}}}


if key_up
{if y>__view_get( e__VW.YView, 0 )+8
if place_free(x,y-walkSpeed) y-=walkSpeedY}



if key_down
{if y<__view_get( e__VW.YView, 0 )+240-4
if place_free(x,y+walkSpeed) y+=walkSpeedY}

if ground
if !key_up and !key_down and !-key_left and !key_right
{if anim!=0 image_index=0 anim=0}
else
{if anim!=1 image_index=0 anim=1}


if (key_attack and key_jump)
or (key_attack and key_jump_hold)
or (key_jump and key_charge)
{
{
if weaponspawn!=-1 or carry=1 anim=24 else player_attack()
player_throwweapon()
}
}
else
{


///Attack
if key_attack
{
if !key_jump
player_attack() else if weaponspawn!=-1 or carry=1 player_throwweapon() else player_attack()
}

if key_jump
{
if !key_attack
player_prepjump() else if weaponspawn!=-1 or carry=1 player_throwweapon() else player_prepjump()
}

///Super Attack
if key_super
event_user(8)
if (key_shield and key_jump)
or (key_shield and key_jump_hold)
or (key_jump and key_shield)
event_user(8)
else{
///Special Attack
if key_shield_pressed
{
if !key_jump_hold and ground
event_user(4)
}}

///Grab Enemy
if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+16,y,parEnemy))
or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-16,y,parEnemy))
or (image_xscale=-1 and key_down and dashing=0 and place_meeting(x-16,y,parEnemy))
or (image_xscale=-1 and key_up and dashing=0 and place_meeting(x-16,y,parEnemy))
or (image_xscale=1 and key_down and dashing=0 and place_meeting(x+16,y,parEnemy))
or (image_xscale=1 and key_up and dashing=0 and place_meeting(x+16,y,parEnemy))
{if ground and canmove=1
throw_command(instance_nearest(x,y,oEnemy1),24*image_xscale,0,0,GrabFrame,30,1)
}

}
}


}
