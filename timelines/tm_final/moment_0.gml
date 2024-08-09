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

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}

//timeline_skip(178)
//with oEnemySpawner
//{
//skipview=2
//skipviewX=11360
//oControl.camX=11360
//}