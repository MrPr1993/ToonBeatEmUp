/// @description Insert description here
// You can write your code in this editor
depth=-y
atk=0
if anim=4
{if AnimFrame=0 {AnimFrame=1 PlaySound(snd_duck7)}
faked=instance_create_depth(x,y,-1,oBossHazard)
faked.playerNO=playerNO
faked.image_xscale=image_xscale faked.hitSource=oDuckBoss
faked.MoveType=45 faked.HitType=45
with faked
selfscript=function()
{
if instance_exists(oDuckBoss) {if oDuckBoss.hp=0 instance_destroy()}
MoveType=45 damage=0.1 
HitType=45
sprite_index=spr_duck_inflate
image_index+=0.25 mask_index=spr_mediumshadow
if image_index=4
{PlaySound(snd_explosion2) oControl.quakeFXTime=10
flashFX(x,y+1,z-64,spr_confetti,0,0.25,30,1,1,c_white,1)
}
if image_index=clamp(image_index,4,5) atk=1 else atk=0
if image_index>=7.5 instance_destroy()
}
instance_destroy()
}
else
if instance_exists(oDuckBoss)
{
if oDuckBoss.anim!=6500 {flashFX(x,y+1,z-64,spr_confetti,0,0.25,30,1,1,c_white,1) instance_destroy()}
}
else instance_destroy()