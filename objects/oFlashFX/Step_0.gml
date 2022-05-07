if isDepth
depth=-y

x+=xSpeed
y+=ySpeed
z+=zSpeed

if lerpslow=1
{
hspeed=lerp(hspeed,0,lerpslowSpd)
vspeed=lerp(vspeed,0,lerpslowSpd)
}

