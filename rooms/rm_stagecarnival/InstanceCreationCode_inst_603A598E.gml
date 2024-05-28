sprite_index=spr_bcameo16
z-=32
x-=8
shadow=mask_none
isDepth=0 depth=0

l1=instance_create_depth(x-36,y,-1,oCameoChar) l1.sprite_index=spr_bcameo17

l2=instance_create_depth(x+56,y,-1,oCameoChar) l2.sprite_index=spr_bcameo18
 
newscript=function()
{
if l1.AnimFrame=clamp(l1.AnimFrame,6,8.9) image_index=l1.image_index-2
else if l2.AnimFrame=clamp(l2.AnimFrame,6,8.9) image_index=l2.image_index+1
else if image_index>3.9 image_index=0 else image_index+=0.1

}

var setanim=l1;

repeat(2)
{
setanim.AnimFrame=0; setanim.anim=9999;
with setanim
newscript=function()
{
frame_set(0,0,0.2)
frame_set(1,1,0.2)
frame_set(2,2,0.2)
frame_set(3,3,0.2) if AnimFrame=3.8 if specialcheck[0]!=16 {AnimFrame=0 specialcheck[0]+=1}
frame_set(4,4,0.2) if AnimFrame=5 specialcheck[0]=0;
frame_set(5,5,0.2)
frame_set(6,6,0.1) 
frame_set(7,7,0.1) 
frame_set(8,8,0.1) if AnimFrame=8.8 if specialcheck[0]!=8 {AnimFrame=6 specialcheck[0]+=1} 
frame_set(9,5,0.2)
frame_set(10,4,0.2)
frame_set(11,4,0.2)
if AnimFrame>11.8 {AnimFrame=0 specialcheck[0]=0}
}
if setanim=l1 setanim=l2; else {setanim.AnimFrame+=6}
}