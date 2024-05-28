// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function soundtest_dance(){

var songline=0;
if songplaying!=-1
songline=audio_sound_get_track_position(songID);

switch(playingsongname)
{
case "OPENING FILM":
if songline<3
{frame_set(0,30,0)}
if songline<5.5
{frame_set(0,31,0.1)
frame_set(1,30,0.1)
frame_set(2,29,0.1)
frame_set(3,30,0.1)}
else if songline<5.7
{if image_index=clamp(image_index,29,32) {image_index=28 AnimFrame=0} 
frame_set(0,28,0.1)
frame_set(1,27,0.1)
frame_set(2,27,0.1)
frame_set(3,27,0.1) 
}
else if songline<9
{if image_index>26 {image_index=28 AnimFrame=0} 
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,1,0.1) 
}
else
if songline<11.5
{if image_index>26 {image_index=28 AnimFrame=0} 
frame_set(0,6,0.1)
frame_set(1,7,0.1)
frame_set(2,8,0.1)
frame_set(3,6,0.1) 
}
else if songline<12
{AnimFrame=0 image_index=16 
	dancer1turn=-1
	dancer2turn=-1
	dancer3turn=-1
	dancer4turn=-1
	}
else if songline<16
{
frame_set(0,3,0.1)
frame_set(1,4,0.1)
frame_set(2,5,0.1)
frame_set(3,4,0.1) 
	}


if AnimFrame>3.9 AnimFrame=0
break;



}
}