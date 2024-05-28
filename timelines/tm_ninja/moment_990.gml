with oni1 {hasgrav=1 ground=0 z=-2 zSpeed=-16 hspeed=-0.7 vspeed=1 FlashShadow=1 isDepth=1}
with oni2 {hasgrav=1 ground=0 z=-2 zSpeed=-16 hspeed=0.7 vspeed=1 FlashShadow=1 isDepth=1}

PlaySound(snd_jump)

with oPlayer AnimFrame=4

with clubb
{isDepth=1 x-=90 image_xscale=-1 y+=90 animEnd=0 image_speed=0 image_angle=0 z=-690 zSpeed=8}
with clubb2
{isDepth=1 x+=90 y+=90 animEnd=0 image_speed=0 image_angle=0 z=-690 zSpeed=8}


//with oni1 instance_destroy()
//with oni2 instance_destroy()


