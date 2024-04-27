if oControl.allPlayersEdge and oControl.allPlayersMove
{
timer_set(0)	
//11528

bos=instance_create_depth(11528,160,-1,oFlashFX)
bos.sprite_index=spr_dastardly_seat bos.image_speed=0 bos.alarm[0]=-1;

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
