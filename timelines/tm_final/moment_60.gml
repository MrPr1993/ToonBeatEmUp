if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,5200,1)

bgc=layer_background_get_id(layer_get_id("BG"));
layer_background_change(bgc,bg_sky6)


en1=instance_create_depth(4390,160,-1,oAreaSpawner)
en2=instance_create_depth(4648,160,-1,oAreaSpawner)
with oAreaSpawner
{spawnX=x-160 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemyMax=0}
en1.enemytype0=oSneak
en2.enemytype0=oSneak


}
else
timeline_position-=1;