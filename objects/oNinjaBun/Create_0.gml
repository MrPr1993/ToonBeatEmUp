enemy_data()

name="USAGI"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=15

enemyscript=animsetup_enemy

DamageVoice1=snd_femenemy6
DamageVoice2=snd_femenemy6
DamageVoice3=snd_femenemy6

DeathCry=snd_femenemy1

EgrabTime=1
EgrabAnim=60
EgrabSentFlying=-6
EgrabZspeed=-4
EgrabzAdd=-24
 sprite_index=spr_ninjabun_hit image_index=11

pointshit=10
points=100

rangeAtk=100

zLock=0

OneAttack=2

hp=0.3
maxhp=0.3

height=80

specialFX=0

StandSpr=spr_ninjabun_stand
MoveSpr=spr_ninjabun_move
HasRunAnim=1
RunSpr=spr_ninjabun_run
	hasFront=1
	FrontSpr=spr_ninjabun_front

AtkSpr=spr_ninjabun_stand
AtkSpr2=spr_ninjabun_stand
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_ninjabun_jump
JumpSpr2=spr_ninjabun_jump
ThrownSpr=spr_ninjabun_hit
FlatSpr=spr_ninjabun_flat
ShockSpr=spr_ninjabun_elec
BurnSpr=spr_ninjabun_burned
FrozenSpr=spr_ninjabun_frozen
hasDizzy=1 DizzySpr=spr_ninjabun_dizzy

hasCut=1
cutSpr1=spr_ninjabun_cut1
cutSpr2=spr_ninjabun_cut2

current_pal=0;
my_pal_sprite=spr_ninjapal
//Usagi, Nousagi, Koni

spritepos_setup(1,24,-1,40)

spritepos_setup(2,0,5,65)
spritepos_setup(2,24,3,65)

enemyID=55