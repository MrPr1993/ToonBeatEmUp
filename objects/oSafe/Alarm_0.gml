if act=1
if disappear=0
{
if image_index=0
alarm[0]=60
else alarm[0]=30

if ground
{
atk=0 disappear=1
alarm[0]=2
ground=0
spdZ=0
}
else
{
spdZ=8 shake=0
atk=1
}
}
else
{
if deadtimes!=0
{
alarm[0]=2
deadtimes-=1
if visible=0 visible=1 else visible=0
}
else instance_destroy()
}
