/// @description Insert description here
// You can write your code in this editor
{
var enemyset=oBoss1;

if bossesdefeated=1 enemyset=oFranki
if bossesdefeated=2 enemyset=oHarpy
if bossesdefeated=3 enemyset=oTwoHeads
if bossesdefeated=4 enemyset=oPharaoh
if bossesdefeated=5 enemyset=oGhostBoss
if bossesdefeated=6 enemyset=oOniController
if bossesdefeated=7 enemyset=oDuckBoss
if bossesdefeated=8 enemyset=oWitch
if bossesdefeated=9 enemyset=oSeaweed
if bossesdefeated=10 enemyset=oPrince
if bossesdefeated=11 enemyset=oMartianBoss
if bossesdefeated=12 enemyset=oGenie
if bossesdefeated=13 enemyset=oPlantPrincess
if bossesdefeated=14 enemyset=oMirrorLady
if bossesdefeated=15 enemyset=oDragonMaiden
if bossesdefeated=16 enemyset=oScienceScreen
if bossesdefeated=17 enemyset=oScientist
if bossesdefeated=18 enemyset=oDastardly
if bossesdefeated=19 enemyset=oDastardly2

if bossesdefeated>=20 
{
with oControl
{
var totalscore=(p1.PlayerScore+p2.PlayerScore+p3.PlayerScore+p4.PlayerScore)

if oPlayer.hp!=0 totalscore*=(global.Difficulty+1)

if totalscore>=global.HiScoreBossBattlesScore global.HiScoreBossBattlesScore=totalscore;
}
if bossesdefeated-1>=global.HiScoreBossBattles
global.HiScoreBossBattles=bossesdefeated-1;

if oControl.allPlayersMove
{
oPlayer.areaEntry=1

with oPlayer
{key_right=0 doubledash=0 dashing=0
}
with oControl {event_user(9) stageBoss="BOSS BATTLE"}
}
else alarm[0]=2
exit;
}
oControl.bossID=-1
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

if object_index=oMirrorLady {PlaySound(snd_mirrorfx1) AnimFrame=5.6 x=160 y=160 image_alpha=0.01 anim=100 }

if object_index=oDragonMaiden
{canmove=0 anim=100 lockPos=0
handL.x=oControl.camX-2000 handL.image_xscale=1
body.z=1500 tail.z=1500 necc.z=1500 z=0 AnimFrame=10
anim=100 AnimFrame=10 isDepth=1 shadowSpr=spr_dragonmaiden_shadow x=oControl.camX+320+128 sprite_index=spr_dragonmaiden_head image_xscale=-1
}

if object_index=oScienceScreen
{x=160 y=192 z=-200 screenX=160; screenY=160; canmove=0 
screenZ=-360; anim=110
}

if object_index=oDastardly2 
{
isBoss=1
specialBossState=1
}
oControl.bossID=id;
}

bossesdefeated+=1;
}
