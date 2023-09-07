enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteJump=1

if anim=10 ///Detect Attack
{
//if x>__view_get( e__VW.XView, 0 ) and x<__view_get( e__VW.XView, 0 )+320
{offScreen=0
if distance_to_object(targetEnemy)<50
anim=choose(11,11)
else {
if distance_to_object(targetEnemy)<100
anim=13 else anim=12}
}
//else
//{offScreen=1 anim=2}
}

if anim=11
{if animFrame=0 {specialcheck4=0} sprite_index=spr_seaweed_attack1
frame_set(0,0,0.1) damage=0.1 MoveType=1
frame_set(1,1,0.1)
frame_set(2,2,0.2)
frame_set(3,3,0.1)
frame_set(4,4,0.2)
frame_set(5,5,0.2)
frame_set(6,6,0.1) if animFrame=clamp(animFrame,2,3) or animFrame=clamp(animFrame,5,6) {sentflying=8*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(7,4,0.1) if animFrame>7-0.2 {if specialcheck4!=2 {animFrame=2 specialcheck4+=1}}
frame_set(8,1,0.1)
frame_set(9,0,0.1)
if animFrame>9.5 canmove=1
}

if anim=12
{sprite_index=spr_seaweed_attack2
frame_set(0,0,0.1) damage=0.15 MoveType=1
frame_set(1,1,0.1)
frame_set(2,2,0.05)
frame_set(3,0,0.1) if animFrame=clamp(animFrame,2,3) {sentflying=6*image_xscale atk=1} else {sentflying=0 atk=0}
if animFrame>3.5 canmove=1
}

if anim=13
{
if animFrame=0 {specialcheck4=0} sprite_index=spr_seaweed_attack3
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=2 
{//projectile_create(x+48*image_xscale,y+1,z-32,32,spr_seaweed_curse,4*image_xscale,mask_small,spr_hitflash,0.1,2,591000,0,0)

bone=instance_create_depth(x+48*image_xscale,y+1,-1,oBossHazard) bone.hitSource=self.id bone.height=30
bone.z=z-32 bone.hspeed=4*image_xscale with bone
{
selfscript = function()
{MoveType=591000 damage=0.1
sprite_index=spr_seaweed_curse image_index+=0.25
atk=1
}

hitscript = function() {instance_destroy()}
}


}
frame_set(2,2,0.25)
frame_set(3,3,0.25)  
frame_set(4,2,0.25) if animFrame>4-0.25 {if specialcheck4!=8 {animFrame=2.25 specialcheck4+=1}}
frame_set(5,1,0.1)
if animFrame>5.5 canmove=1
}