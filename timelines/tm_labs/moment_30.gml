/// @description Baddies Appear 1 - Elevator

if __view_get( e__VW.XView, 0 )>=1530-2-320+320
{
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10

specialSet6=0///Spawner Numbers

with oEnemySpawner
specialscript=function()
{
specialSet7+=1
if specialSet7>160 specialSet7=0
layer_y("ElevatorBG",specialSet7)
//layer_background_htiled("ElevatorBG",false)

}

}
else
{
timeline_position-=1
}

