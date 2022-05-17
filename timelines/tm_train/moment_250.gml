if __view_get( e__VW.XView, 0 )>=1585
{
en4=instance_create(1808,192,oFatBurglar)
///2848
with en4
{image_xscale=-1 z=-320 canmove=0 anim=11 PlaySoundNoStack(snd_fatburglar)
sprite_index=AtkSpr2 animFrame=2.9 ground=0 zSpeed=8 specialcheck2=0
}

}
else
{
timeline_position-=1
}
