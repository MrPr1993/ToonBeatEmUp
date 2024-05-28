/// @description if you want to check on their data, you can check here
enemy_data()
dizzyPercentageMax=25
enemyscript=animsetup_burglar
chardraw=draw_burglarb;
nameID="None"
name="MR.TEEF"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=20
hp=0.2
maxhp=0.2

enemyID=5

HasRunAnim=1
hasFront=1
hasIdle=1
hasDizzy=1

pointshit=10
points=100

specialFX=0

DamageVoice1=snd_enemy2
DamageVoice2=snd_enemy2
DamageVoice3=snd_enemy2

DeathCry=snd_deathcry1

selfatk.isPlayer=isPlayer

StandSpr=spr_burglarB_stand
	MoveSpr=spr_burglarB_move

	RunSpr=spr_burglarB_run
	OneAttack=0///Of only one animation of the attack's used
	AtkSpr=spr_burglarB_attack
	AtkSpr2=spr_burglarB_attack2
	AtkSpr3=spr_burglarB_attack
	AtkSpr4=spr_burglarB_attack
	AtkSpr5=spr_burglarB_attack
	JumpAtkSpr=spr_burglarB_attack
	JumpAtkSpr2=spr_burglarB_attack
	JumpSpr=spr_burglarB_stand
	ThrownSpr=spr_burglarB_hit
	GrabbedSpr=spr_burglarB_hit
	FlatSpr=spr_burglarB_flat
	ShockSpr=spr_burglarB_elec
	BurnSpr=spr_burglarB_burned
	FrozenSpr=spr_burglarB_frozen
	DizzySpr=spr_burglarB_dizzy hasDizzy=1
	FrontSpr=spr_burglarB_front
	ScreenHitSpr=spr_burglarB_hit
	IdleSpr=spr_burglarB_idle
	cutSpr1=spr_burglarB_cut1
hasCut=1
enemyIdle1=spr_burglarB_idle
enemyIdle2=spr_burglarB_front
bikeSpr=spr_burglarB_bike
	JumpAtkSpr=spr_burglarB_airattack

	enemyIdle3=spr_burglarB_idle3
	enemyIdle3Spd=0.25

spritepos_setup(1,0,-13,20)
spritepos_setup(1,1,-5,23)
spritepos_setup(1,2,-5,23)
spritepos_setup(1,3,-4,25)
spritepos_setup(1,4,4,39)
spritepos_setup(1,5,-9,39)
spritepos_setup(1,6,-5,29)
spritepos_setup(1,7,5,6)
spritepos_setup(1,8,2,2)
spritepos_setup(1,9,-10,3)
spritepos_setup(1,10,-8,24)
spritepos_setup(1,11,-8,12)
spritepos_setup(1,12,0,8)
spritepos_setup(1,13,1,24)
spritepos_setup(1,14,-13,19)
spritepos_setup(1,15,13,19)
spritepos_setup(1,16,4,12)
spritepos_setup(1,17,0,6)
spritepos_setup(1,18,-10,2)
spritepos_setup(1,19,-10,2)
spritepos_setup(1,20,-10,16)
spritepos_setup(1,21,-5,1)
spritepos_setup(1,22,-5,4)
spritepos_setup(1,23,-5,4)
spritepos_setup(1,24,-5,25)

spritepos_setup(2,0,6,40)
spritepos_setup(2,1,-12,58)
spritepos_setup(2,2,-12,53)
spritepos_setup(2,3,-12,53)
spritepos_setup(2,4,-28,34)
spritepos_setup(2,5,-18,8)
spritepos_setup(2,6,0,2)
spritepos_setup(2,7,-20,11)
spritepos_setup(2,8,-20,7)
spritepos_setup(2,9,-11,28)
spritepos_setup(2,10,6,49)
spritepos_setup(2,11,-8,24)
spritepos_setup(2,12,-13,10)
spritepos_setup(2,13,1,10)
spritepos_setup(2,14,6,18)
spritepos_setup(2,15,6,43)
spritepos_setup(2,16,16,42)
spritepos_setup(2,17,20,33)
spritepos_setup(2,18,20,6)
spritepos_setup(2,19,20,1)
spritepos_setup(2,20,20,16)
spritepos_setup(2,21,20,3)
spritepos_setup(2,22,8,31)
spritepos_setup(2,23,3,49)
spritepos_setup(2,24,-4,56)

specialcheck0=0

//isIdle=1
//canAttack=6

specialtaunt=function()
{
sprite_index=spr_burglarB_idle4
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>2.9 AnimFrame=0
}



