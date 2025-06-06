/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if fakeduckbuffer!=0 fakeduckbuffer-=1;

if runCharge!=0 runCharge-=1

if anim=10
{offScreen=0 AnimFrame=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<70
anim=choose(11)
else
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<100
anim=choose(12,13,14,6501,6502,6503,6504,6505) else anim=choose(13,14,6501,6502,6503,6504,6505,6506)

if anim=6501 if fakeduckbuffer=0
{fakeduckbuffer=360
anim=choose(13,14) {}
} else anim=choose(13,14)

if anim=12 or anim=13 if runCharge!=0 {anim=14 runCharge=choose(320,340,360)}
}
}

if anim=11
{damage=0.2 selfatk.isCut=1 selfatk.spriteFX=spr_blood MoveType=1
sprite_index=spr_painter_attack1
frame_set(0,0,0.25)
frame_set(1,1,0.5)
frame_set(2,2,0.25) if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
frame_set(3,3,0.25)
frame_set(4,4,0.25)
if AnimFrame>4.70 {canmove=1 anim=0}
}

///Big Punch
if anim=12
{damage=0.25 MoveType=1
sprite_index=spr_painter_attack2
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.5) if AnimFrame=3 oControl.quakeFXTime=10
frame_set(3,3,0.05) if AnimFrame=clamp(AnimFrame,2,3) {atk=1 sentflying=6*image_xscale} else {atk=0 sentflying=0}
frame_set(4,4,0.25)
if AnimFrame>4.70 {canmove=1 anim=0}
}

///Saw Knee
if anim=13
{damage=0.2 selfatk.isCut=1 selfatk.spriteFX=spr_blood MoveType=1
sprite_index=spr_painter_attack3
if AnimFrame=0 {specialtimes[0]=0}
specialtimes[0]+=0.25
if specialtimes[0]=2 specialtimes[0]=0
frame_set(0,0,0.25)
frame_set(1,1,0.25) if AnimFrame=2 {ground=0 z-=4 spdZ=-8 sentflying=8*image_xscale}
frame_set(2,2+specialtimes[0],0.05) if !ground {AnimFrame=2.5} else if AnimFrame=2.5
{AnimFrame=3 sentflying=0}
if AnimFrame=clamp(AnimFrame,2,2.99) atk=1 else atk=0
frame_set(3,1,0.05)
frame_set(4,0,0.25)
if AnimFrame>4.70 {canmove=1 anim=0}
}

///Bloody Slash
if anim=14
{damage=0.3 MoveType=1
sprite_index=spr_painter_attack4
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.5) 
frame_set(3,3,0.25)
frame_set(4,4,0.05)
frame_set(5,1,0.25)
frame_set(6,5,0.25)
if AnimFrame>6.70 {canmove=1 anim=0}
}

///Explode
if anim=6501
{damage=0.4 MoveType=1
sprite_index=spr_painter_attack5
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.25)
frame_set(3,3,0.25) 
frame_set(4,4,0.25)
frame_set(5,5,0.25) 
frame_set(6,6,0.05)
frame_set(7,5,0.25) 
frame_set(8,7,0.25)

if AnimFrame>8.70 {canmove=1 anim=0}
}

///Teleport
if anim=6502
{damage=0.25
sprite_index=spr_painter_attack6
frame_set(0,0,0.5)
frame_set(1,1,0.5) 
frame_set(2,2,0.5)
frame_set(3,3,0.5) 
frame_set(4,4,0.5)
frame_set(5,5,0.5) 
frame_set(6,6,0.5)
frame_set(7,7,0.5) if AnimFrame=8 {x=targetEnemy.x+48*image_xscale y=targetEnemy.y}
frame_set(8,0,0.1)
frame_set(9,6,0.5) if AnimFrame=9 {if x>targetEnemy.x image_xscale=-1 else image_xscale=1}
frame_set(10,5,0.5)
frame_set(11,4,0.5)
frame_set(12,3,0.5) if AnimFrame>2 and image_index=0 sprite_index=mask_none
frame_set(13,2,0.5) if AnimFrame=13 {if x=clamp(x,targetEnemy.x-16,targetEnemy.x+16) and y=clamp(y,targetEnemy.y-5,targetEnemy.y+5)
	{AnimFrame=1.75 anim=6503}
	}
frame_set(14,1,0.5)

if AnimFrame>14.70 {canmove=1 anim=0}
}

///Cutting Beam
if anim=6503
{damage=0.25 MoveType=1 selfatk.isCut=1 selfatk.spriteFX=spr_blood
sprite_index=spr_painter_attack7
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.5) if AnimFrame=3 oControl.quakeFXTime=10
frame_set(3,3,0.25) 
frame_set(4,4,0.25) if AnimFrame=clamp(AnimFrame,3,3.99) atk=1 else atk=0
frame_set(5,5,0.05)
if AnimFrame>5.70 {canmove=1 anim=0}
}

///Head Cut
if anim=6504
{damage=0.25
sprite_index=spr_painter_attack8
frame_set(0,0,0.1)
frame_set(1,1,0.1) 
frame_set(2,2,0.25) if AnimFrame=3 
{
oControl.quakeFXTime=10
spit=instance_create_depth(x+4*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=2*image_xscale spit.z=-55 spit.image_xscale=image_xscale
spit.sprite_index=spr_painter_head spit.bounce=3
with spit
{boucespd=-12 MoveType=1 bounce=3 damage=0.2 animLock=0
hitflash=spr_inkex2
endflash=spr_inkex3
}

}
frame_set(3,3,0.25) 
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
if AnimFrame>7.70 {canmove=1 anim=0}
}

///Decap Grab
if anim=6505
{damage=0.25
sprite_index=spr_painter_attack9
frame_set(0,0,0.25)
frame_set(1,1,0.1) 
frame_set(2,2,0.25) if AnimFrame=3 oControl.quakeFXTime=10
frame_set(3,3,0.25) 
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
if AnimFrame>7.70 {canmove=1 anim=0}
}

///Ink Pool
if anim=6506
{damage=0.25
sprite_index=spr_painter_attack10
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.05) 
frame_set(3,3,0.25) if AnimFrame=4 oControl.quakeFXTime=10
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.05)
if AnimFrame>8.70 {canmove=1 anim=0}
}

///Intro
if anim=100
{
if AnimFrame=0 {sprite_index=spr_painter_intro specialtimes[0]=0}	

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame=3 specialanim=2
frame_set(3,3,0.05)
frame_set(4,4,0.25)
frame_set(5,5,0.01)
frame_set(6,6,0.25)
frame_set(7,7,0.25) if AnimFrame=8 {image_xscale=-1 sprite_index=spr_painter_attack9}
frame_set(8,0,0.01)
if AnimFrame>8.70 {canmove=1 anim=0}
}

