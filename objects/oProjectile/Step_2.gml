//if image_xscale=1 if x>__view_get( e__VW.XView, 0 )+320+sprite_get_width(sprite_index)/2
//instance_destroy()
//if image_xscale=-1 if x<__view_get( e__VW.XView, 0 )-sprite_get_width(sprite_index)/2
//instance_destroy()

var projcam=oControl.camX

// x!=clamp(x,-__view_get( e__VW.XView, 0 )-sprite_get_width(mask_index)/2,__view_get( e__VW.XView, 0 )+320+sprite_get_width(mask_index)/2)
if x!=clamp(x,projcam-sprite_get_width(mask_index)/2,projcam+320+sprite_get_width(mask_index)/2)
instance_destroy()

z+=spdZ

hspeed+=addXSpeed
vspeed+=addYSpeed
spdZ+=addZSpeed

flashX=x
flashY=y+1
flashZ=z SourceX=x

depth=-y

