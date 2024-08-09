if specialSet8=900
{

}
else
{
	
if specialSet8=0
{
oPlayer.canControl=0
with oPlayer
{key_left=0 key_right=0 key_up=0 key_down=0
	
	canmove=0 anim=99999
	}
}

specialSet8+=1;
timeline_position-=1;

if specialSet8=1
{
spriteLocker=instance_create_depth(-10000,-1,-1,oCameoChar)

with spriteLocker
{image_speed=0 sprite_index=spr_viva_lookaround image_index=0 anim=999999
	
	with oPlayer
{anim=9999977999 image_speed=0
if character=0 sprite_index=spr_viva_lookaround
if character=1 sprite_index=spr_hina_lookaround
if character=2 sprite_index=spr_bahati_lookaround
if character=3 sprite_index=spr_sofia_lookaround
}

newscript=function()
{


frame_set(0,2,0.1)
frame_set(1,1,0.1)
frame_set(2,0,0.1)
frame_set(3,1,0.1) if AnimFrame=4 {AnimFrame=0 image_index=2}

oPlayer.image_index=image_index

}
}
}

if specialSet8=60
{with oControl quakeFXTime=10

	PlaySound(snd_laserbeam)
	{
	
	glowlight=instance_create_depth(__view_get( e__VW.XView, 0)+160,242-16,-1,oAlphaFadeFX)
	with glowlight {isfading=0 sprite_index=spr_whitebit image_blend=c_yellow fadeSpd=0 image_alpha=0.8 image_xscale=0 image_yscale=-800 depth=-256}
	
	 with spriteLocker
{
	
with oPlayer
{
if character=0 sprite_index=spr_viva_hit
if character=1 sprite_index=spr_hina_hit
if character=2 sprite_index=spr_bahati_hit
if character=3 sprite_index=spr_sofia_hit
}
anim=999
newscript=function()
{oPlayer.anim=88888
oPlayer.image_index=24
sprite_index=spr_viva_bdance
}
}
	
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
	 with spriteLocker
{PlaySound(snd_ufo2)
	
with oPlayer
{
if character=0 sprite_index=spr_viva_bdance
if character=1 sprite_index=spr_hina_bdance
if character=2 sprite_index=spr_bahati_bdance
if character=3 sprite_index=spr_sofia_bdance
}
anim=999
newscript=function()
{oPlayer.anim=88888
oPlayer.image_index=image_index
sprite_index=spr_viva_bdance

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
if AnimFrame>2.75 AnimFrame=0
}
}

if specialSet8=90
{
oEnemySpawner.specialSet7=1
		
		
		}
	
if specialSet8=150 {with oControl stageEndFX=1}

if specialSet8=210 {///Alioen Scene start
	
	
alien1=instance_create_depth(1008,248,-1,oCameoChar)
with alien1 {sprite_index=spr_martian_back image_blend=c_black image_speed=0.5 anim=444
	
}

alien2=instance_create_depth(1008-160,248,-1,oCameoChar)
with alien2 {sprite_index=spr_martian_move image_index=1 image_blend=c_black image_speed=0.1 anim=444
hspeed=1 
}

alien3=instance_create_depth(1008+64,248,-1,oCameoChar)
with alien3 {image_xscale=-1 sprite_index=spr_martian_idle1 image_blend=c_black image_speed=0 anim=444

}


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
{x=912-64+64*controlNO y=214 z=0 ground=1 canmove=0}
oEnemySpawner.roomHSpd=2
oEnemySpawner.roomMove=1
oEnemySpawner.MaxXAdd+=320
}


 {
	
 with spriteLocker
{with oPlayer
{anim=999
if character=0 sprite_index=spr_viva_jar
if character=1 sprite_index=spr_hina_jar
if character=2 sprite_index=spr_bahati_jar
if character=3 sprite_index=spr_sofia_jar
}
anim=999
newscript=function() {oPlayer.z=-8}
{
}
}
	
	
	with blackout {image_alpha=0.5 fadeSpd=0} with glowlight instance_destroy() specialscript=-1}

layer_set_visible("GRASS1",0)
layer_set_visible("GRASS2",0)
skybg=layer_background_get_id(layer_get_id("SKYBG"));
layer_set_visible("UFO1",1)
layer_set_visible("UFO2",1)
layer_set_visible("UFO3",1)
layer_set_visible("UFO4",1)
layer_set_visible("ALIENCONTROLS1",1)
layer_set_visible("ALIENCONTROLS2",1)


layer_background_sprite(skybg,background18)

}



if specialSet8=274
{
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oPlayer.areaEntry=0

}

if specialSet8=260 with alien2 {hspeed=0 sprite_index=spr_martian_stand image_speed=0}


if specialSet8=300
{
alien4=instance_create_depth(1008+200,248,-1,oCameoChar)
with alien4 {image_xscale=-1 sprite_index=spr_martian_move image_blend=c_black image_speed=0.5
hspeed=-2	anim=444
}
}
if specialSet8>300 and specialSet8<304
{
if alien4.x<1008+100 {
{
with alien4 {sprite_index=spr_martian_stand hspeed=0}
}}
else specialSet8-=1

}

if specialSet8=310 {image_index=0
	
	
	 with spriteLocker
{with oPlayer
	{image_index=0
sprite_index=ShockSpr
anim=99999}
newscript=function()
{oPlayer.z=-8
oPlayer.image_index=image_index
sprite_index=spr_viva_elec
image_index+=0.25 if image_index=1.75 image_index=0
}
}
	
	
	oControl.quakeFX=10 PlaySound(snd_shocked)}

if specialSet8=360 {	with spriteLocker newscript=-1
	
layer_set_visible("ALIENCONTROLS1",0)
layer_set_visible("ALIENCONTROLS2",0)
	
	Fglowlight=instance_create_depth(__view_get( e__VW.XView, 0)+160,-16,-1,oAlphaFadeFX)
	with Fglowlight {isfading=1 sprite_index=spr_whitebit image_speed=0 image_blend=c_white fadeSpd=-0.1 image_alpha=1 image_xscale=3000 image_yscale=800 depth=-5555}
		
	PlaySound(snd_explosion) 
	with oPlayer 
	{flashFX(x,y+2,0,spr_explosion,0,0.5,0,1,1,c_white,1)
canmove=0
	hurt=1
	ground=0
	zSpeed=-8
	sentflying=0
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	thrownDMG=0
	}
	

with alien1 {sprite_index=spr_martian_move hspeed=4 image_speed=-0.5 image_xscale=-1
	}
with alien2 {sprite_index=spr_martian_move hspeed=4 image_speed=-0.5 image_xscale=1
	}

	
	}
	
	
	
if specialSet8=365
{
with alien3 {sprite_index=spr_martian_move hspeed=2 image_speed=0.5 image_xscale=1}
with alien4 {sprite_index=spr_martian_move hspeed=2 image_speed=0.5 image_xscale=1}

with alien1 {sprite_index=spr_martian_attack image_index=1 hspeed=0 image_speed=0}
with alien2 {sprite_index=spr_martian_hit image_index=24 hspeed=0 image_speed=0 image_xscale=-1}
}
	
if specialSet8=420 ///Lights On!
{
with spriteLocker
{image_speed=0 image_index=0 AnimFrame=0
	
	with oPlayer
{anim=99999999
if character=0 sprite_index=spr_viva_screamdown
if character=1 sprite_index=spr_hina_screamdown
if character=2 sprite_index=spr_bahati_screamdown
if character=3 sprite_index=spr_sofia_screamdown
}

newscript=function()
{
with oPlayer
{anim=-1
if character=0 sprite_index=spr_viva_screamdown
if character=1 sprite_index=spr_hina_screamdown
if character=2 sprite_index=spr_bahati_screamdown
if character=3 sprite_index=spr_sofia_screamdown
}

oPlayer.image_index=image_index
sprite_index=spr_viva_screamdown

frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame>2.75 AnimFrame=1
}
}	

with blackout {image_alpha=1 fadeSpd=-0.25 image_blend=c_white}

with oCameoChar image_blend=c_white

}

if specialSet8=498
{specialSet8=0
timeline_position=22
}

}