/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

//overwriteStand=1

if anim=111111111
{
image_index=animFrame
animFrame+=0.1
z=lerp(z,-16+hoverZ,0.1)
zSpeed=0

if hover=1
hoverZ=lerp(hoverZ,2,0.025) if hoverZ>1.8 hover=-1
if hover=-1
hoverZ=lerp(hoverZ,-2,0.025) if hoverZ<-1.8 hover=1
}
