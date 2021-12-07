function hud_show() {
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
