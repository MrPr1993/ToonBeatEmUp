/// @description /Miniboss
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(enA)
and !instance_exists(enB)
{spawner_followset("WaveSet1",1744,1744,1) oControl.camMove=1
with fakeenS {timer=0 x=__view_get( e__VW.XView, 0 )+320+16 hspeed=-4 isDepth=0 sprite_index=spr_shadow}
with fakeen {x=__view_get( e__VW.XView, 0 )+320+16 hspeed=-4 visible=1 sprite_index=spr_hwolf_move isDepth=1 image_xscale=-1}
PlaySound(snd_hwolf8) timer_set(0)


}
else
{
if oControl.tutorialText="L TO USE SPECIAL ATTACK"
{
oControl.tutorialTextTime=250
oControl.tutorialText="IF THE SQUARED BAR IS FULL,\nPRESS H FOR A SHOWTIME!"
}
timeline_position-=1
}
