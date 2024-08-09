if sandstorm.specialcheck[8]>104
{
with oPlayer {x=9999999//6143 
	
	y=200}
with oControl
{
stageEndFX=1  
}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}
}
else
timeline_position-=1
