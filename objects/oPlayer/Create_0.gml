canControl=0
controller_setup()

character_setup()

current_pal=global.p1Pal;
my_pal_sprite=spr_playerpal

areaEntry=1 ///For the player to start
x=-64 key_right=1
alarm[0]=90 ///Time to stop

selfatk.isPlayer=1
isEnemy=0
enemyID=0

	isIdle=1

///To show which player is which
playerNO=1
chardraw=draw_player;

showp1=0;


///Player Default Setup - their stats changes from their end step scripts instead
name="VIVA"
defMask=mask_index
DeathCry=snd_deathcryviva
DeathCryOnce=0
HitGround=snd_hitground
DamageVoice1=snd_viva9
DamageVoice2=snd_viva10
DamageVoice3=snd_viva11
ReturnVoice=snd_viva8

character=global.P1Char
HitReactionScript=viva_hitreaction
AtkTime=0

PlayerLife=global.P1Life
PlayerScore=global.P1Score

hp=1

///Characters affiliation tag
isPlayer=1

aff=instance_create(x,y,oAffTag0)
aff.aff=0 aff.affID=id

//PlayerLife=0 ///For testing the continue screen
//hp=0.01 ///For testing the continue screen
pow=0
powcheck=0
powlock=0
powhp = 0.1 ///HP to lose if using the special moves to avoid overusing it
points=0
GrabFrame=24
damage=0.05
damageFall=0

///For purpose for the gameplay if you want to have more moves
hasUppercut=1
commandDown=0
commandUp=0

hasSideAtk=1
commandLeft=0
commandRight=0

hasCharge=1
commandCharge=0
commandChargeFrame=0
commandChargeColor=c_white
commandChargeAlpha=1



///recoveryTime=0
charScript=animsetup_viva

///Set Up Default Animation Sprites - these will changed by the end step script
StandSpr=spr_viva_stand
overwriteStand=0
overwriteMove=0
MoveSpr=spr_viva_move
RunSpr=spr_viva_run
overwriteAttack=0
OneAttack=0///Of only one animation of the attack's used
AtkSpr=spr_viva_attack
overwriteAttack2=0
AtkSpr=spr_viva_attack2
overwriteAttack3=0
AtkSpr=spr_viva_attack3
overwriteAttack4=0
AtkSpr=spr_viva_attack4
overwriteAttack5=0
AtkSpr=spr_viva_attack5
overwriteJumpAtk=0
AtkSpr=spr_viva_attackair
overwriteJumpAtk2=0
AtkSpr=spr_viva_attackair2
overwriteRollBack=0
overwriteHitGetup=0
overwriteHitAir=0
overwriteHitStand=0
overwriteJump=0
AtkSpr=spr_viva_jump1
overwriteJump2=0
JumpSpr2=spr_viva_jump1
overwriteThrown=0
ThrownSpr=spr_viva_hit
GrabbedSpr=spr_viva_grabbed
overwriteFlat=0
FlatSpr=spr_viva_flat
overwriteShock=0
ShockSpr=spr_viva_elec
overwriteBurn=0
BurnSpr=spr_viva_burned
overwriteFrozen=0
FrozenSpr=spr_viva_frozen
DizzySpr=spr_viva_dizzy
overwriteDizzy=0
hasDizzy=1
SuperSpr=spr_viva_super
CarSpr=spr_viva_car
PointSpr=spr_viva_point
PointDialouge1=snd_viva20
PointDialouge2=snd_viva21
WildTakeSpr=spr_viva_wildtake
WildTakeSpr2=spr_viva_wildtake2
ScreenHitSpr=spr_viva_hit
WinSpr=spr_viva_win
WinSnd=snd_viva13
hasCut=1

controlNO=1

global.multiMode=1
if instance_number(oPlayer)=1
{controlNO=1
if global.multiMode>1
with oControl
{
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper
{
if global.multiMode>=2
{p2=instance_create(160,208-16,oPlayer) p2.playerNO=2 p2.controlNO=2 p2.character=1}
if global.multiMode>=3
{p3=instance_create(160,208+16,oPlayer) p3.playerNO=3 p3.controlNO=3 p3.character=2}
if global.multiMode>=4
{p4=instance_create(160,208+24,oPlayer) p4.playerNO=4 p4.controlNO=4 p4.character=3}
}
}
}
//(floorPosX+waistPosX+headPosX)*SpritePos
//(floorPosY+waistPosY+headPosY)*SpritePos


//spawnplayericon()

if instance_number(oPlayer)=99999 ///NOT THIS ONE
with oControl
{
p2=instance_create(160,208-16,oPlayer) p2.playerNO=2 p2.character=1 p2.controlNO=2
p3=instance_create(160,208+16,oPlayer) p3.playerNO=3 p3.character=2 p3.controlNO=3
p4=instance_create(160,208+24,oPlayer) p4.playerNO=4 p4.character=3 p4.controlNO=4
}

