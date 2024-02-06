///@description Ride Start


if __view_get( e__VW.XView, 0 )>=7039-320-2
{

PlaySound(snd_hitgroundmetal)
oControl.quakeFXTime=10



bgsetter=instance_create_depth(6688,0,-1,oCameoChar)
with bgsetter
{isDepth=0 anim=666600 sprite_index=spr_carnivalride image_speed=0.25 image_alpha=0
	depth=777203
newscript=function()
{if image_alpha<1 image_alpha+=0.01
	if specialcheck[0]=0 {specialcheck[0]=choose(160,180,200,220,240)/2
		var _setbg=__view_get( e__VW.XView, 0)+160; 
camnote=instance_create_depth(_setbg+choose(-random_range(0,10),random_range(0,10)),190-64,-1,oCameoChar)
camnote.anim=666 
with camnote 
{depth=7772 shadow=mask_none
	if x>__view_get( e__VW.XView, 0)+160 hspeed=random_range(0.5,1.5) else hspeed=-random_range(0.5,1.5)
	
	vspeed=choose(-random(1),random(1))
	
	sprite_index=spr_smileyface image_index=random(7) image_xscale=choose(0.001,-0.001) image_yscale=image_xscale
image_blend=choose(c_blue,c_red,c_yellow,c_green,c_white)
newscript=function()
{if image_xscale>0 image_xscale+=0.01 else image_xscale-=0.01 image_yscale=abs(image_xscale)
	if image_xscale>0.5 or image_xscale=-1 {image_alpha-=0.01 if image_alpha<0 instance_destroy()}
}
}		
		
		}
	specialcheck[0]-=1
	
	
	}
	
}
}
else
timeline_position-=1
