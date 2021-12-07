function hpscan() {
	if hp<=0 and hplayer!=0
	{hplayertake=hp hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show()}

	if anim=4 if hp<=0 
	if hplayer=0 { HitType=1 event_user(0)}
	else {hp=hplayertake hp=maxhp+hplayertake hplayer-=1 if oControl.enemyID=1 hud_show()}



}
