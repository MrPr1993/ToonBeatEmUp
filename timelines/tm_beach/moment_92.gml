if !instance_exists(en1)
{oControl.time=99
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90 oControl.MusicFade=0 oControl.MusicFadeAdd=1 musicplaystart(msc_beach) 
xGoCheck=2560}
}
else
{
timeline_position-=1;
if en1.dead=1 {oControl.bossID=-1 oControl.MusicFade=1 oControl.MusicFadeAdd=1}


}

