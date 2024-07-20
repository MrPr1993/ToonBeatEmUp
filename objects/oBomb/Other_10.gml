if carryID!=-1 and carry=1
with carryID carry=0
ex=instance_create_depth(x,y,depth,oExplosion) ex.z=z ex.depth=depth

ex.canHarm=canHarm
ex.harmEnemy=harmEnemy

if BoomSnd!=-1
PlaySound(BoomSnd)

oControl.quakeFXTime=10

instance_destroy()


