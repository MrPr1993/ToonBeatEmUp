/// @description Insert description here
// You can write your code in this editor
if act=1
if immune=0
//and (x>__view_get( e__VW.XView, 0 )-sprite_get_width(mask_index)/2 and x<__view_get( e__VW.XView, 0 )+320+sprite_get_width(mask_index)/2)
and x=clamp(x,-100+oControl.camX-sprite_get_width(mask_index)/2,100+oControl.camX+320+sprite_get_width(mask_index)/2)
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

//if hp<=0 PlaySound(snd_ant3) else PlaySound(snd_ant2)

hp=0

shaketime=30

recovery=90

PlaySoundNoStack(snd_hit)



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


anim=4 AnimFrame=0

}
}


