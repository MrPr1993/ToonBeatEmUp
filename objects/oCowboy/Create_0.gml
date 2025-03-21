enemy_data()

name="BILL"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=64

enemyscript=animsetup_enemy
chardraw=draw_swing

weapon_add("HANDGUN")

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.3
maxhp=0.3

DeathCry=snd_deathcry1

DamageVoice1=snd_enemy3
DamageVoice2=snd_enemy3
DamageVoice3=snd_enemy3

height=74

specialFX=0

idlestyle=1

StandSpr=spr_cowboy_stand
MoveSpr=spr_cowboy_move
RunSpr=spr_cowboy_move

AtkSpr=spr_cowboy_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_cowboy_move
JumpSpr2=spr_cowboy_move
ThrownSpr=spr_cowboy_hit
FlatSpr=spr_cowboy_flat
ShockSpr=spr_cowboy_elec
BurnSpr=spr_cowboy_burned
FrozenSpr=spr_cowboy_frozen
scaredSpr=spr_cowboy_panic hasscaredSpr=1
DizzySpr=spr_cowboy_dizzy hasDizzy=1

hasCut=1 cutSpr1=spr_cowboy_cut1 cutSpr2=spr_cowboy_cut2

enemyID=130


current_pal=0;
my_pal_sprite=spr_ninjapal

spritepos_setup(1,24,2,22)
spritepos_setup(2,24,8,54)

itemID=oGun

specialtaunt=function()
{
sprite_index=spr_cowboy_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}
