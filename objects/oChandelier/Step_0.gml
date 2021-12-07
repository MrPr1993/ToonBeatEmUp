if act=1
{
depth=-y

z+=spdZ

if z>1 and ground=0
{atk=1 alarm[1]=2 

if x=clamp(x,__view_get( e__VW.XView, 0 )-32,__view_get( e__VW.XView, 0 )+320+32)
{
PlaySoundNoStack(snd_hitground) PlaySound(snd_break)
image_index=1
with oControl quakeFXTime=10
}

ground=1
spdZ=0 
z=0
}
}


if shake=1
{if shaketime=-1 shaketime=1 else shaketime-=1}
else shaketime=0