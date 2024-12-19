enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

var newscale=0.9;

///Weapons
if anim=0
{
	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,newscale*25,-39*newscale,-1,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-38*newscale,-1,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-36*newscale,-1,weaponcolor)
}

if anim=1
{
////Walk
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-34*newscale,0,weaponcolor)
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-37*newscale,0,weaponcolor)
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-39*newscale,0,weaponcolor)
}


	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>50
	{anim=12
		if weaponspr!=-1 anim=810
		} else anim=11
	}
	
	if anim=11
	{weaponanim(weaponspr,weaponIndex,newscale*2004,-34*newscale,0,weaponcolor)
	 hit=0  sprite_index=AtkSpr
MoveType=0 damage=0.1
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	if anim=12
	{

{if AnimFrame=0 sprite_index=spr_diver_airkick MoveType=1
frame_set(0,0,0.05)
if AnimFrame=0.5 sprite_index=spr_diver_airkick
if AnimFrame=1 {image_index=1 sentflying=2*image_xscale ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if AnimFrame>1.5 if ground {AnimFrame+=0.1 sprite_index=spr_diver_airkick image_index=0 sentflying=0 atk=0} else {image_index=2 sprite_index=spr_diver_airkick sentflying=2*image_xscale atk=1}

if AnimFrame>3 and ground {canmove=1}
}
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,newscale*24,-34*newscale,0,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,newscale*24,-32*newscale,0,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-51*newscale,0,weaponcolor)
	}
	
	///Diving Down
	if anim=13
	{z+=2 sprite_index=spr_diver_move image_index=2 zSpeed=0
		weaponanim(weaponspr,weaponIndex,newscale*26,-39*newscale,0,weaponcolor)
	if ground {canmove=1 recovery=0 immune=0 recoveryThrow=0 anim=0}
	}
	
	
weaponBack=1

if anim=810 ///Gun Fire
{

if AnimFrame=2.0
or AnimFrame=2.8
or AnimFrame=3.8
or AnimFrame=5.8
{
PlaySoundNoStack(snd_gun)
flashFX(x+(newscale*42)*image_xscale,y,z-(newscale*44),spr_gunflash,0,1,0,1,1,c_white,1)
projectile_create(x+(newscale*42)*image_xscale,y,z-(newscale*44),-10,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
projectile.HitSound=weaponProjHitSnd
}
	
sprite_index=spr_diver_fire
frame_set(0,0,0.1)
frame_set(1,1,0.025)
 //1

//	if AnimFrame=0
	//or AnimFrame=0.8 or AnimFrame=1.6 or AnimFrame=2.4  or AnimFrame=3.2
frame_set(2,1,0.2)
frame_set(3,2,0.05)
frame_set(4,1,0.2) //2 
frame_set(5,2,0.05)
frame_set(6,1,0.2) //3
frame_set(7,2,0.05) 
frame_set(8,1,0.2)
frame_set(9,1,0.025)
frame_set(10,0,0.25)


if AnimFrame>10.75 {atk=0 canmove=1}


if image_index=clamp(image_index,0,0.9)
{
	weaponanim(weaponspr,weaponIndex,newscale*25-7,-40*newscale,-1,weaponcolor)
	}
if image_index=clamp(image_index,1,1.9)
{
weaponanim(weaponspr,weaponIndex,newscale*25-3,-40*newscale,0*image_xscale,weaponcolor)
	}
if image_index=clamp(image_index,2,2.9)
{
	weaponanim(weaponspr,weaponIndex,newscale*25-5,-40*newscale,0*image_xscale,weaponcolor)
	}

}

////Hit
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,newscale*36,-29*newscale,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,newscale*24,-40*newscale,17,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,newscale*20,-38*newscale,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,newscale*11,-57*newscale,-34,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,newscale*11,-46*newscale,86,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,newscale*-1,-48*newscale,129,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,newscale*27,-15*newscale,25,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,newscale*12,-40*newscale,80,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,newscale*26,-11*newscale,80,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,newscale*16,-22*newscale,-2,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,newscale*16,-42*newscale,-2,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,newscale*8,-23*newscale,78,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,newscale*0,-28*newscale,147,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,newscale*0,-15*newscale,200,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,newscale*1,-22*newscale,311,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,newscale*-29,-26*newscale,392,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,newscale*5,-22*newscale,370,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,newscale*0,-22*newscale,356,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,newscale*-13,-6*newscale,316,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,newscale*-13,-6*newscale,0,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,newscale*-13,-11*newscale,0,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,newscale*-9,-7*newscale,0,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,newscale*-3,-16*newscale,360,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,newscale*17,-42*newscale,360,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,newscale*24,-40*newscale,360,weaponcolor)
}