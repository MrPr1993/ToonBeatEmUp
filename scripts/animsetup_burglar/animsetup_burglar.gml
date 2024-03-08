/// @description Since they're exactly the same, it'll use the default animations
function animsetup_burglar() {
	animsetup_enemy()

	///This overwrites the above's moves
	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1
	overwriteAttack3=1

	if specialcheck1<0 specialcheck0=0 else specialcheck1-=1

if anim=10
{
	anim=11
	if current_pal=4
	anim=choose(11,12)
}

	///Attacks
	if anim=11 ///Attack Stand
	{		
	hit=0  
	if animFrame=0
	{if current_pal=4 specialcheck0=6
		
	
	specialcheck1=120
	if specialcheck0!=2 sprite_index=AtkSpr
	else {sprite_index=AtkSpr2 specialcheck0=0}
	}
	if sprite_index=AtkSpr {MoveType=0 damage=0.1}
	if sprite_index=AtkSpr2 {MoveType=2 damage=0.15}
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	if anim=11
	{
	if animFrame=2 PlaySoundNoStack(snd_enemy1)
	if sprite_index=AtkSpr
	atkcol_set(28,0,25,1.45,1,29)
	else
	atkcol_set(28,0,10,1.45,1,29)
	}

if anim=12 ///Air Kick
{if animFrame=0 sprite_index=JumpAtkSpr atkcol_set(28,0,10,1.45,1,29) MoveType=1
	var _multi=1; if current_pal=4 _multi=2
	
frame_set(0,0,0.025*_multi)
if animFrame=1 {PlaySoundNoStack(snd_enemy1) image_index=1 sentflying=(2+1*_multi)*image_xscale ground=0 zSpeed=-4}
frame_set(1,1,0.1)
if animFrame>1.5 if ground {animFrame+=0.1 sprite_index=ThrownSpr image_index=10 sentflying=0 atk=0} else {sprite_index=JumpAtkSpr sentflying=3*image_xscale atk=1}

if animFrame>3 and ground {canmove=1}
}

///Bike
if anim=2500
{sprite_index=bikeSpr   MoveType=1 atkcol_set(3,0,0,2.25,1,28)
	
	if specialtimes[1]!=0 {specialtimes[1]-=1 selfatk.atk=0 atk=0}
	
damage=0.1 
if animFrame=0 {specialtimes[0]=8 
	
	
	
	}
if animFrame<0.75 {sentflying=0 atk=0 animFrame+=0.01
	if animFrame=0.75 PlaySoundNoStack(snd_carengine3)
	if animFrame>0.08
	{x+=specialtimes[0]*image_xscale specialtimes[0]=lerp(specialtimes[0],0,0.1) 
		image_index=0
		//sentflying-=0.0001*image_xscale
		
		} else {
		
		image_index+=0.5 if image_index=3 {image_index=1 dust_make(x-16*image_xscale,y,z,-0.75*image_xscale,0,0)}
		
		}
	//else sentflying=8*image_xscale
	
	} else {sentflying=4*image_xscale  image_index+=0.5 if image_index=3 {image_index=1 dust_make(x-16*image_xscale,y,z,-0.75*image_xscale,0,0)
		if specialtimes[1]!=0 {image_index=3 atk=0} else atk=1 selfatk.atk=atk
		}}
		
		if specialtimes[1]!=0 image_index=3

var getv=oControl.camX//__view_get( e__VW.XView, 0);

if x!=clamp(x,getv-128,getv+320+128 )
{PlaySoundNoStack(snd_carengine2)
if image_xscale=1 {x=getv+320 x+=32} else {x=getv x-=32}

	image_xscale=-image_xscale animFrame=0  y=targetEnemy.y}

}

}
