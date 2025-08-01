/// @description Respawn
if ContinueMode=0
{playerIcon=spr_p1
with oControl
{
time=99
alarm[0]=120
}


if global.NoCheat
{
if global.Cheat[6] 
and global.NoCheat
{
if controlNO=1 global.P1Char=choose(0,1,2,3)
if controlNO=2 global.P2Char=choose(0,1,2,3)
if controlNO=3 global.P3Char=choose(0,1,2,3)
if controlNO=4 global.P4Char=choose(0,1,2,3)
}
if global.Cheat[7]=999999
and global.NoCheat
{
var randomweapon=choose("HAMMER","TASER","SCIMITAR","PIPE","SHOVEL","PICKAXE","KNIFE","ONI CLUB","SPEAR","TRIDENT","TOMMYGUN","HARPOONGUN","DYNAMITE","KNIFE","PIE","WHIP")
weapon_add(randomweapon)
}
}

featno[0]=0
featno[1]=0
featno[2]=0
featno[3]=0
featno[4]=0

if controlNO=1
current_pal=global.p1Pal;
if controlNO=2
current_pal=global.p2Pal;
if controlNO=3
current_pal=global.p3Pal;
if controlNO=4
current_pal=global.p4Pal;

//spawnplayericon()
player_anim()



alarm[4]=2

hspeed=0

areaEntry=0
cutSpawn=0
sentflying=0
fallHole=0

PlayerLife-=1-1*global.Cheat[14]*global.NoCheat
pow=0
hp=maxhp


AnimFrame=0
//disappearTime=90 canmove=1 PlaySound(ReturnVoice)
if playerNO=1
{
x=__view_get( e__VW.XView, 0 )+oControl.P1SpawnX
y=__view_get( e__VW.YView, 0 )+oControl.P1SpawnY
}
if playerNO=2
{
x=__view_get( e__VW.XView, 0 )+oControl.P2SpawnX
y=__view_get( e__VW.YView, 0 )+oControl.P2SpawnY
}
if playerNO=3
{
x=__view_get( e__VW.XView, 0 )+oControl.P3SpawnX
y=__view_get( e__VW.YView, 0 )+oControl.P3SpawnY
}
if playerNO=4
{
x=__view_get( e__VW.XView, 0 )+oControl.P4SpawnX
y=__view_get( e__VW.YView, 0 )+oControl.P4SpawnY
}
z=0
ground=1
recovery=180

if carMode=0
{visible=0
anim=255 //2
}
else
{
x=__view_get( e__VW.XView, 0 )-64 y=__view_get( e__VW.YView, 0 )+200
areaEntry=1 canmove=0 zSpeed=0 ground=0 sentflying=0 key_jump=0
carMode=1 visible=1 DeathCryOnce=0
hp=1 dead=0 hurt=0 canmove=0
PlaySound(ReturnVoice)
anim=200 canControl=0
key_right=1
alarm[0]=30
//alarm[4]=2
//if visible=0 visible=1 else visible=0
//disappearTime-=1
}

dizzyAtk=0
dizzyHit=0
event_user(10)



}