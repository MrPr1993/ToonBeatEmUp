///@description Decision Results
canSkipCutscene=2

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_creditscene
cutscenename="VIVA"
cutsceneline="LET'S FOLLOW HER."
timeline_position=10000

with diva1 {sprite_index=spr_viva_move image_speed=0.25 image_xscale=1
	hspeed=2

changespr=spr_viva_idle
changeimgspd=0.1
changeimpindex=0
loopimgchange=1
alarm[2]=40
alarm[5]=40
	}

}

if cutsceneDecmode=1
{CutsceneStage=rm_creditscene
cutscenename="VIVA"
cutsceneline="HOLD IT RIGHT THERE!"
with diva1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}


}

if cutsceneDecmode=2
{CutsceneStage=rm_creditscene
cutscenename="VIVA" 
timeline_position=20000
with diva1
{sprite_index=spr_viva_cutscene image_index=0}
with diva2 {sprite_index=spr_hina_idle image_index=0}
with diva3 {sprite_index=spr_bahati_cutscene image_index=0}
with diva4 {sprite_index=spr_sofia_wildtake image_index=0}

cutsceneline="...LET HER GO. SHE'S NOT WORTH IT."

paper=instance_create_depth(792, diva1.y,-1,oFlashFX);
with paper {alarm[0]=-1 animEnd=0 sprite_index=spr_prop16 isDepth=0 depth=-10
	image_speed=0 image_index=0
	}

}

//cutscenename="VIVA"
//cutsceneline="WHAT?!"
