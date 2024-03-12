/// @description Baddies Appear 9 - Elevator - Heal Items

if __view_get( e__VW.XView, 0 )>=7644-2-8
{
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10

with oEnemySpawner {specialSet6=0 specialSet7=0}

with oEnemySpawner
specialscript=function()
{
specialSet7+=1
if specialSet7>160 specialSet7=0
layer_y("ElevatorBG",specialSet7)
}


}
else
{
timeline_position-=1
}

