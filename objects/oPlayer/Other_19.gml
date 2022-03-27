/// @description Respawn
with oControl
{
time=99
alarm[0]=120
}

current_pal=global.p1Pal;

//spawnplayericon()
player_anim()

alarm[4]=2

hspeed=0

cutSpawn=0
sentflying=0
fallHole=0

PlayerLife-=1
pow=0
hp=1


animFrame=0
//disappearTime=90 canmove=1 PlaySound(ReturnVoice)
x=__view_get( e__VW.XView, 0 )+oControl.P1SpawnX
y=__view_get( e__VW.YView, 0 )+oControl.P1SpawnY
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
hp=1 dead=0 hurt=0 canmove=1
PlaySound(ReturnVoice)
anim=200 canControl=0
key_right=1
alarm[0]=30
}

dizzyAtk=0
dizzyHit=0
event_user(10)



