/// @description Insert description here
// You can write your code in this editor
if act=1
if immune=0
//and (x>view_xview[0]-sprite_get_width(mask_index)/2 and x<view_xview[0]+320+sprite_get_width(mask_index)/2)
and x=clamp(x,camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2,camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2)
{
if other.isPlayer!=isPlayer and other.atk=1 and Throw=0 and dead=0 and superThrown=0
and anim!=6 and recovery=0

///(z=clamp(z,other.z-other.height,other.z) or (z)=clamp((z),other.z,other.z+other.height))
//if (z)=clamp((z),other.z-other.height,other.z-other.height)
//if z=clamp(z,other.z,other.z+other.height*2)// =clamp((z),other.z-other.height,other.z+other.height)

//if z<other.z+height if z>other.z-1 or z+height<other.z+other.height


if (z-height)<(other.z) and (z)>(other.z-other.height)
{
hp-=other.damage*6

shaketime=30

recovery=90

PlaySoundNoStack(snd_hit)
if other.hitSource.x>x image_xscale=1 else image_xscale=-1

	oControl.showhp=1

	oControl.enemyhp=hp oControl.hpLerp=hp oControl.enemymaxhp=maxhp
	oControl.enemyPortraitSpr=enemyPortraitSpr
	oControl.enemyPortraitIndex=enemyPortraitIndex
	oControl.enemyname=name
	oControl.enemyShowTime=30
	oControl.hpLerp=hp
	oControl.enemyhplayer=hplayer
	oControl.enemyID=1
	oControl.current_pal=current_pal
	oControl.my_pal_sprite=my_pal_sprite


	if hp<=0 and hplayer=0
	{
	oControl.enemydead=1
	} else oControl.enemydead=0

flashFX(x,y+2,z-32,spr_hitflash,0,1,5,1,1,c_white,1)

sentflying=-4*image_xscale
spdZ=-4

anim=4

}
}


