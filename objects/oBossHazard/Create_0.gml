/// @description Insert description here
// You can write your code in this editor
animFrame=0
anim=0
atk=0
height=96
z=0
PlayerScore=0
atk=0
PlayerThrowAtk=0
spamatk=0
ThrowWeightDamage=0
HitQuake=0
MoveType=0
HitType=0
HitForce=0
HitForceZ=0
HitSound=snd_hit
hitSource=-1
damage=0
isThrow=0
isPlayer=0
NoKnock=0
Gatk=0
type=0
name="FIST"
enemyPortraitSpr=spr_miscface
enemyPortraitIndex=0
//0 - Normal //1 - Strong Flying //2 - Throw // //
//
//
//

hitID=-1
height=64
z=0
SourceX=0
roll=0
comboHit=0
recovery=0
targetHeight=0
Throw=0
flashX=0
flashY=0
flashZ=0
comboBreak=0
canSuper=0

////This wil be use to indicate who the player get hit by if the selfatk comes from an enemy.
selfsource=-1
hitCheck=0
dizzyAtk=0
isCut=0 ///For when they get killed, if this triggers, the opponent, if it has the animation, will be cut in half.
spriteFX=spr_hitflash
indexFX=0
isDepth=1
animEnd=0
speedFX=1
spriteTime=10
xScaleFX=1
yScaleFX=1
blendFX=c_white
alphaFX=1
showhp=1
hp=1
maxhp=hp
hpLerp=hp
hplayer=0
current_pal=0;
my_pal_sprite=spr_enemypal
HitReactionScript=-1

///Override stuff.
override_surface=noone;
override_pal_index=1;

ground=0;
zSpeed=0;
sentflying=0;

shadow=-1;//spr_shadow

specialtimes[9]=0

selfscript = function()
{MoveType=1 damage=0.1
depth=-y
frame_set(0,0,0.2)
frame_set(1,1,0.2) if animFrame=clamp(animFrame,2,2.9) atk=1 else atk=0
if animFrame=2 
{oControl.quakeFXTime=10 PlaySound(snd_quakeground)
dust_make(x-16,y+1,z,-2,0,0) dust_make(x+16,y+1,z,2,0,0)
dust_make(x,y+2,z,0,1,0)
}
frame_set(2,2,0.25) 
frame_set(3,3,0.05)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
if animFrame>6.7 {dust_make(x,y,z,0,0,0) instance_destroy()}
}

hitscript = function() {}