if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and specialSet6=90 
{
if specialSet8=0
{//camMove=0 camMax=room_width
with oControl
{
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
spawner_followset("WaveSet1",0,5200+320,1)
layer_y("ElevatorBG",0)
PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10
}
specialscript=-1;
}
else
{
timeline_position-=1;
}


}
else
{
if specialSet6!=90 
specialSet6+=1

if specialSet6=10 
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oRobotBurn)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}	
}

if specialSet6=60 
{
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,180-32,oNurse)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,180+32,oNurse)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)}	
}		

timeline_position-=1;
}