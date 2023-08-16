en1=instance_create_depth(alien1.x,alien1.y,-1,oMartian) en1.image_xscale=-1
en2=instance_create_depth(alien2.x,alien2.y,-1,oMartian) en2.image_xscale=1

with oCameoChar instance_destroy()

with blackout instance_destroy()
with oControl{showMap=1
alarm[0]=60 timecheck=-1
with oPlayer {canmove=1 canControl=1 targetID=-1
 alarm[0]=2
	}
}
spawner_followset("WaveSet1",0,2640-320,1)
musicplaystart(msc_ufo)