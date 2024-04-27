/// @description Baddies Boss Area

//if __view_get( e__VW.XView, 0 )>=8734-2-320
//{
//boss=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oMirrorLady)
//}
//else
//{
//timeline_position-=1
//}


/// @description Go To Boss

if oPlayer.x>__view_get( e__VW.XView, 0 )+320-24
{
timer_set(0)	


bos=instance_create_depth(8576,156,-1,oFlashFX)
bos.sprite_index=mask_none bos.image_speed=0 bos.alarm[0]=-1;
bos.z=-16 with bos {isDepth=0 depth=16777213}

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
