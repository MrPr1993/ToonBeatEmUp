enemy_data()

name="MS.KI"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=44

idlestyle=1

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=140

OneAttack=2

hp=0.35
maxhp=0.35

height=90

specialFX=0

DamageVoice1=snd_femenemy7
DamageVoice2=snd_femenemy7
DamageVoice3=snd_femenemy7
DeathCry=snd_femenemy2

StandSpr=spr_monk_stand
MoveSpr=spr_monk_move
RunSpr=spr_monk_move
	hasFront=1
	FrontSpr=spr_monk_front

AtkSpr=spr_monk_attack
AtkSpr2=spr_monk_attack
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_monk_stand
JumpAtkSpr2=spr_monk_stand

JumpSpr=spr_monk_jump
JumpSpr2=spr_monk_jump
ThrownSpr=spr_monk_hit
FlatSpr=spr_monk_flat
ShockSpr=spr_monk_elec
BurnSpr=spr_monk_burned
FrozenSpr=spr_monk_frozen
DizzySpr=spr_monk_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_monk_panic

hasCut=1
cutSpr1=spr_monk_cut1
cutSpr2=spr_monk_cut2

current_pal=2;
my_pal_sprite=spr_ninjapal

 enemyID=34

spritepos_setup(1,24,2,53)
spritepos_setup(2,24,0,71)

specialtaunt=function()
{
sprite_index=spr_monk_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}