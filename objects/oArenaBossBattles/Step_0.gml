/// @description Insert description here
// You can write your code in this editor
event_inherited()

oControl.minigameroom=1

var _arenaover=0;

if ArenaOver=2
if oControl.p1.hp<=0 
and oControl.p2.hp<=0
and oControl.p3.hp<=0
and oControl.p4.hp<=0
_arenaover=1

//if _arenaover=0
//if instance_exists(oDastardly2)
//if bossesdefeated>=20 and oDastardly2.hp<=0 {_arenaover=1}

//if ArenaOver=2
//if _arenaover {ArenaOver=3 alarm[0]=120};

var _arenascore=0;

if ArenaOver=1
{
ArenaOver=2;
with oControl
{
var totalscore=(p1.PlayerScore+p2.PlayerScore+p3.PlayerScore+p4.PlayerScore)

if oPlayer.hp!=0 totalscore*=(global.Difficulty+1)

if totalscore>=global.HiScoreBossBattlesScore global.HiScoreBossBattlesScore=totalscore;
}
if bossesdefeated-1>=global.HiScoreBossBattles
global.HiScoreBossBattles=bossesdefeated-1;
}

if instance_exists(oOniController) with oOniController
{
if dead=1 instance_destroy();
}

if !instance_exists(oOni)
if instance_exists(oOniClub) with oOniClub
{
if weaponLife>0
weaponLife=1
}

if ownboss=-1
{ownboss=0

if bossesdefeated!=0
if !instance_exists(oBurger)
{
food=instance_create_depth(32+32*instance_number(oBurger),192,-1,oBurger)
with food {ground=0 z=-240}
}

if bossesdefeated=14
{sprite_index=spr_mirrorlady_bossbg
x=0 y=-176
}

if bossesdefeated=0
alarm[0]=120 else alarm[0]=240


}
else
{
if ownboss!=0
{
if !instance_exists(ownboss) {ownboss=-1}
if instance_exists(oDastardly2) if oDastardly2.dead ownboss=-1;
}
}

if bossesdefeated=14
{depth=8888
y=lerp(y,176,0.1)
}

if bossesdefeated=15 and !instance_exists(oMirrorLady)
{
y-=8 with oFlashFX if sprite_index=spr_mirrorlady_front {y-=8;}
}