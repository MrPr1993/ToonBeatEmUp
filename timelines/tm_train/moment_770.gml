oPlayer.canmove=1
oPlayer.canControl=1
oPlayer.areaEntry=0
timer_set(1)

boss=instance_create_depth(fk.x,fk.y,-1,oTwoHeads)
boss.image_xscale=-1

oControl.time=99

with fk instance_destroy()

oControl.bossID=oTwoHeads



