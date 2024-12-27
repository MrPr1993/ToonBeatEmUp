/// @description Insert description here
// You can write your code in this editor
if hit=0
{
with (other) {
if (z-height)<(other.z) and (z)>(other.z-other.height)
with other
{
if other.immune=0 and other.hurt=0 and other.recovery=0 and other.Throw=0
{flashFX(x,y,z,hitflash,0,1,10,1,1,c_white,1)
		if haspal {fx.haspal=1 fx.my_pal_sprite=my_pal_sprite  fx.current_pal=current_pal}
if other.x>xstart {other.HitForceReact=2}
else {other.HitForceReact=-2}
other.cutDMG=isCut
other.HitType=MoveType other.hp-=damage
PlaySoundNoStack(hitSnd) 
with other
{
	HitForceReactZ=-4

if carMode=0
hit_reaction()
else
{
if hp<=0 or dead=1
{
if anim!=202
{
car=instance_create_depth(x,y,depth,oCar) car.dead=1 car.sprite_index=spr_car_dead

if vehSpr=spr_boat car.sprite_index=spr_boat_dead

car.image_xscale=image_xscale car.hspeed=-12 car.z=z car.ground=0
}
zSpeed=-8
image_index=3+13 sprite_index=ThrownSpr
AnimFrame=3+13
anim=202

areaEntry=1
}
else {shaketime=30 AnimFrame=0 anim=201 event_user(11)}
}

recovery=10 dizzyHit=other.dizzyHit  
}
instance_destroy()
}
}
}



}