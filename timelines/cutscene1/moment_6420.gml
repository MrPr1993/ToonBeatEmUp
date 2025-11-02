///@description Decision 1
with diva1 {sprite_index=spr_viva_point hspeed=0 image_speed=0}
with diva2 {sprite_index=spr_hina_stand hspeed=0 image_speed=0}
with diva3 {sprite_index=spr_bahati_cutscene hspeed=0 image_speed=0}
with diva4 {sprite_index=spr_sofia_point hspeed=0 image_speed=0}

cutscenename="LADY WOLF"
cutsceneline="...ALRIGHT. FINE. WE TOOK THE GOODS TO THE SHIP WAITING BY THE BRIDGE, HAPPY?"
if global.Language!=0 cutsceneline=languagedialogue[2]


