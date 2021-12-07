/// @description Respawn
with oControl
{
time=99
alarm[0]=120
}

//spawnplayericon()
player_anim()
PlaySound(ReturnVoice)

alarm[4]=2

cutSpawn=0
sentflying=0
fallHole=0
DeathCryOnce=0
PlayerLife-=1
pow=0
disappearTime=90
visible=1
hp=1 dead=0 hurt=0 canmove=1
x=__view_get( e__VW.XView, 0 )+oControl.P1SpawnX
y=__view_get( e__VW.YView, 0 )+oControl.P1SpawnY
z=0
ground=1
recovery=180

if carMode=0
{
anim=2}
else
{
x=__view_get( e__VW.XView, 0 )-64 y=__view_get( e__VW.YView, 0 )+200
areaEntry=1 canmove=0 zSpeed=0 ground=0 sentflying=0 key_jump=0
carMode=1
anim=200 canControl=0
key_right=1
alarm[0]=30
}

dizzyAtk=0
dizzyHit=0
event_user(10)

if instance_exists(oEnemy1)
{
with oEnemy1 if hurt=0 and act=1
{
canmove=0
hurt=1
ground=0
zSpeed=-8
sentflying=-2
image_index=3 sprite_index=ThrownSpr
animFrame=3
anim=5
}}

