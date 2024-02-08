/// @description Respawn
if disappearTime=0
{
ex=instance_create_depth(x,y,depth,oExplosion) ex.z=z ex.depth=-y

PlaySound(snd_explosion)

oControl.quakeFXTime=10

instance_destroy()
}
else
{
alarm[0]=2
shake=2
cRedAdd=4

disappearTime-=1
}

