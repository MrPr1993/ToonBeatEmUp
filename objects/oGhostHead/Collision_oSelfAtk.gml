/// @description Insert description here
// You can write your code in this editor
if act=1
if immune=0
//and (x>__view_get( e__VW.XView, 0 )-sprite_get_width(mask_index)/2 and x<__view_get( e__VW.XView, 0 )+320+sprite_get_width(mask_index)/2)
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

if hp<=0 PlaySound(snd_ant3) else PlaySound(snd_ant2)

shaketime=30

recovery=90

PlaySoundNoStack(snd_hit)



if other.hitSource.x>x image_xscale=1 else image_xscale=-1

playerFrom=other.hitSource.playerNO

	oControl.Pshowhp[playerFrom]=1
    
	oControl.Penemyhp[playerFrom]=hp oControl.PhpLerp[playerFrom]=hp oControl.Penemymaxhp[playerFrom]=maxhp
	oControl.PenemyPortraitSpr[playerFrom]=enemyPortraitSpr
	oControl.PenemyPortraitIndex[playerFrom]=enemyPortraitIndex
	oControl.Penemyname[playerFrom]=name
	oControl.PenemyShowTime[playerFrom]=30
	oControl.PhpLerp[playerFrom]=hp
	oControl.Penemyhplayer[playerFrom]=hplayer
	oControl.PenemyID[playerFrom]=1
	oControl.Pcurrent_pal[playerFrom]=current_pal
	oControl.Pmy_pal_sprite[playerFrom]=my_pal_sprite


	if hp<=0 and hplayer=0
	{
	oControl.Penemydead[playerFrom]=1
	} else oControl.Penemydead[playerFrom]=0

flashFX(x,y+2,z-32,spr_hitflash,0,1,5,1,1,c_white,1)

sentflying=-4*image_xscale
spdZ=-4

anim=4

}
}


