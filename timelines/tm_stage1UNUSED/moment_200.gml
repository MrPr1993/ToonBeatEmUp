oPlayer.x=56
oPlayer.y=160
oPlayer.z=-32
oPlayer.alarm[0]=0

with oPlayer
{
canControl=0
key_left=0 key_up=0 key_down=0

key_right=0
areaEntry=0

image_xscale=1

canmove=0
anim=220
}

char1=instance_create(96,160-8,oFlashFX) with char1
{name="Remove" z=-32

if global.P1Char!=3
sprite_index=spr_sofia_attack
else 
sprite_index=spr_viva_attack


  image_index=2 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=-32 shad.isDepth=0 shad.depth=10000 shad.name="Remove" shad.animEnd=0
}

char2=instance_create(45,220,oFlashFX) with char2
{name="Remove" z=-32

if global.P1Char!=2
sprite_index=spr_bahati_hammeratk 
else 
sprite_index=spr_viva_hammeratk 


image_index=3 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=-32 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
}

char3=instance_create(22,200,oFlashFX) with char3
{name="Remove" z=-32

if global.P1Char!=1
sprite_index=spr_hina_attack
else 
sprite_index=spr_viva_attack

  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=-32 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
}



////Thieves
thief1=instance_create(255,170-16,oFlashFX) with thief1
{name="Thief" z=0 image_xscale=-1
sprite_index=spr_sneak_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create(x-8,y+1,oFlashFX) treas.image_index=0 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
}
thief1=instance_create(255-32,150-16,oFlashFX) with thief1
{name="Thief2" z=0 image_xscale=-1
sprite_index=spr_burglar_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create(x-16,y+1,oFlashFX) treas.image_index=1 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
current_pal=2
}
thief1=instance_create(255+16,190-16,oFlashFX) with thief1
{name="Thief2" z=0 image_xscale=-1
sprite_index=spr_burglar_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create(x-16,y+1,oFlashFX) treas.image_index=2 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
current_pal=2
}
thief1=instance_create(255-32,210-16,oFlashFX) with thief1
{name="Thief2" z=0 image_xscale=-1
sprite_index=spr_burglar_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create(x,y,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create(x-16,y+1,oFlashFX) treas.image_index=3 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
current_pal=2
}

with oControl {if timecheck=-1 {timecheck=alarm[0] alarm[0]=0}}

