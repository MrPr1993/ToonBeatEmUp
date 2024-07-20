/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224,1)

oControl.stageNext=rm_stage4

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449


bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,0)


oPlayer.x-=64

timeline_skip(178)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + 11320)
spawner_followset("WaveSet1",0,11320,1)

__view_set( e__VW.XView, 0, 11320)

oControl.camX=11320
oPlayer.x=oControl.camX+32
