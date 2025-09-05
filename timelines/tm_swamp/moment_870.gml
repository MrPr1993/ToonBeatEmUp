if oPlayer.x>3900
{PlaySound(snd_break2) oControl.quakeFXTime=10
with oPlayer
{x=3900
car=instance_create_depth(x,y,depth,oCar) car.dead=1 car.sprite_index=spr_boat_dead
car.image_xscale=image_xscale car.z=z car.ground=0 car.mask_index=mask_none
player_jump() zSpeed=-8 
}
//oControl.quakeFXTime=8 //PlaySound(snd_explosion)
}
else
timeline_position-=1