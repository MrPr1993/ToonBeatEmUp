enemy_data()
name="ANNAMARI"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=17

enemyscript=animsetup_enemy

	DeathCry=snd_ant1//snd_deathcry2
	HitGround=snd_hitground
	DamageVoice1=snd_ant2
	DamageVoice2=snd_ant2
	DamageVoice3=snd_ant2

chardraw=ghost_effect
ghostAlpha=1
ghostSet=100

atkAir=1
noHitFall=1

walkSpeed=0.5
rangeY=4
rangeAtk=320
RunMoveSpeedDecrease=0.2

hp=2
maxhp=2

height=100

hover=1
hoverZ=0

isHeavy=1


//weaponanim(weaponspr,weaponIndex,10,-90,0*image_xscale,weaponcolor)

hasHead=1
GheadX=10
GheadY=-90
headSpr=spr_ghost_head
headInd=0
headAngle=0
headFront=1

headRespawn=0

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

pointshit=10
points=100

rangeAtk=100

OneAttack=2

height=100

isBoss=1

specialFX=0

StandSpr=spr_ghost_stand
MoveSpr=spr_ghost_move
RunSpr=spr_ghost_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_ghost_stand
JumpSpr2=spr_ghost_stand
ThrownSpr=spr_ghost_hit
FlatSpr=spr_ghost_flat
ShockSpr=spr_ghost_elec
BurnSpr=spr_ghost_burned
FrozenSpr=spr_ghost_frozen
DizzySpr=spr_ghost_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_ghost_panic

enemyID=155

spritepos_setup(1,24,-6,63)
spritepos_setup(2,0,-6,94)
spritepos_setup(2,24,-6,94)