/// @description Baddies Appear 4 - Elevator

if __view_get( e__VW.XView, 0 )>=4026-2
{


PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10

specialSet6=0

with oEnemySpawner
specialscript=function()
{
specialSet8+=2
if specialSet8>72 specialSet8=0
layer_x("ElevatorBG",-specialSet8)
}

}
else
{


timeline_position-=1
}

