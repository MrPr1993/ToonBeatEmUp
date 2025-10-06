bos=instance_create_depth(oControl.camX+160,206,-1,oCameoChar)
bos.sprite_index=spr_painter_attack6 bos.image_speed=0
with bos {anim=8888 image_index=7
	
	dust_make(x,y,0,0,0,0) dustmk.sprite_index=spr_inksplash PlaySound(snd_splash1)
	
	
	newscript=function()
	{
	frame_set(0,7,0.25)
	frame_set(1,6,0.25)
	frame_set(2,5,0.25)
	frame_set(3,4,0.25)
	frame_set(4,3,0.25)
	frame_set(5,2,0.25)
	frame_set(6,1,0.25)
	frame_set(7,0,0.25) if AnimFrame=8 {sprite_index=spr_painter_bye}
	frame_set(8,0,0.01)
	frame_set(9,1,0.25)
	frame_set(10,2,0.01)
	frame_set(11,3,0.1)
	frame_set(12,4,0.2)
    frame_set(13,5,0.2) if AnimFrame>=14 {AnimFrame=12 image_index=4}
	}
	
	}

