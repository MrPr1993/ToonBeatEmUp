if escapeblimp.specialcheck[0]>=60
{
with escapeblimp
{PlaySound(snd_carengine) 
newscript=function()
{
z-=1;
}
}
}
else
{
escapeblimp.specialcheck[0]+=1;
timeline_position-=1
}