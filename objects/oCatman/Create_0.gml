enemy_data()

name="MAU"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=12

enemyscript=animsetup_enemy

DamageVoice1=snd_cat2
DamageVoice2=snd_cat2
DamageVoice3=snd_cat2

DeathCry=snd_cat1

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.2
maxhp=0.2

height=70

specialFX=0

StandSpr=spr_catman_stand
MoveSpr=spr_catman_move
RunSpr=spr_catman_move
	hasFront=1
	FrontSpr=spr_catman_front

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack


JumpSpr=spr_catman_stand
JumpSpr2=spr_catman_stand
ThrownSpr=spr_catman_hit
FlatSpr=spr_catman_flat
ShockSpr=spr_catman_elec
BurnSpr=spr_catman_burned
FrozenSpr=spr_catman_frozen
DizzySpr=spr_catman_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_catman_panic

hasCut=1
cutSpr1=spr_catman_cut1
cutSpr2=spr_catman_cut2

spritepos_setup(1,24,6,22)

spritepos_setup(2,0,26,37)
spritepos_setup(2,24,26,37)

enemyID=51

bombRecharge=0

my_pal_sprite=spr_mummypal
current_pal=0
