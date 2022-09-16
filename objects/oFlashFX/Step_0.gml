if isDepth
depth=-y

x+=xSpeed
y+=ySpeed
z+=zSpeed

if lerpslow=1
{
hspeed=lerp(hspeed,0,lerpslowSpd)
vspeed=lerp(vspeed,0,lerpslowSpd)
zSpeed=lerp(zSpeed,0,lerpslowSpd)
}

if LerpScale=1
{
image_xscale=lerp(image_xscale,1,LerpScaleSpd)
image_yscale=lerp(image_yscale,1,LerpScaleSpd)
}

if scaleAddMode=1
{
image_xscale+=scaleAddX
image_yscale+=scaleAddY
}

if rotAddMode=1
{image_angle+=rotAdd
}

if alphaAddMode=1
image_alpha+=alphaAdd