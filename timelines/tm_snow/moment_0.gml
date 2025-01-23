/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224,1)

oControl.stageNext=rm_cutscene6b

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16+16*controlNO
}


////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449

en1=instance_create(228,209,oEnemy1)
with en1 { canmove=0 isIdle=1 alarm[1]=60 anim=70000
idleRange=30 enemyIdle1=spr_burglar_cold}

en2=instance_create(300,207,oSneak)
with en2 { canmove=0 isIdle=1 alarm[1]=60 anim=70000 image_xscale=-1
idleRange=30 enemyIdle1=spr_sneak_idle3}

bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)


oPlayer.x-=64