with oPlayer
{image_xscale=1
x-=60

specialanimscript=function()
{
if anim=0 or anim=42
{if anim=0 AnimFrame=0 canmove=0 
anim=42	

if instance_exists(oWitch) if oWitch.AnimFrame>=11
{anim=9999 AnimFrame=0 
	specialanimscript=function()
{
sprite_index=PointSpr
image_index=2
}
}
}

}

}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}
