if oni1.ground=1
{
with clubb instance_destroy()
with clubb2 instance_destroy()

en1=instance_create_depth(oni1.x,oni1.y,-1,oOni)
with oni1 instance_destroy()
en2=instance_create_depth(oni2.x,oni2.y,-1,oOni) with en2 {enemyID=158 current_pal=7 name="SHOKIJO"}
with oni2 instance_destroy()

PlaySound(snd_heavystep)
oControl.quakeFXTime=10

with oPlayer canmove=1

oControl.time=99 timer_set(1)

oControl.bossID=oOniController
oOniController.mode=4
oOniController.oniID1=en1
oOniController.oniID2=en2

timeline_position=1768
}
else
timeline_position-=1
