if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7440,1)

en1=instance_create(__view_get( e__VW.XView, 0)+64,230-32,oFairy)
with en1 {image_xscale=1 current_pal=3 ground=0 canmove=0 anim=13 z=-200}

en2=instance_create(__view_get( e__VW.XView, 0)+64,230+32,oFairy)
with en2 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200}
}
else
timeline_position-=1;