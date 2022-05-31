///character_release(ground,zSpeed,senflying,hitBack,animFrame,anim)
function character_release(argument0, argument1, argument2, argument3, argument4, argument5) {

	if !place_free(x+1*image_xscale,y)
	targetID.x=x

	with targetID
	{
	canmove=0
	hurt=1
	hit=1
	ground=argument0//0
	zSpeed=argument1//-4
	sentflying=argument2//2*-image_xscale
	hitBack=argument3//0
	animFrame=argument4//3
	anim=argument5//5
	image_yscale=1
	ThrowDamage=0
	Throw=0
	recovery=10
	recoveryThrow=10
	if !place_free(x,y+1) y-=1
	if !place_free(x,y+2) y-=2
	if !place_free(x,y-1) y+=1
	if !place_free(x,y-2) y+=2
	}
	targetID=-1
	grabX=0
	grabY=0
	grabZ=0
	sentflying=0
	x=grabLockX



}
