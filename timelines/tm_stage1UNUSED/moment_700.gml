/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if specialSet0<0
{
__view_set( e__VW.XView, 0, 2368 )
with oFlashFX if name="Limo" hspeed=0
}
else
{
specialSet0-=0.5
with oFlashFX if name="Limo" hspeed-=0.5
timeline_position-=1
}



