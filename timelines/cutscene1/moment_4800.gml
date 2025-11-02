//@description ARGUMENT
with oFlashFX instance_destroy()

with oControl quakeFXTime=10
PlaySound(snd_hit2)

cutscenename="VIVA"
cutsceneline="A DOG WHISTLE?!"

scene1=instance_create_depth(0,4+60,0,oFlashFX);
with scene1 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0.25 sprite_index=spr_cutscene1e vspeed=-8
	image_index=1 loopimg=1 lerpslow=1
	}
if global.Language!=0 cutsceneline=languagedialogue[19]