cutscenename="VIVA"
cutsceneline="UH... EXCUSE ME?"

with diva1 {sprite_index=spr_viva_cutscene image_index=1}
with diva3 {image_speed=0 image_index=0}

timeline_position+=100
if global.Language!=0 cutsceneline=languagedialogue[12]