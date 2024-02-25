/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=4060-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,196,oSpacer)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)-64,244,oSpacer)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oMartian)
with en3 {name="INVA" image_xscale=-1 canAttack=5 current_pal=1 alarm[1]=60 weapon_add("TASER")}
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,244,oMartian)
with en4 {name="INVA" image_xscale=-1 canAttack=5 current_pal=1 alarm[1]=60 weapon_add("TASER")}	

}
else
{
timeline_position-=1
}

