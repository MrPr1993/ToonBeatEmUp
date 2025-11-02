SceneX=324
__view_set( e__VW.XView, 0, SceneX )

with diva1 {sprite_index=spr_viva_point image_xscale=1 image_index=1}

cutsceneline="HEY! STOP!"

wolf.hspeed=0

with diva2 {sprite_index=spr_hina_point image_xscale=1 image_index=0}
with diva3 {sprite_index=spr_bahati_point image_xscale=1 image_index=0}
with diva4 {sprite_index=spr_sofia_point image_xscale=1 image_index=0}

if global.Language!=0 cutsceneline=languagedialogue[33]