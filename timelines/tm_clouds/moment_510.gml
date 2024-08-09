
//if __view_get( e__VW.XView, 0 )>=8734-2-320
//{
//en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oFairy)
//with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

//en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oFairy)
//with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

//}
//else
//{
//timeline_position-=1
//}

/// @description Go To Boss

if oControl.allPlayersEdge and oControl.allPlayersMove
{
timer_set(0)	



with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}

if instance_number(oPlayer)!=1
with oPlayer
{
autoYMOVE=196+16*controlNO
}

}
else
timeline_position-=1
