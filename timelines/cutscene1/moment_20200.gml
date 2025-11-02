///@description Decision 3
cutscenename="BAHATI"
cutsceneline="HEY... SHE DROPPED THAT."

with diva3 {sprite_index=spr_bahati_move hspeed=1.5 alarm[2]=30 
	alarm[5]=30
	image_speed=0.2
changespr=spr_bahati_cutscene
changeimgspd=0
changeimpindex=0
	}
if global.Language!=0 cutsceneline=languagedialogue[2]