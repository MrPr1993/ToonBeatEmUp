function hud_show() {
	
//if other.hitSource.object_index=oPlayer playerFrom=hitSource.playerNO

	if object_index!=oPlayer
	{
	if name!="HIDETEXT"
	{
	var _maxplayer=playerFrom _maxplayer=clamp(_maxplayer,1,4)
	
	oControl.Pshowhp[_maxplayer]=showhp

	oControl.Penemyhp[_maxplayer]=hp oControl.PhpLerp[_maxplayer]=hp oControl.Penemymaxhp[_maxplayer]=maxhp
	oControl.PenemyPortraitSpr[_maxplayer]=enemyPortraitSpr
	oControl.PenemyPortraitIndex[_maxplayer]=enemyPortraitIndex
	oControl.Penemyname[_maxplayer]=name


	oControl.PenemyShowTime[_maxplayer]=30
	oControl.PhpLerp[_maxplayer]=hp
	oControl.Penemyhplayer[_maxplayer]=hplayer
	oControl.PenemyID[_maxplayer]=1

	oControl.Pcurrent_pal[_maxplayer]=current_pal
	oControl.Pmy_pal_sprite[_maxplayer]=my_pal_sprite
	
	if hp<=0 and hplayer=0
	{
	oControl.Penemydead[_maxplayer]=1
	} else oControl.Penemydead[_maxplayer]=0
	
if x=-999999
{
	oControl.showhp=showhp

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
}


	
	
	}
}


}
