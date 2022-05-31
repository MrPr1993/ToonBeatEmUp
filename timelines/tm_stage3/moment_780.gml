musicplaystart(msc_boss2)
oControl.MusicFade=0
bad1.shaketime=10
bad2.shaketime=10
bad3.shaketime=10
bad4.shaketime=10

oControl.quakeFXTime=30 

PlaySound(snd_thunder)
PlaySound(snd_pharaoh14)

with oPlayer{canmove=0 anim=305 animFrame=1}

flashFX(__view_get( e__VW.XView, 0 )+random_range(32,320-32),random_range(160,230),0,spr_lightingbolt,0,0.5,10,1,1,c_white,0)



