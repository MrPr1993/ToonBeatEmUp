enemy_data()

name="FUKUKIJO"
///Kijo - female oni
///
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=31

enemyscript=animsetup_enemy

pointshit=10
points=10

chardraw=draw_swing

weapon_add("ONI CLUB")

DamageVoice1=snd_oni1
DamageVoice2=snd_oni1
DamageVoice3=snd_oni1
DeathCry=snd_oni2

specialBossState=1

rangeAtk=160

OneAttack=2

hp=2
maxhp=2

isHeavy=1

height=120

specialFX=0

StandSpr=spr_oni_stand
MoveSpr=spr_oni_move
RunSpr=spr_oni_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_oni_stand
JumpSpr2=spr_oni_stand
ThrownSpr=spr_oni_hit
FlatSpr=spr_oni_flat
ShockSpr=spr_oni_elec
BurnSpr=spr_oni_burned
FrozenSpr=spr_oni_frozen

spritepos_setup(1,24,4,72)
spritepos_setup(2,0,0,102)
spritepos_setup(2,24,0,102)

current_pal=0;
my_pal_sprite=spr_ninjapal
