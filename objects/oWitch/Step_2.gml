enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

//if x>__view_get( e__VW.XView, 0 ) and x<__view_get( e__VW.XView, 0 )+320
if anim=10
{offScreen=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<50
anim=choose(21,21)
else
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<100
anim=11 else anim=12
}
}

if anim=11 ///Sumon Bone Fist
{
sprite_index=spr_witch_attack1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5) if animFrame=10 
{
bone=instance_create_depth(targetEnemy.x,targetEnemy.y,-1,oBossHazard)
bone.hitSource=self.id
}
frame_set(10,3,0.25) //if animFrame=11
frame_set(11,4,0.25)
frame_set(12,3,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)
if animFrame>15.75 {canmove=1 atk=0}
}

if anim=12 ///Fire
{
sprite_index=spr_witch_attack4
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25)
if animFrame=11
for(var drawparts = -1; drawparts < 2; drawparts++)
{
//projectile_create(x+28*image_xscale,y+1,z-32,32,spr_spacer_bubbleproj,4*image_xscale,mask_small,spr_hitflash,0.1,591000,2,0,0)
bone=instance_create_depth(x+40*image_xscale,y,-1,oBossHazard)
bone.z=z-70 bone.zSpeed=-4
bone.hitSource=self.id bone.sprite_index=spr_witch_bomb bone.shadow=spr_shadow bone.image_xscale=image_xscale
bone.sentflying=1*((point_distance(x,0,targetX,0)/48)/2)*image_xscale bone.vspeed=1*drawparts
if image_xscale=1 
bone.sentflying=clamp(bone.sentflying,1.5,9999)
else
bone.sentflying=clamp(bone.sentflying,-9999,-1.5)
with bone selfscript = function()
{
if anim=0
{ x+=sentflying//*image_xscale

z+=zSpeed zSpeed+=0.45
if z>0 {anim=1 z=0}
}
if anim=1
{MoveType=0 dizzyAtk=1 damage=0.05 recovery=10 vspeed=0
frame_set(0,1,0.1)
frame_set(1,2,0.1)
frame_set(2,3,0.1)
frame_set(3,4,0.1) if animFrame=4 {sprite_index=spr_witch_bomb2 shadow=-1; oControl.quakeFXTime=10}
frame_set(4,0,0.25) if animFrame=clamp(animFrame,4,4.9) atk=1 else atk=0
frame_set(5,1,0.25)
frame_set(6,2,0.25)
frame_set(7,3,0.25)
frame_set(8,4,0.25) if animFrame>8.8 instance_destroy()

}

}
}
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)
if animFrame>15.75 {canmove=1 atk=0}
}

if anim=13 ///Teleport
{if animFrame=0 sprite_index=spr_witch_attack1
frame_set(0,0,0.1) if animFrame=1
{
var teled=0; repeat(6) {dust_make(x-10,y,z-4*teled,-0.1,0,-0.1-0.1*teled) teled+=1}
teled=0; repeat(6) {dust_make(x+10,y,z-4*teled,0.1,0,-0.1-0.1*teled) teled+=1}

if instance_nearest(x,y,oPlayer).x< __view_get( e__VW.XView, 0 )+160
x=__view_get( e__VW.XView, 0 )+160+32*random_range(1,5)
else
x=__view_get( e__VW.XView, 0 )+32*random_range(1,5)

var teled=0; repeat(6) {dust_make(x-10,y,z-4*teled,-0.1,0,-0.1-0.1*teled) teled+=1}
teled=0; repeat(6) {dust_make(x+10,y,z-4*teled,0.1,0,-0.1-0.1*teled) teled+=1}
sprite_index=spr_witch_attack2
}
frame_set(1,1,0.05)
frame_set(2,0,0.1)

if animFrame>2.75 {canmove=1 atk=0}
}

///Kick Away
if anim=21 ///Bite Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)

canbeGrabbed=0
MoveType=2 damage=0.2
sprite_index=spr_witch_kick
image_index=animFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0}

frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>3.5 canbeGrabbed=1

if animFrame>4.5 {atk=0 canmove=1}
}

if anim=100 ///Intro
{if animFrame=0 sprite_index=spr_witch_intro
frame_set(0,0,0.01)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.1)
frame_set(5,5,0.05)
frame_set(6,6,0.1)
frame_set(7,7,0.01)
frame_set(8,8,0.1)
frame_set(9,9,0.05) if animFrame=10 {
bowl=instance_create_depth(x+16*image_xscale,y+1,-1,oCameoChar) 
bowl.z=z-57 bowl.image_xscale=image_xscale;
with bowl
{
shadow=mask_none
sprite_index=spr_witch_bowl anim=99 image_speed=0

newscript=function()
{z+=6
if z>0 {
flashFX(x,y,z,sprite_index,1,0.5,99,image_xscale,1,c_white,1)
instance_destroy();
}
}

}

}
frame_set(10,10,0.01)
frame_set(11,11,0.1)
frame_set(12,12,0.1)
frame_set(13,13,0.01) if animFrame=14 sprite_index=spr_witch_attack1
frame_set(14,0,0.1)
if animFrame>14.5 {canmove=1 y+=96 recovery=20 recoveryThrow=20}
}