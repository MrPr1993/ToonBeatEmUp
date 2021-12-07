// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screen_size(){
var selSCREEN=argument0
	
if selSCREEN=0
{
if global.ScreenSize!=0
global.ScreenSize-=1 else global.ScreenSize=3
}
if selSCREEN=1
{
if global.ScreenSize!=3
global.ScreenSize+=1 else global.ScreenSize=0
}

if global.ScreenSize=0
{window_set_size(640,480) window_set_fullscreen(false)}

if global.ScreenSize=1
{window_set_size(640*2,480*2) window_set_fullscreen(false)}

if global.ScreenSize=2
{window_set_size(640,480) window_set_fullscreen(true)}

if global.ScreenSize=3
{window_set_size(320,240) window_set_fullscreen(false)}

}