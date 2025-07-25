if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oKnight)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oKnight)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224-32,oKnight)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,224+64,oKnight)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////
	
	
}