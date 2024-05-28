enemy_endstep()
throw_step()

overwriteAttack=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
anim=12
else
anim=11

if anim=12 if current_pal=2 anim=13
}

if anim=11
{sprite_index=spr_samurai_attack damage=0.1
atkcol_set(52,0,2,3.25,1,91) MoveType=1
selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
frame_set(0,0,0.05)
frame_set(1,1,0.25) if AnimFrame=2 {PlaySoundNoStack(snd_swing5) PlaySound(snd_hwolf3)}
frame_set(2,2,0.5) if AnimFrame=clamp(AnimFrame,2,3) {sentflying=4*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(3,3,0.025)
frame_set(4,0,0.25) if AnimFrame>4.5 canmove=1
}

if anim=12
{if AnimFrame=0 sprite_index=spr_samurai_charge damage=0.2
atkcol_set(52,0,2,3.25,1,91) MoveType=1
selfatk.isCut=1 selfatk.spriteFX=spr_blood2 selfatk.HitSound=snd_cut
frame_set(0,0,0.25) 
frame_set(1,1,0.025) if AnimFrame=2 {sprite_index=spr_samurai_attack PlaySound(snd_hwolf3) PlaySoundNoStack(snd_swing5)}
frame_set(2,2,0.25/2) if AnimFrame=clamp(AnimFrame,2,3) {sentflying=32*image_xscale atk=1
	x=clamp(x,camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
	} else {sentflying=0 atk=0 if AnimFrame>2 x=clamp(x,camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
}
frame_set(3,3,0.025)
frame_set(4,0,0.25) if AnimFrame>4.5 canmove=1
}

if anim=13
{if AnimFrame=0 {sprite_index=spr_samurai_charge specialtimes[0]=0} damage=0.2
atkcol_set(52,0,2,3.25,1,91) MoveType=1
selfatk.isCut=1 selfatk.spriteFX=spr_blood2 selfatk.HitSound=snd_cut
frame_set(0,0,0.25) 
frame_set(1,1,0.1) if AnimFrame=2 {sprite_index=spr_samurai_attack PlaySound(snd_hwolf3) PlaySound(snd_swing5)}
frame_set(2,2+specialtimes[0],0.01) if AnimFrame=clamp(AnimFrame,2,3) {sentflying=1*image_xscale atk=1 if specialtimes[0]=2 {PlaySoundNoStack(snd_swing5) specialtimes[0]=0} else specialtimes[0]+=0.25
	x=clamp(x,camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
	} else {sentflying=0 atk=0 if AnimFrame>2 x=clamp(x,camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
}
frame_set(3,3,0.025)
frame_set(4,0,0.25) if AnimFrame>4.5 canmove=1
}

///AI for enemy doing blocks
if canmove=1 and (anim=0 or anim=1)
if distance_to_object(targetEnemy)<48
and (targetEnemy.y=clamp(targetEnemy.y,y-8,y+8))
and (
(image_xscale=1 and x<targetEnemy.x and targetEnemy.image_xscale=-1)
or (image_xscale=-1 and x>targetEnemy.x and targetEnemy.image_xscale=1)
)
{
if targetEnemy.atk=1 if anim!=60
{AnimFrame=0 canmove=0 recovery=0
anim=60 
}
}

///Block
if anim=60
{canBlock=1
sprite_index=spr_samurai_block
AnimFrame+=0.1
if AnimFrame>6 {canmove=1 anim=0 alarm[1]=2}
}

if anim=60 or anim=61
canBlock=1 else canBlock=0

///Block Hit
if anim=61
{canBlock=1 AnimFrame+=0.1 shaketime=30
if AnimFrame<0.5
{
if place_free(x+0.1*-image_xscale,y) x+=0.1*-image_xscale
}
sprite_index=spr_samurai_block
if AnimFrame>2 {anim=60}
}
