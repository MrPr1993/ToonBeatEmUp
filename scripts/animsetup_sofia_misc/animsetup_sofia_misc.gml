/// @description Footstool Move
function animsetup_sofia_misc() {
	if canmove=1 and !ground
	{
	if place_meeting(x,y,oEnemy1)
	{
	en=instance_place(x,y,oEnemy1)
	if z=clamp(z,en.z-en.headPosY[en.GrabFrame]-16,en.z-en.headPosY[en.GrabFrame]+16) and en.dead=0 and zSpeed>0
	if en.hurt=0 and en.immune=0 and en.act=1 and en.dead=0
	{if key_jump {z=en.z-en.headPosY[en.GrabFrame] PlaySound(snd_sofia3) animFrame=0 anim=3 zSpeed=-8 image_index=0 flashFX(x,y,z,spr_hitflash,0,1,0,1,1,c_white,1)
	with en {if hp!=0.01 hp-=0.01 hud_show() PlaySoundNoStack(snd_hit) HitType=0 event_user(0) image_index=GrabFrame targetHeightHit=GrabFrame
	zSpeed=0 sentflying=0 wobbleX=1.1 wobbleY=0.9
	}
	}} 

	}

	///Use Special while in air
	if anim=2 or anim=3
	{
	if key_shield_pressed
	{if !key_jump_hold {event_user(4) if anim=17 anim=18}}
	}


	///Up Down Moves


	}



}
