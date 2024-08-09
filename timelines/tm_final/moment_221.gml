with oPlayer
{
x=11426 y=206



canmove=0 anim=9999
sprite_index=PointSpr image_index=0

specialanimscript=function()
{
if instance_exists(oDastardly)
{
if oDastardly.specialanim=2
image_index=2
	
	
}
}

}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}

with oEnemySpawner cammoveUP=1