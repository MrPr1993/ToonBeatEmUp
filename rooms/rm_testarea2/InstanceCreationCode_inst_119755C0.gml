sprite_index=spr_bcameo22

anim=666

framespd=0.1

newscript=function()
{///8,64
frame_set(0,0,framespd)
frame_set(1,1,framespd)
frame_set(2,2,framespd) if animFrame=3
{if specialcheck[0]=2 specialcheck[0]=0 else specialcheck[0]+=1
{b1=instance_create_depth(x+8,y+1,-1,oCameoChar) b1.z=-65 b1.anim=666 b1.sprite_index=spr_bcameo22b b1.image_index=specialcheck[0]
with b1 {newscript=function() {spdZ+=0.45 z+=spdZ x-=0.5
if z>-64 if spdZ>0 instance_destroy();}	 spdZ=-8;}
}
}
frame_set(3,3,framespd)
frame_set(4,4,framespd)
frame_set(5,5,framespd)
if animFrame>5-0.1 {animFrame=0
	
	if specialcheck[0]=2 specialcheck[0]=0 else specialcheck[0]+=1
{b1=instance_create_depth(x-8,y+1,-1,oCameoChar) b1.z=-65 b1.anim=666 b1.sprite_index=spr_bcameo22b b1.image_index=specialcheck[0]
with b1 {newscript=function() {spdZ+=0.45 z+=spdZ x+=0.5
if z>-64 if spdZ>0 instance_destroy();}	 spdZ=-8;}
}
	
	}

}