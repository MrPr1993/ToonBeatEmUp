function bobject_setup() {
colorshade_setup()	

	z=0
	trainz=0
	zSpeed=0
	ground=1

spdZ=0

	ground=1

	roll=0
	damage=0.1
fallHole=0

shake=0
shaketime=0

	act=1

	name="BARREL"

	isSource=1

PickupSound=snd_pickitem
	HitSound=snd_break

	shadow=spr_shadow

	height=76

	canmove=1

	deadtimes=25

	sentflying=0
	
	isCut=0

	image_speed=0

	hit=0

	item=-1
	itemID=-1

	itemcolor=c_white

	OBJcheck=1

	sourceCheckX=1

	walkSpeed=2
	walkSpeedY=2
	walkMulX=1
	walkMulY=1

	moveDirection=0

	hasRoof=1

	walkSpeed=0
	dashing=0
	sentflying=0
	
	waterhoverSpr=spr_waterhover
	waterMax=0;
	waterSplash=0;


	current_pal=0;
	my_pal_sprite=spr_enemypal

	weapon_pal=0;
	weapon_pal_sprite=spr_barrelpal

	///Override stuff.
	override_surface=noone;
	override_pal_index=1;

carrySpr=sprite_index
carryIndex=0


}
