enemy_data()
specialFX=0



name="MIRROR"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=5

DeathCry=snd_deathcryviva
HitGround=snd_hitground

idlestyle=2

hp=1
maxhp=1

height=88

hasCut=1

if oControl.charCheck=3 oControl.charCheck=0 else oControl.charCheck+=1

charchoose=oControl.charCheck

name="VIVA?"
enemyPortraitSpr=spr_playerface
enemyPortraitIndex=0

DeathCry=snd_viva2

DamageVoice1=snd_viva9
DamageVoice2=snd_viva10
DamageVoice3=snd_viva11

StandSpr=spr_viva_stand
MoveSpr=spr_viva_move
RunSpr=spr_viva_move
AtkSpr=spr_viva_attack
AtkSpr2=spr_viva_attack2
AtkSpr3=spr_wolfita_attack
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack
JumpSpr=spr_viva_stand
JumpSpr2=spr_viva_stand
ThrownSpr=spr_viva_hit
FlatSpr=spr_viva_flat
ShockSpr=spr_viva_elec
BurnSpr=spr_viva_burned
FrozenSpr=spr_viva_frozen
DizzySpr=spr_viva_dizzy
cutSpr1=spr_viva_cut1
cutSpr2=spr_viva_cut2

mirrordiva_check()

hasDizzy=1
overwriteDizzy=0


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

//isIdle=1
//canAttack=6

my_pal_sprite=spr_playerpal


