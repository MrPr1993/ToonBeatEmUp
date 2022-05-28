/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3638
and !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
{
en1=instance_create_depth(__view_get( e__VW.XView, 0 )+48,178,-1,oEntryTeleport)
with en1 {enemy_modify(spr_ninjapal,4,"KONI",0,0.4,0.4) rangeX=0}
en2=instance_create_depth(__view_get( e__VW.XView, 0 )+48,260,-1,oEntryTeleport)
with en2 {enemy_modify(spr_ninjapal,4,"KONI",0,0.4,0.4) rangeX=0}
en3=instance_create_depth(__view_get( e__VW.XView, 0 )+320-48,178,-1,oEntryTeleport)
with en3 {enemy_modify(spr_ninjapal,4,"KONI",0,0.4,0.4) rangeX=0 image_xscale=-1}
en4=instance_create_depth(__view_get( e__VW.XView, 0 )+320-48,260,-1,oEntryTeleport)
with en4 {enemy_modify(spr_ninjapal,4,"KONI",0,0.4,0.4) rangeX=0 image_xscale=-1}
}
else
{
timeline_position-=1
}


