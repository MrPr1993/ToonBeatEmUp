enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
anim=12 else anim=11

if anim!=11 if specialcheck1!=0 anim=11

if anim=12 if current_pal=1 or current_pal=3 anim=13
	}
	
if specialcheck1!=0 specialcheck1-=1
	
	if anim=11
	{
	 hit=0  sprite_index=AtkSpr
MoveType=0 damage=0.1
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1
	if AnimFrame=2 {ground=0 sentflying=2*image_xscale zSpeed=-2}
	if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	if anim=12
	{specialcheck1=200
		
		var _stronger=0; if current_pal=2 or current_pal=3 _stronger=1;
		
		if AnimFrame=0 {specialcheck0=0}
sprite_index=spr_shroom_shoot selfatk.x=x+48*image_xscale 

if _stronger {selfatk.x=x+(48*1.5)*image_xscale selfatk.image_xscale=2.5}

selfatk.dizzyAtk=1 MoveType=1 damage=0.05 
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame=2.75 if specialcheck0!=4 {specialcheck0+=1 AnimFrame=1}
frame_set(3,0,0.1)
frame_set(4,3,0.1)
frame_set(5,4,0.1)
frame_set(6,5,0.05) if AnimFrame=6 PlaySoundNoStack(snd_smoke)
 if AnimFrame=clamp(AnimFrame,6,7){
dust_make(x+13*image_xscale,y+1,z-43,4*image_xscale,0,round(choose(-random(2+2*_stronger),random(2+2*_stronger))))
atk=1 
}else atk=0
frame_set(7,0,0.1)
if AnimFrame>7.5 canmove=1

	}
	
	if anim=13
	{
	 hit=0  sprite_index=spr_shroom_attack2
MoveType=1 damage=0.15
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.1 else AnimFrame+=0.1
	if AnimFrame=2 {ground=0 sentflying=4*image_xscale zSpeed=-4}
	if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}