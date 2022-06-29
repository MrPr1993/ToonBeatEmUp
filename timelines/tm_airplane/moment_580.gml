specialcheck5+=1

if specialcheck5!=60
{timeline_position-=1 oControl.quakeFXTime=300
with oPlayer
{
if x!=clamp(x,__view_get( e__VW.XView, 0 )+160-8,__view_get( e__VW.XView, 0 )+160+8)
{
if x<__view_get( e__VW.XView, 0 )+160
{if place_free(x-4,y) x+=4}
else
{if place_free(x+4,y) x-=4}
}
{if place_free(x,y+4) y-=4}

}
}
else
{
with oPlayer {
	fakepl=instance_create_depth(x,y,-1,oFlashFX) with fakepl
	{image_speed=0 animEnd=0 alarm[0]=0 FlashShadow=1 }
	fakepl.sprite_index=ThrownSpr fakepl.image_index=3
	if x<__view_get( e__VW.XView, 0 )+160
	fakepl.hspeed=3 else fakepl.hspeed=-4 fakepl.depthchange=16777215
	fakepl.vspeed=-2 fakepl.image_xscale=image_xscale
	fakepl.alarm[1]=point_distance(x,y,5024,144)/8
	fakepl.current_pal=current_pal;
	fakepl.my_pal_sprite=my_pal_sprite;
	if fakepl.alarm[1]=0 fakepl.alarm[1]=2
	visible=0 y=0
	}
}

