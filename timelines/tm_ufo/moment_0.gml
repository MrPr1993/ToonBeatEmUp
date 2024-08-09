/// @description Stage Starting
spawner_followset("WaveSet1",0,692+224,1)

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}


oControl.stageNext=rm_stage4

////Skip to Plane
//spawner_followset("WaveSet1",0,5800,1)
//oPlayer.x=5000
//timeline_position=449

timer_set(0)

skybg=layer_background_get_id(layer_get_id("SKYBG"));
layer_set_visible("UFO1",0)
layer_set_visible("UFO2",0)
layer_set_visible("UFO3",0)
layer_set_visible("UFO4",0)
layer_background_sprite(skybg,bg_sky2)

layer_set_visible("ALIENCONTROLS1",0)
layer_set_visible("ALIENCONTROLS2",0)


oPlayer.x-=64