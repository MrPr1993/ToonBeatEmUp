if fakeenS.timer!=160
timeline_position-=1
else
{timer_set(1)
with oControl {TextDialogue=""}
with fakeenS {y=9999}
en1=instance_create_depth(fakeen.x,fakeen.y,0,oBoss1a) with en1 {image_xscale=-1}
with fakeen {
	
	y=9999}
oControl.bossID=oBoss1a
}
