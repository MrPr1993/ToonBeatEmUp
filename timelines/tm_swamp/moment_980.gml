/// @description Go To Boss

if oPlayer.x>__view_get( e__VW.XView, 0 )+320-24
{
timer_set(0)	


bos=instance_create_depth(9248,144,-1,oFlashFX)
bos.sprite_index=spr_witch_stand bos.image_speed=0 bos.alarm[0]=-1;

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
