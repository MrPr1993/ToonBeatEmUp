if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,3594+640+320,1)

en1=instance_create_depth(3214+80+640,128+28,-1,oEntrySeat) en1.rangeX=3214+640-64
 with en1 {depth=16777212 isDepth=0}
 en2=instance_create_depth(3214+80*2+640,128+28,-1,oEntrySeat) en1.rangeX=3214+640-64+80*2
 with en2 {depth=16777212 isDepth=0 enemy_switch("MR.LAR",0)}
 en3=instance_create_depth(3214+80*4+640,128+28,-1,oEntrySeat) en1.rangeX=3214+640-64+80*3
 with en3 {depth=16777212 isDepth=0 enemy_switch("MR.LAR",0)}
 en4=instance_create_depth(3214+80*5+640,128+28,-1,oEntrySeat) en4.rangeX=3214+640-64+80*3
 with en4 {depth=16777212 isDepth=0}

}
else
timeline_position-=1
