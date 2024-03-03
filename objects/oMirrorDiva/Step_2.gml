enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=0 {sprite_index=StandSpr}

if anim=9000
{animFrame=0 key_right=0 key_left=0
if distance_to_point(targetEnemy.x,targetEnemy.y)>50 {
if image_xscale=1 key_right=1 else key_left=-1 
ground=0 zSpeed=-6 anim=15
}
else {anim=choose(10,80,81,15,9001)
if anim=15 {ground=0 zSpeed=-4}
}
}

if anim=9001 ///Running attack
{sprite_index=RunSpr 
if sentflying=4*image_xscale
animFrame+=0.1
image_index+=0.2

if y!=clamp(y,targetEnemy.y-4,targetEnemy.y+4)
{
if y>targetEnemy.y y-=2 else y+=2
}

if animFrame>2 or x=clamp(x,targetEnemy.x-60,targetEnemy.x+60)
{animFrame=0 anim=16}
}

if anim=10 or anim=11 or anim=12 or anim=13 or anim=14 or anim=15 or anim=16
or anim=17 or anim=35 or anim=36 or anim=37 or anim=80 or anim=81 or anim=25
{enemyscript=mirrorscript}
else {enemyscript=animsetup_enemy}


if dead=1 if visible
{

					iceFX=0;
					
					PlaySoundNoStack(snd_break)
					
		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-0
if iceFX=1 or iceFX=5 part.z=z-8
if iceFX=2 or iceFX=6 part.z=z-16
if iceFX=3 or iceFX=7 part.z=z-24
part.image_angle=random(360) part.sprite_index=spr_ice
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
	iceFX+=1;
} iceFX=0;

	canmove=0
	hurt=1
	shaketime=30
	throwing=0 dead=1;
	visible=0 disappearTime=0 alarm[2]=90///Instantly kill and shatter character while frozen
}