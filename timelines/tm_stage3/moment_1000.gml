///@description CATS


en1=instance_create_depth(cat1.x,cat1.y,-1,oCatman) en1.image_xscale=-1

en2=instance_create_depth(cat2.x,cat2.y,-1,oCatman) en2.image_xscale=-1

en3=instance_create_depth(cat3.x,cat3.y,-1,oCatman) en3.image_xscale=-1

with cat1 instance_destroy()
with cat2 instance_destroy()
with cat3 instance_destroy()

oPlayer.canmove=1
oPlayer.canControl=1


