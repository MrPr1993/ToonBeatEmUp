if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2868+320,1)

with sandstorm {newscript=function() {x-=6 image_alpha=lerp(image_alpha,0.6,0.005)}}

}
else
timeline_position-=1;