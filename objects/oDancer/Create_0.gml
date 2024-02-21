enemy_data()

name="DANZA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=50

enemyscript=animsetup_enemy
chardraw=draw_swing;

pointshit=10
points=100

rangeAtk=150

idlestyle=1

OneAttack=2

hp=0.5
maxhp=0.5

DamageVoice1=snd_femenemy7
DamageVoice2=snd_femenemy7
DamageVoice3=snd_femenemy7
DeathCry=snd_femenemy2

height=84

specialFX=0

StandSpr=spr_dancer_stand
MoveSpr=spr_dancer_move
RunSpr=spr_dancer_move
	hasFront=1
	FrontSpr=spr_dancer_front

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_dancer_stand
JumpSpr2=spr_dancer_stand
ThrownSpr=spr_dancer_hit
FlatSpr=spr_dancer_flat
ShockSpr=spr_dancer_elec
BurnSpr=spr_dancer_burned
FrozenSpr=spr_dancer_frozen
DizzySpr=spr_dancer_dizzy

current_pal=0;
my_pal_sprite=spr_dancerpal

weapon_add("SCIMITAR")

spritepos_setup(1,24,1,50) ///Waist, Frame 24
spritepos_setup(2,24,1,74) ///Head, Frame 24