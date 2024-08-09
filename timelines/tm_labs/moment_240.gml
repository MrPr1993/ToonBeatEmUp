	if oControl.allPlayersMove
	{
if specialSet7=0
{//camMove=0 camMax=room_width
with oPlayer
{canControl=0
	canControl=0
automoveX=7692 automoveY=222 automove=1
//7692,222
}	

if instance_number(oPlayer)!=1
with oPlayer
{
automoveY=oControl.wallY+16+16*controlNO
}


timer_set(0)
//foody=instance_create(__view_get( e__VW.XView, 0)+160-32,200,oBurger)
//foody.z=-200
//foody=instance_create(__view_get( e__VW.XView, 0)+160,200,oPizza)
//foody.z=-200
//foody=instance_create(__view_get( e__VW.XView, 0)+160+32,200,oMeat)
//foody.z=-200



with oEnemySpawner
{specialSet9=0 specialSet7=0//-320
specialscript=function()
{
specialSet7+=1
if specialSet7>160 {specialSet7=0}
layer_y("ElevatorBG",specialSet7)

//specialSet9+=1

layer_y("TileBoss",specialSet7-160)
}
}

}
else
{
timeline_position-=1;
}
}
else
{
timeline_position-=1;
}