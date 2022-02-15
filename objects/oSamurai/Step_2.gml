enemy_endstep()
throw_step()

overwriteAttack=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
anim=12
else
anim=11
}

if anim=11
{sprite_index=spr_samurai_attack damage=0.1
atkcol_set(52,0,2,3.25,1,91) MoveType=1
selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
frame_set(0,0,0.05)
frame_set(1,1,0.25) if animFrame=2 PlaySoundNoStack(snd_swing5)
frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,3) {sentflying=4*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(3,3,0.025)
frame_set(4,0,0.25) if animFrame>4.5 canmove=1
}

if anim=12
{if animFrame=0 sprite_index=spr_samurai_charge damage=0.2
atkcol_set(52,0,2,3.25,1,91) MoveType=1
selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
frame_set(0,0,0.25) 
frame_set(1,1,0.025) if animFrame=2 {sprite_index=spr_samurai_attack PlaySoundNoStack(snd_swing5)}
frame_set(2,2,0.25/2) if animFrame=clamp(animFrame,2,3) {sentflying=32*image_xscale atk=1
	x=clamp(x,camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
	} else {sentflying=0 atk=0 if animFrame>2 x=clamp(x,camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
}
frame_set(3,3,0.025)
frame_set(4,0,0.25) if animFrame>4.5 canmove=1
}