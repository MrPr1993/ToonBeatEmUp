if carryID!=-1 and carry=1
with carryID carry=0
ex=instance_create_depth(x,y,depth,oExplosion) ex.z=z ex.depth=depth

PlaySound(snd_explosion)

oControl.quakeFXTime=10

instance_destroy()


