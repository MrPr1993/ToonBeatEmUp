///@description Decision Results
canSkipCutscene=2

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage4
cutscenename="VIVA"
cutsceneline="LET'S FOLLOW HER."
timeline_position=10000

}

if cutsceneDecmode=1
{CutsceneStage=rm_stage3
cutscenename="VIVA"
cutsceneline="HOLD IT RIGHT THERE!"
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5
cutscenename="VIVA" 
timeline_position=20000
with diva1
{sprite_index=spr_viva_cutscene image_index=0}
with diva2 {sprite_index=spr_hina_idle image_index=0}
with diva3 {sprite_index=spr_bahati_cutscene image_index=0}
with diva4 {sprite_index=spr_sofia_wildtake image_index=0}

cutsceneline="...LET HER GO. SHE'S NOT WORTH IT."

}

//cutscenename="VIVA"
//cutsceneline="WHAT?!"
