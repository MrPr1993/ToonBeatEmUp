///The Sickly Wizard
sprite_index=spr_bcameo23 anim=9999
newscript=function()
{
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1) if animFrame=3.9  if specialcheck[0]!=16 {animFrame=0 specialcheck[0]+=1}
frame_set(4,3,0.25)
frame_set(5,4,0.25)
frame_set(6,5,0.01)
frame_set(7,6,0.25)
frame_set(8,5,0.01)
frame_set(9,6,0.25)
frame_set(10,5,0.01)
frame_set(11,4,0.25)
frame_set(12,3,0.25) if animFrame>12.9 {animFrame=0 specialcheck[0]=0}
}