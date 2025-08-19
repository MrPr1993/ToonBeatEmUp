/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224+64,1)



oControl.stageNext=rm_cutscene4c

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449


bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)



oPlayer.x-=64

oPlayer.y+=240+32

if instance_number(oPlayer)!=1
with oPlayer
{
y=448+16+16*controlNO
}


en1=instance_create_depth(440,448,-1,oAreaSpawner)
with en1
{
spawnX=430-160 ///768
enemytype0=oSneak MaxSpawnFrame=0 visible=1 name0="MR.SLINK"
FXtype=4 canDraw=1 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
}