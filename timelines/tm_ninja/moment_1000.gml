if oni1.ground=1
{
en1=instance_create_depth(oni1.x,oni1.y,-1,oOni)
with oni1 instance_destroy()
en2=instance_create_depth(oni2.x,oni2.y,-1,oOni) with en2 {current_pal=7 }
with oni2 instance_destroy()

oControl.bossID=oOniController
oOniController.mode=4
oOniController.oniID1=en1
oOniController.oniID2=en2

timeline_position=1768
}
else
timeline_position-=1
