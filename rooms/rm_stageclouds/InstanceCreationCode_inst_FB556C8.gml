sprite_index=spr_bcameo64

shadow=-1;

anim=666

framespd=0.1

ground=0;
x=-240
z=-240
newscript=function()
{
if oControl.camX>=320
{shadow=spr_shadow
if !ground
{
x+=2;
z+=2;
image_index+=0.25 if image_index>=2 image_index=0
}
else
{
if sprite_index=spr_bcameo64
{if image_index<2 image_index=2
image_index+=0.25
if image_index>=4 {sprite_index=spr_bcameo64b image_index=0}
}
else
{
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,0,0.1)
frame_set(3,2,0.1) if AnimFrame>=4 AnimFrame=0
}


}

}

}

