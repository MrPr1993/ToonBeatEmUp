///@description CATS
timer_set(1)

en1=instance_create_depth(cat1.x,cat1.y,-1,oCatman) en1.image_xscale=-1 en1.z=cat1.z

en2=instance_create_depth(cat2.x,cat2.y,-1,oCatman) en2.image_xscale=-1 en2.z=cat2.z

en3=instance_create_depth(cat3.x,cat3.y,-1,oCatman) en3.image_xscale=-1 en3.z=cat3.z

with cat1 instance_destroy()
with cat2 instance_destroy()
with cat3 instance_destroy()

oPlayer.canControl=1

oControl.time=99
