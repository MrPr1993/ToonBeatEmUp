///@description Decision 1
with rock
{flashFX(x,y,z,spr_hitflash,0,1,10,1,1,c_white,1) PlaySound(snd_hit) PlaySound(snd_hwolf2) instance_destroy()
}

with wolf {hspeed=0 loopimg=3 image_index=0.5 sprite_index=spr_hwolf_stopped}

oControl.quakeFXTime=10
