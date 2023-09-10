enemy_data()

dizzyPercentageMax=25

name="MS.SWING"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=7
chardraw=draw_swing;

canTrack=0
weaponcanRecharge=1
weaponRecharge=0
weaponRechargeT="DYNAMITE"

DamageVoice1=snd_femenemy7
DamageVoice2=snd_femenemy7
DamageVoice3=snd_femenemy7

pointshit=10
points=100
bombs=0

hp=0.2
maxhp=0.2

DeathCry=snd_femenemy2

weapontype=0 

weapon_add("HAMMER") canTrack=1 weaponcanRecharge=0
//var randH; randH=round(random(3)) if randH=0 {weapon_add("HAMMER") canTrack=1 weaponcanRecharge=0} if randH=1 {weapon_add("DYNAMITE") canTrack=0 weaponcanRecharge=1 weaponRechargeT="DYNAMITE"} if randH=2 {weapon_add("KNIFE") canTrack=0 weaponcanRecharge=1 weaponRechargeT="KNIFE"} if randH=3 {weapon_add("WHIP") canTrack=0 weaponcanRecharge=1 weaponRechargeT="KNIFE"}
//weapon_add("PIE") canTrack=0 weaponcanRecharge=1 weaponRechargeT="KNIFE"

enemyscript=animsetup_swing

if oControl.betatest=1
if keyboard_check(vk_control) weapon_add("WHIP")

rangeAtk=90

OneAttack=2

hp=0.4
maxhp=0.4

height=70

specialFX=0

StandSpr=spr_swing_stand
MoveSpr=spr_swing_move
RunSpr=spr_swing_move
	hasFront=1
	FrontSpr=spr_swing_front

overwriteAttack=1
AtkSpr=spr_swing_attack
AtkSpr2=spr_swing_attack2
AtkSpr3=spr_swing_knife
AtkSpr4=spr_swing_attack
AtkSpr5=spr_swing_attack
JumpAtkSpr=spr_swing_attack
JumpAtkSpr2=spr_swing_attack

JumpSpr=spr_swing_stand
JumpSpr2=spr_swing_stand
ThrownSpr=spr_swing_hit
FlatSpr=spr_swing_flat
ShockSpr=spr_swing_elec
BurnSpr=spr_swing_burned
FrozenSpr=spr_swing_frozen
DizzySpr=spr_swing_dizzy hasDizzy=1

hasCut=1
cutSpr1=spr_swing_cut1
cutSpr2=spr_swing_cut2

	enemyIdle2=spr_swing_move
	enemyIdle3=spr_swing_idle3
	enemyIdle3Spd=0.1

spritepos_setup(1,24,-3,55)

spritepos_setup(2,6,-3,3)
spritepos_setup(2,24,-3,76)

canTaunt=0

current_pal=2;


weaponColPosX=48
weaponColPosY=0
weaponColPosZ=0
weaponColScaleX=2
weaponColScaleY=1
weaponColScaleZ=64
weaponDamage=0.2
weapontargetHeight=2

