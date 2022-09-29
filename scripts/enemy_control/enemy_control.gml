function enemy_control() {
	if canmove=1
	{

	if -key_left 
	{
	if place_free(x-(walkSpeed-dashing-RunMoveSpeedDecrease),y) x-=(walkSpeed+dashing+RunMoveSpeedDecrease)
	if ground
	if leaveMode=0
	{
	if x>targetX+rangeX if image_xscale!=-1 {alarm[1]=30 canAttack=0 image_xscale=-1}
	if x<targetX-rangeX if image_xscale!=1 {alarm[1]=30 canAttack=0 image_xscale=1}

	if dashing=2 doubledash=0.2}}

	if key_right
	{
	if place_free(x+(walkSpeed+dashing+RunMoveSpeedDecrease),y) x+=(walkSpeed+dashing+RunMoveSpeedDecrease)
	if ground
	if leaveMode=0
	{
	if x>targetX+rangeX+2 if image_xscale!=-1 {alarm[1]=30 canAttack=0 image_xscale=-1}
	if x<targetX-rangeX-2 if image_xscale!=1 { alarm[1]=30 canAttack=0 image_xscale=1}
	if dashing=2 doubledash=0.2}}

	if -key_left_pressed or key_right_pressed
	{
	if doubledash=0 doubledash=1 else {doubledash=1 dashing=2}}


	if key_up
	{
	if place_free(x,y-walkSpeed) y-=walkSpeedY}

	if key_down
	{
	if place_free(x,y+walkSpeed) y+=walkSpeedY}

	if ground
	if !key_up and !key_down and !-key_left and !key_right
	{if anim!=0 image_index=0 anim=0}
	else
	{if anim!=1 image_index=0 anim=1}

	if key_jump
	{
	if ground
	{
	if -key_left or key_right
	{if anim!=2 image_index=0 anim=3}
	else
	{if anim!=3 image_index=0 anim=2}

	ground=0
	zSpeed=-8

	}
	}

	///Attack
		if leaveMode=0
	{
	if key_attack
	{
	if canmove=1 {canmove=0 alarm[1]=choose(10,20,30)} animFrame=0
	image_index=0 
	if ground
	{///Throw
	if canThrowAtk=1
	if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+16,y,parEnemy))
	or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-16,y,parEnemy))
	{
	anim=10
	}
	else
	{
	///Stand Attack
	anim=10 
	}

	}
	else {anim=11 sentflying=2 zSpeed=-4}
	with selfatk
	{
	alarm[0]=4
	}
	///
	}
	}
	}



}
