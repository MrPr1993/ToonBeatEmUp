/// @description Jump
function player_jump() {
	if ground
	{dashing=dashcheck 
	if dashing=2 doubledash=0.2
	PlaySound(snd_jump) AnimFrame=0
	wobbleX=0.8 wobbleY=1.2
	
	if -key_left or key_right
	{if anim!=2 image_index=0 anim=3}
	else
	{if anim!=3 image_index=0 anim=2}
	ground=0
	zSpeed=-8*jumpMul
	}

}
