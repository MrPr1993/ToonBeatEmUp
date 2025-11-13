with oPlayer
{canControl=1 
x=6144+96  y=224 areaEntry=0
}

if instance_number(oPlayer)!=1
with oPlayer
{
y=196+16*controlNO
}

//timer_set(1)

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}