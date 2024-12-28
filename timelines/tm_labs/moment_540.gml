if !instance_exists(oScienceScreen)
{
with oControl {//camMove=0 camMax=room_width
goActive=1 alarm[1]=90 MusicFade=1
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7644+320+920-8,1)
}
else
timeline_position-=1;