///@description Plane Outside Area
specialSet8+=1

musicplaystart(msc_boss2)
oControl.MusicFade=0

bgfog1=layer_background_get_id(layer_get_id("BGclouds"));
layer_background_visible(bgfog1,1)

bgs=layer_get_id("BG");
layer_y(bgs,0)

if specialSet8<30
timeline_position-=1
else
{specialSet8=0
with oControl
{quakeFXTime=0
stageEndFX=0
stageIntro=1
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oEnemySpawner.MaxX=5876+240-48
camMove=1
}
with oPlayer
{hspeed=0 visible=1 PlaySoundNoStack(choose(DamageVoice1,DamageVoice2,DamageVoice3))
x=5978-160
y=208 z=-32
areaEntry=0 zSpeed=-4 hspeed=4 image_xscale=-1 hitBack=0 canBounce=0 anim=5
}

if instance_number(oPlayer)!=1
with oPlayer
{
y=oControl.wallY+16*controlNO
}
spawner_followset("WaveSet1",0,5876-64+480,1)


}
