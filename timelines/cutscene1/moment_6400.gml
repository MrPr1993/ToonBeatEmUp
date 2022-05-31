///@description Decision 1
diva1.x=__view_get( e__VW.XView, 0 )-64 diva1.y=wolf.y
diva2.x=__view_get( e__VW.XView, 0 )-64-16 diva2.y=wolf.y-16
diva3.x=__view_get( e__VW.XView, 0 )-64-24 diva3.y=wolf.y+16
diva4.x=__view_get( e__VW.XView, 0 )-64-10 diva4.y=wolf.y+32



with diva1 {sprite_index=spr_viva_move hspeed=7 image_speed=0.25 image_xscale=1}
with diva2 {sprite_index=spr_hina_move hspeed=7 image_speed=0.25 image_xscale=1 }
with diva3 {sprite_index=spr_bahati_move hspeed=7 image_speed=0.25 image_xscale=1}
with diva4 {sprite_index=spr_sofia_move hspeed=7 image_speed=0.25 image_xscale=1}
