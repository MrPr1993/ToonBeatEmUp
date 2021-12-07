if dead=0
{
if other.canmove=1 and other.atk=0 and other.hurt=0 and other.dead=0
and other.zSpeed>0 and other.z>z-height
{
other.image_xscale=image_xscale
other.x=x other.y=y other.z=z
with other
{sprite_index=CarSpr
image_index=0
ground=1
zSpeed=0
carMode=1
carAnim=0
canmove=0
animFrame=0
anim=200
}

instance_destroy()
}
}

