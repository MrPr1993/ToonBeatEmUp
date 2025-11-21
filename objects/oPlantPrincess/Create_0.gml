enemy_data()

name="SYNTHESA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=33

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=360
isBossCheck=1
OneAttack=2

isHeavy=1

idlestyle=1

hp=2
maxhp=2

height=120

specialFX=0

DamageVoice1=snd_princess20
DamageVoice2=snd_princess20
DamageVoice3=snd_princess20

DeathCry=snd_princess21

StandSpr=spr_plantprincess_stand
MoveSpr=spr_plantprincess_move
RunSpr=spr_plantprincess_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_plantprincess_stand
JumpSpr2=spr_plantprincess_stand
ThrownSpr=spr_plantprincess_hit
FlatSpr=spr_plantprincess_flat
ShockSpr=spr_plantprincess_elec
BurnSpr=spr_plantprincess_burned
FrozenSpr=spr_plantprincess_frozen
DizzySpr = spr_plantprincess_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_plantprincess_panic

current_pal=0;
my_pal_sprite=spr_zombiepal

isBoss=1
specialBossState=1

spritepos_setup(1,24,1,53)
spritepos_setup(2,24,8,92)

enemyID=173

shadowSpr=spr_midshadow2

if oControl.betatest if keyboard_check(vk_control) {canmove=0 anim=100}

specialtaunt=function()
{
sprite_index=spr_plantprincess_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>=2.9 AnimFrame=0
}