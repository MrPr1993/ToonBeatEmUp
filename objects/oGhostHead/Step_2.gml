/// @description Insert description here
// You can write your code in this editor
depth=-y

if recovery!=0 recovery-=1

if hp=0 dead=1

if ownBody!=-1
{if !instance_exists(ownBody) {ownBody=-1 exit;}
if ownBody.hp<=0 { atk=0 hurt=1 hp=0 if anim!=4 and anim!=5 {spdZ=-4 anim=4}}
}
if targetEnemy!=-1
if targetEnemy.dead=0 and hurt=0
{
targetX=targetEnemy.x+-96*image_xscale
targetY=targetEnemy.y
}

if anim=0
{
z=lerp(z,-64+hoverZ,0.1)
spdZ=0

if hover=1
hoverZ=lerp(hoverZ,2,0.025) if hoverZ>1.8 hover=-1
if hover=-1
hoverZ=lerp(hoverZ,-2,0.025) if hoverZ<-1.8 hover=1
} 

if anim=0
{if targetEnemy.x>x image_xscale=1 else image_xscale=-1
if x!=clamp(x,targetX-4,targetX+4)
if x>targetX x-=1 else x+=1
if y!=clamp(y,targetY-2,targetY+2)
if y>targetY y-=1 else y+=1

sprite_index=spr_ghost_head image_index=3
}

if anim=4
{sprite_index=spr_ghost_headhit image_index=3 hurt=1 recovery=60
if z<0 spdZ+=0.4 else {AnimFrame=0 spdZ=0 z=0 anim=5 PlaySound(snd_hitground)
	flashFX(x,y,z,spr_hitground,0,0.5,0,1,1,c_white,1)
	}
x+=sentflying
}

if anim=5
{AnimFrame+=0.1 sentflying=0 recovery=60
if AnimFrame=clamp(AnimFrame,0,0.5) image_index=5
else if AnimFrame=clamp(AnimFrame,0.5,3) image_index=6
else {if hp<=0 
	{
	if ownBody!=-1 with ownBody
	{headRespawn=100}	
	flashFX(x+10*image_xscale,y,z+12,spr_ghost_poof,0,0.5,0,1,1,c_white,1)
	instance_destroy()
	}
	image_index=9}
if AnimFrame>4.5 { hurt=0 anim=0}
}


///Attack
if anim=10
{sprite_index=spr_ghost_head_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.025) if AnimFrame=4
{PlaySound(snd_ant4) PlaySound(snd_flame)
card=instance_create_depth(x+32*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
card.sprite_index=spr_headproj
card.z=z card.image_xscale=image_xscale card.disappearHit=0 card.image_alpha=0.75 card.damage=0.1
}

frame_set(4,4,0.25) ///Fire
frame_set(5,5,0.25)
frame_set(6,4,0.25)
frame_set(7,5,0.25)
frame_set(8,4,0.25)
frame_set(9,5,0.25)
frame_set(10,4,0.25)
frame_set(11,5,0.25)
frame_set(12,4,0.25)
frame_set(13,5,0.25)
frame_set(14,4,0.25)
frame_set(15,5,0.25)
frame_set(16,4,0.025)
frame_set(17,0,0.025)
if AnimFrame>17.75 anim=0
}


z+=spdZ