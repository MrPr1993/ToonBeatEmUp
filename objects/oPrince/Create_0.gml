enemy_data()

name="PRINCE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=30

enemyscript=animsetup_enemy

DamageVoice1=snd_prince19
DamageVoice2=snd_prince19
DamageVoice3=snd_prince19

DeathCry=snd_prince20

pointshit=10
points=100

idlestyle=1

rangeAtk=320

OneAttack=2

hp=2
maxhp=2

isHeavy=1

height=110

specialFX=0

StandSpr=spr_prince_stand
MoveSpr=spr_prince_move
RunSpr=spr_prince_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_prince_stand
JumpSpr2=spr_prince_stand
ThrownSpr=spr_prince_hit
FlatSpr=spr_prince_flat
ShockSpr=spr_prince_elec
BurnSpr=spr_prince_burned
FrozenSpr=spr_prince_frozen


current_pal=0;
my_pal_sprite=spr_zombiepal

if oControl.betatest if keyboard_check(vk_control) {canmove=0 anim=100}