enemy_data()

dizzyPercentageMax=25

name="MS.SLAMS"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=19

enemyscript=animsetup_enemy



HitGround=snd_hitgroundheavy
isHeavy=1
throwHeavy=1

defMask=spr_shadow2

DamageVoice1=snd_femenemy8
DamageVoice2=snd_femenemy8
DamageVoice3=snd_femenemy8
DeathCry=snd_femenemy3

pointshit=10
points=100

rangeAtk=300

OneAttack=2

hp=0.8
maxhp=0.8

height=70

specialFX=0

StandSpr=spr_wrestler_stand
MoveSpr=spr_wrestler_move
RunSpr=spr_wrestler_move
	hasFront=1
	FrontSpr=spr_wrestler_front

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_wrestler_stand
JumpSpr2=spr_wrestler_stand
ThrownSpr=spr_wrestler_hit
FlatSpr=spr_wrestler_flat
ShockSpr=spr_wrestler_elec
BurnSpr=spr_wrestler_burned
FrozenSpr=spr_wrestler_frozen
cutSpr1=spr_wrestler_cut1
cutSpr2=spr_wrestler_cut2
hasCut=1

DizzySpr=spr_wrestler_dizzy hasDizzy=1

	enemyIdle2=spr_wrestler_grab
	enemyIdle3=spr_wrestler_idle3
	enemyIdle3Spd=0.1

current_pal=0;
my_pal_sprite=spr_ninjapal
//Usagi, Nousagi, Koni

spritepos_setup(1,24,6,20)

spritepos_setup(2,0,29,35)
spritepos_setup(2,24,28,36)

enemyscript=animsetup_zombie