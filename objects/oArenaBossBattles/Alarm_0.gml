/// @description Insert description here
// You can write your code in this editor
if bossesdefeated=20
{

if oPlayer.ground=1 and oPlayer.atk=0 and oPlayer.dead=0 and oPlayer.hurt=0
{ArenaOver=1
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {event_user(9) stageBoss="BOSS BATTLE"}
}
else alarm[0]=2
}
else
{
var enemyset=oBoss1;

if bossesdefeated=1 enemyset=oHarpy
if bossesdefeated=2 enemyset=oFranki
if bossesdefeated=3 enemyset=oTwoHeads
if bossesdefeated=4 enemyset=oGhostBoss
if bossesdefeated=5 enemyset=oPharaoh
if bossesdefeated=6 enemyset=oOniController
if bossesdefeated=7 enemyset=oDuckBoss
if bossesdefeated=8 enemyset=oSeaweed
if bossesdefeated=9 enemyset=oWitch
if bossesdefeated=10 enemyset=oGenie
if bossesdefeated=11 enemyset=oMartianBoss
if bossesdefeated=12 enemyset=oPrince
if bossesdefeated=13 enemyset=oDragonMaiden
if bossesdefeated=14 enemyset=oMirrorLady
if bossesdefeated=15 enemyset=oPlantPrincess
if bossesdefeated=16 enemyset=oScienceScreen
if bossesdefeated=17 enemyset=oScientist
if bossesdefeated=18 enemyset=oDastardly
if bossesdefeated=19 enemyset=oDastardly2

ownboss=instance_create_depth(320+96,192,-1,enemyset)
with ownboss
{
isBoss=0
specialBossState=0

if object_index=oOniController
{mode=4
oniID1=instance_create_depth(x,y-32,-1,oOni) with oniID1 {CanFade=1 specialBossState=0}
oniID2=instance_create_depth(x,y+32,-1,oOni) with oniID2 {specialBossState=0 CanFade=1 enemyID=158 current_pal=7 name="SHOKIJO"}
}

if object_index=oMirrorLady {AnimFrame=4.9 x=160 y=160 image_alpha=0 anim=100 }

if object_index=oDragonMaiden
{x=450 anim=4 canmove=0
handL.x=oControl.camX-2000
}

if object_index=oScienceScreen
{x=160 y=192 z=-40 screenX=160; screenY=160; canmove=0
screenZ=-360; anim=110
}

if object_index=oDastardly2 
{
isBoss=1
specialBossState=1
}

}
oControl.bossID=ownboss
bossesdefeated+=1;
}
