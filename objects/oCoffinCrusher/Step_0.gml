if act=1
{
depth=-y

z+=spdZ

if z>1 and ground=0
{atk=1 alarm[1]=2 

if x=clamp(x,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+320)
{
PlaySoundNoStack(snd_hitground) PlaySound(snd_explosion)
with oControl quakeFXTime=10
}

ground=1
spdZ=0 
z=0
}
}



