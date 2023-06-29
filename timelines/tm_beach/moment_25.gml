if __view_get( e__VW.XView, 0 )>=2640-2-320-640-320-320
{
en3=instance_create_depth(__view_get( e__VW.XView, 0)+320+128,200+64+240,-1,oWrestler)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create_depth(__view_get( e__VW.XView, 0)-96,200+64+240,-1,oSneak)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}
