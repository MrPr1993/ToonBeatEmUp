//Explosion

with oBomb 
{
boom=instance_create_depth(x,y,-1,oFlashFX) boom.sprite_index=spr_explosion	

instance_destroy()
}
quakeFXTime=30 PlaySound(snd_explosion)

PlaySound(snd_viva9)
PlaySound(snd_hina11)
PlaySound(snd_bahati8)
PlaySound(snd_sofia9)

layer_background_alpha(bgfog1,0.5)
layer_background_alpha(bgfog2,0.5)

layer_background_yscale(bgfog1,1)
layer_background_yscale(bgfog2,1)

///Blackout
blackout=instance_create_depth(0,0,0,oAlphaFadeFX)
with blackout
{image_alpha=1 isfading=1 fadeSpd=-0.1 sprite_index=spr_whitecol
image_xscale=400 image_yscale=400 depth=-6000
}

//layer_background_alpha


with diva1 {sprite_index=spr_viva_hit image_index=8 x+=8}
with diva2 {sprite_index=spr_hina_hit image_index=8 x+=8}
with diva3 {sprite_index=spr_bahati_hit image_xscale=-1 image_index=21 x+=8}
with diva4 {sprite_index=spr_sofia_hit image_xscale=-1 image_index=21 x+=8}
