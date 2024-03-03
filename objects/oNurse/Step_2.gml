enemy_endstep()
throw_step()

if anim=10
{specialcheck0=0
if distance_to_point(targetX,targetY)<60
{anim=11} else anim=14
}

if anim=11 ///Attack Stand
{ hit=0  
if animFrame=0 specialcheck0=1
atkcol_set(32,0,36,1.15,1,40)
sprite_index=spr_nurse_attack MoveType=0 damage=0.05
selfatk.HitForce=-2
frame_set(0,0,0.1) if animFrame=clamp(animFrame,1,2) {sentflying=8*image_xscale atk=1} else atk=0
frame_set(1,1,0.5)
frame_set(2,2,0.05)
frame_set(3,0,0.1)
if animFrame>3.5 {if specialcheck0=0 canmove=1 else {animFrame=0 anim=14}}
}

///Needle


if anim=14 ///Item Throw Attack
{ hit=0  
sprite_index=spr_nurse_throwitem MoveType=0 damage=0.1
image_index=animFrame image_speed=0

if animFrame=3
{bomb=instance_create_depth(x+30*image_xscale,y,depth,oChemicalBomb) bomb.z=z-70 PlaySoundNoStack(snd_swing)
bomb.spdX=(1*(point_distance(x,0,targetX,0)/48)/2)*image_xscale
if image_xscale=1 
bomb.spdX=clamp(bomb.spdX,1.5,9999)
else
bomb.spdX=clamp(bomb.spdX,-9999,-1.5)
bomb.ground=0 
bomb.weapon_pal=current_pal bomb.my_pal_sprite=my_pal_sprite
bomb.spdZ=-1*(point_distance(x,0,targetX,0)/32)

bomb.trigger=1
}

atk=0
if animFrame=clamp(animFrame,0,1.5)
animFrame+=0.2 else animFrame+=0.1 if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0


}}