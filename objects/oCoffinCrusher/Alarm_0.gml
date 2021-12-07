if act=1
if disappear=0
{
alarm[0]=60

if ground
{
atk=0 disappear=1
alarm[0]=2
ground=0
spdZ=0
}
else
{
spdZ=16
atk=1
}
}
else
{
if deadtimes!=0
{
alarm[0]=2 spdZ=-16
deadtimes-=1
//if visible=0 visible=1 else visible=0
}
else instance_destroy()
}
