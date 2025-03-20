enemy_data()

name="BEEATRICE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=63

DamageVoice1=snd_femenemy8
DamageVoice2=snd_femenemy8
DamageVoice3=snd_femenemy8
DeathCry=snd_femenemy3

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=180

OneAttack=2

idlestyle=1

hp=0.4
maxhp=0.4

height=95

specialFX=0

enemyID=117

spritepos_setup(1,24,5,51)
spritepos_setup(2,24,25,77)

StandSpr=spr_beelady_stand
MoveSpr=spr_beelady_move
RunSpr=spr_beelady_move



AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_burglar_stand
JumpSpr2=spr_burglar_stand
ThrownSpr=spr_beelady_hit
FlatSpr=spr_beelady_flat
ShockSpr=spr_beelady_elec
BurnSpr=spr_beelady_burned
FrozenSpr=spr_beelady_frozen

hasCut=1
cutSpr1=spr_beelady_cut1
cutSpr2=spr_beelady_cut2

hasscaredSpr=1 scaredSpr=spr_beelady_panic

	hasFront=1
	FrontSpr=spr_beelady_front
hasDizzy=1 DizzySpr=spr_beelady_dizzy

my_pal_sprite=spr_dancerpal
current_pal=0

specialtaunt=function()
{
sprite_index=spr_beelady_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}
