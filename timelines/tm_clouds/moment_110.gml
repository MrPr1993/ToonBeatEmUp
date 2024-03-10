/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oBeeLady)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,234,oBeeLady)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("HONEYDEW",0)}
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,272,oSiren)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("SKYLA",0)}	
en4=instance_create(__view_get( e__VW.XView, 0)-64,196,oSiren)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("SKYLA",0)
	
	}
en5=instance_create(__view_get( e__VW.XView, 0)-64,234,oHarpyE)
with en5 {image_xscale=1 canAttack=5 alarm[1]=60
			enemy_switch("ICARA",0)
	}
en6=instance_create(__view_get( e__VW.XView, 0)-64,272,oHarpyE)
with en6 {image_xscale=1 canAttack=5 alarm[1]=60}	
}
else
{
timeline_position-=1
}

