if boss.canmove
{oControl.time=99
with bgsetter
{y=-9999999
image_alpha=1
specialdraw=function()
{
if image_alpha>0 image_alpha-=0.05 else instance_destroy()

draw_set_alpha(image_alpha) draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0)-4,-666,__view_get( e__VW.XView, 0)+444,777,false)
draw_set_alpha(1)
}
	

}

with oPlayer
{layer_set_visible("TILE_AUDIENCE",1)
	layer_set_visible("BGAudience",1)
	
canControl=1 automove=0 canmove=1
}
} else timeline_position-=1