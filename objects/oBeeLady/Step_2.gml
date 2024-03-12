enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<40
anim=11 else anim=12

if anim=12 if current_pal=4 anim=1300
}

if anim=11 ///Close Stinger
{MoveType=1 damage=0.2
sprite_index=spr_beelady_attack1
frame_set(0,0,0.25)
frame_set(1,1,0.25) if animFrame=clamp(animFrame,2,3) atk=1 else atk=0
if animFrame=2 PlaySound(snd_swing5)
frame_set(2,3,0.25) 
frame_set(3,4,0.01)
frame_set(4,1,0.25)
if animFrame>4.7 canmove=1
}



if anim=12 ///Sticky Honey
{sprite_index=spr_beelady_attack2
	
if animFrame=0
{targetX=targetEnemy.x
specialtimes[0]=(1*(point_distance(x,0,targetX,0)/48)/2)*image_xscale
specialtimes[1]=-1*(point_distance(x,0,targetX,0)/32)

}
	
frame_set(0,0,0.25)
frame_set(1,1,0.1)
frame_set(2,3,0.25) if animFrame=3 {PlaySound(snd_swing4)
spit=instance_create_depth(x+32*image_xscale,y+2,depth,oZombieSpit) spit.spdX=specialtimes[0] spit.z=-69 spit.image_xscale=image_xscale

spit.zSpeed=specialtimes[1]
with spit
{
sprite_index=spr_beehoney
hitflash=spr_beehoneyhit
endflash=spr_beehoneyend
}

}
frame_set(3,4,0.01)
frame_set(4,1,0.25)
if animFrame>4.7 canmove=1
}

	///Diving Down
	if anim=13
	{z+=2 sprite_index=spr_beelady_drop image_index+=0.2 zSpeed=0
		
	if ground {anim=0 recovery=0 canmove=1}
	}

if anim=1300 ///Swelling Stinger
{MoveType=45 damage=0.3 
if animFrame=0 {specialtimes[0]=0} specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
sprite_index=spr_beelady_attack1
frame_set(0,0,0.25)
frame_set(1,1,0.25) if animFrame=2 {flashFX(x+42*image_xscale,y+1,z-32,spr_sparkflash,0,0.25,10,1,1,c_white,1) PlaySound(snd_swing4)}
frame_set(2,2,0.05) if animFrame=3 PlaySound(snd_swing5)
frame_set(3,3+specialtimes[0],0.01)
frame_set(4,4,0.1) if animFrame=clamp(animFrame,3,4) {sentflying=8*image_xscale atk=1
	if x!=clamp(x,oControl.camX-32,oControl.camX+320+32) {animFrame=5 atk=0 sentflying=0}
	} else {sentflying=0 atk=0}
frame_set(5,1,0.25)
if animFrame>5.7 canmove=1
}

