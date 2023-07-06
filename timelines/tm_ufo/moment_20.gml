if specialSet8=900
{
oPlayer.canControl=1
spawner_followset("WaveSet1",0,2640,1)
musicplaystart(msc_ufo)
}
else
{specialSet8+=1;
timeline_position-=1;
oPlayer.canControl=0
with oPlayer
{key_left=0 key_right=0 key_up=0 key_down=0}


if specialSet8=60
{with oControl quakeFXTime=10
	
	with oEnemySpawner
	{
	glowlight=instance_create_depth(__view_get( e__VW.XView, 0)+160,242-16,-1,oAlphaFadeFX)
	with glowlight {isfading=0 sprite_index=spr_whitebit image_blend=c_yellow fadeSpd=0 image_alpha=0.8 image_xscale=0 image_yscale=-800 depth=-256}
	
	specialscript=function()
	{
	if oPlayer.z>-200
	with glowlight {image_xscale=lerp(image_xscale,120,0.1) }
else
with glowlight {image_xscale=lerp(image_xscale,0,0.1)}

with glowlight {image_alpha-=0.001 if image_alpha<0.078 image_alpha=0.8}

	
		if specialSet7=1
		oPlayer.z-=5
		}	
	}

with oPlayer
{

}

}

if specialSet8=90
{
oEnemySpawner.specialSet7=1
		
		
		}
	
if specialSet8=150 {with oControl stageEndFX=1}

if specialSet8=210 {///Alioen Scene start
	
	
alien1=instance_create_depth(1008,248,-1,oCameoChar)
alien2=instance_create_depth(1008-160,248,-1,oCameoChar)
alien3=instance_create_depth(1008+64,248,-1,oCameoChar)

	
with oControl
{
stageEndFX=0
stageIntro=1

with oPlayer areaEntry=1
///912,214
///197,198
///1040,214
///1104,198
with oPlayer
{x=912 y=214 z=0 ground=1}
oEnemySpawner.roomHSpd=2
oEnemySpawner.roomMove=1
oEnemySpawner.MaxXAdd+=320
}


with oEnemySpawner {with glowlight instance_destroy() specialscript=-1}

layer_set_visible("GRASS1",0)
layer_set_visible("GRASS2",0)
skybg=layer_background_get_id(layer_get_id("SKYBG"));
layer_set_visible("UFO1",1)
layer_set_visible("UFO2",1)
layer_set_visible("UFO3",1)
layer_set_visible("UFO4",1)
layer_background_sprite(skybg,background18)

}

if specialSet8=274
{
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oPlayer.areaEntry=0

}


if specialSet8=330
{

}

}