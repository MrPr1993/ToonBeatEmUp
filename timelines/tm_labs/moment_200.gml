if specialSet6=90
{
if specialSet7=0
{//camMove=0 camMax=room_width
//////// Mark for boss area

///Part for lab BG

specialSet7=1
}
else
{
timeline_position-=1;
}


}
else
{
specialSet6+=1

if specialSet6=50
{
foody=instance_create(__view_get( e__VW.XView, 0)+160-32,200,oBurger)
foody.z=-200
foody=instance_create(__view_get( e__VW.XView, 0)+160,200,oPizza)
foody.z=-200
foody=instance_create(__view_get( e__VW.XView, 0)+160+32,200,oMeat)
foody.z=-200
}

timeline_position-=1;
}