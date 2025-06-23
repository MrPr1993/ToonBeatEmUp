if oControl.allPlayersEdge and oControl.allPlayersMove
{
timer_set(0)	
//11528

bos=instance_create_depth(oControl.camX+320+270,206,-1,oCameoChar)
bos.sprite_index=spr_painter_intro bos.image_speed=0
with bos {anim=8888}

with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
