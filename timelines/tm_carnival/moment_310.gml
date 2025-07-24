/// @description After Bulls
////Make sure to only count the previous ones, otherwise you'll get an error.
if specialSet6=0
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=2560
spawner_followset("WaveSet1",0,3560,1)
}

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224-16,oCowboy)
en2=instance_create(__view_get( e__VW.XView, 0)+320+70,224+16,oCowboy)

}
else
{
timeline_position-=1
specialSet6-=1

if specialSet6=420
or specialSet6=15
or specialSet6=15*2
or specialSet6=15*3
or specialSet6=15*4
or specialSet6=15*5
or specialSet6=15*6
or specialSet6=15*7
or specialSet6=15*8
or specialSet6=15*9
or specialSet6=15*10
or specialSet6=15*11
or specialSet6=15*12
or specialSet6=15*13
or specialSet6=15*14
or specialSet6=15*15
or specialSet6=15*16
or specialSet6=15*17
or specialSet6=15*18
or specialSet6=15*19
or specialSet6=15*20
or specialSet6=15*21
or specialSet6=15*22
or specialSet6=15*23
or specialSet6=15*24
or specialSet6=15*25
or specialSet6=15*26
or specialSet6=15*27
or specialSet6=15*28
or specialSet6=15*29
or specialSet6=15*30
{

bull=instance_create_depth(2448,choose(214,220,226,232),-1,oBull) with bull
{
x=__view_get( e__VW.XView, 0 )+320+100
hspeed=-6 image_xscale=-1
danger=2
sprite_index=spr_bullrun
//PlaySound(snd_carengine)
shadow=spr_mediumshadow
mask_index=spr_planecol
}
}

}
