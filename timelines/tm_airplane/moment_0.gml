/// @description Stage Starting
spawner_followset("WaveSet1",0,692+160,1)

oControl.stageNext=rm_cutscene2b

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449

en1=instance_create(320-48-16,176,oEnemy1) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30 en1.enemyIdle1=spr_burglar_idle4

en2=instance_create(320-16,176,oEnemy1B) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30 en2.enemyIdle1=spr_burglarB_idle4 en2.image_xscale=-1

en3=instance_create(320-48+16-16,176+24,oEnemy1) en3.canmove=0 en3.isIdle=1 en3.alarm[1]=60 en3.anim=70000
en3.idleRange=30+16 with en3
enemy_switch("MR.LAR",0) en3.enemyIdle1=spr_burglar_idle3

bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)

fk=instance_create_depth(320-48+16-16-64,176+24+32,-1,oFlashFX) with fk
{sprite_index=spr_hwolf_escape hspeed=2 alarm[0]=120 animEnd=0 FlashShadow=1
}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}
