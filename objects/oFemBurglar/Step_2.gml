enemy_endstep()
throw_step()



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
sprite_index=spr_femburglar_block
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
sprite_index=spr_femburglar_block
if AnimFrame>2 {anim=60}
}


