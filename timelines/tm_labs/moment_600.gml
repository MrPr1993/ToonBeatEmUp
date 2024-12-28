/// @description Boss Rematch
if bosscreen.specialcheck[1]=3
{PlaySound(snd_scientist2) with oEnemySpawner cammoveUP=0
boss=instance_create_depth(oControl.camX-32,220,-1,oScientist)
with boss {canmove=0 anim=100 image_xscale=1 specialanim=3}

with oPlayer {image_xscale=-1}
}
else
{oControl.quakeFXTime=3
timeline_position-=1
}