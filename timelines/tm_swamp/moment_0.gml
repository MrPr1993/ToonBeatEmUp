/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224,1)

instance_create_depth(0,0,-1,oRainFX)

oControl.stageNext=rm_stage4

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449

en1=instance_create(305,222,oFatBurglar) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30 en1.enemyIdle1=spr_fatburglar_idle

en2=instance_create(305+48,222+16,oSwing) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30+24 en2.enemyIdle1=spr_swing_idle3 en2.image_xscale=-1

en3=instance_create(320-48+16-16,222+16,oSneak) en3.canmove=0 en3.isIdle=1 en3.alarm[1]=60 en3.anim=70000
en3.idleRange=30+16 en3.enemyIdle1=spr_sneak_idle3

bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)


oPlayer.x-=64