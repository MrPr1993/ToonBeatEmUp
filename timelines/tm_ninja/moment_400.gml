/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(en11)
and !instance_exists(en12)
and !instance_exists(en13)
{
	
en1=instance_create_depth(__view_get( e__VW.XView, 0 )+320-48,178,-1,oEntryTeleport)
with en1 {enemy_switch("KONI",0) rangeX=0 enemy_switch("KONI",0) rangeX=0 image_xscale=-1}
if playernumber>=2 {P2en2=instance_create_depth(__view_get( e__VW.XView, 0 )+320-48,260,-1,oEntryTeleport)
with P2en2 {enemy_switch("KONI",0) rangeX=0 enemy_switch("KONI",0) rangeX=0 image_xscale=-1}}
if playernumber>=3 {P2en3=instance_create_depth(__view_get( e__VW.XView, 0 )+48,178,-1,oEntryTeleport)
with P2en3 {enemy_switch("KONI",0) rangeX=0}}
if playernumber>=4 {P2en4=instance_create_depth(__view_get( e__VW.XView, 0 )+48,260,-1,oEntryTeleport)
with P2en4 {enemy_switch("KONI",0) rangeX=0}}
}
else
{
timeline_position-=1
}


