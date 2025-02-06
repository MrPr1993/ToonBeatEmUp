/// @description Boss Rematch
if escapeblimp.specialcheck[0]>=120
{PlaySound(snd_scientist2) with oEnemySpawner cammoveUP=0
boss=instance_create_depth(oControl.camX-32,220,-1,oScientist)
with boss {canmove=0 anim=100 image_xscale=1 specialanim=3}

with oPlayer {image_xscale=-1 areaEntry=0}
}
else
{oControl.quakeFXTime=10
escapeblimp.specialcheck[0]+=1;
timeline_position-=1
}