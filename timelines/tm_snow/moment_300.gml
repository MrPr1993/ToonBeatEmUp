if specialSet8!=32
{
PlaySound(snd_mirrorfx1)

boss=instance_create_depth(bos.x,bos.y,-1,oMirrorLady)
with boss
{canmove=0 anim=100 depth=16777213 image_alpha=0}
with bos instance_destroy()
}
else
{specialSet8+=1
timeline_position-=1;	
}