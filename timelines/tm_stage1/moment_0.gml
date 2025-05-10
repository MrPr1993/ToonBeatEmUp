/// @description Stage Starting
oPlayer.visible=0
oPlayer.alarm[0]=0
oPlayer.canControl=0
oControl.showMap=0

oControl.stageNext=rm_cutscene1

with oControl
{timecheck=alarm[0] alarm[0]=10000000}

oEnemySpawner.roomHSpd=4
oEnemySpawner.roomMove=1

GoBackY=1
 canFollowY=1
	MaxY=280	

spawner_followset("WaveSet1",0,480+320,1)

///654
///Door
dorr=instance_create_depth(480+11,234,-1,oAnimFX) with dorr
{sprite_index=spr_introdoor image_speed=0 isDepth=0 name="Door"}


fakeenS=instance_create_depth(654+64,218-16,-1,oAnimFX) with fakeenS
{sprite_index=spr_shadow image_speed=0 isDepth=0 hasTimer=1}

fakeen=instance_create_depth(654+64,218-16,0,oAnimFX) with fakeen
{sprite_index=spr_hwolf_stand canEnd=0 image_speed=0 image_xscale=-1}

////Thieves
thief1=instance_create_depth(654+96,180+0,0,oFlashFX) with thief1
{name="Thief" z=0 image_xscale=-1
sprite_index=spr_sneak_gunstand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create_depth(x,y,0,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create_depth(x-8,y+1,0,oFlashFX) treas.image_index=0 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
}
thief1=instance_create_depth(654+96-32,180+16,0,oFlashFX) with thief1
{name="Thief2" z=0 image_xscale=-1
sprite_index=spr_burglar_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create_depth(x,y,0,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create_depth(x-16,y+1,0,oFlashFX) treas.image_index=1 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
current_pal=2
}
thief1=instance_create_depth(654+96+16,180+32,0,oFlashFX) with thief1
{name="Thief3" z=0 image_xscale=-1
sprite_index=spr_burglarB_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create_depth(x,y,0,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create_depth(x-16,y+1,0,oFlashFX) treas.image_index=2 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
current_pal=2
}
thief1=instance_create_depth(654+96-32,180+48,0,oFlashFX) with thief1
{name="Thief2" z=0 image_xscale=-1
sprite_index=spr_burglar_stand animEnd=0 image_speed=0.5
  image_index=0 image_speed=0 alarm[0]=0 isDepth=1
shad=instance_create_depth(x,y,0,oFlashFX) shad.alarm[0]=0 shad.sprite_index=spr_shadow shad.z=0 shad.isDepth=0 shad.depth=0 shad.name="Remove" shad.animEnd=0
treas=instance_create_depth(x-16,y+1,0,oFlashFX) treas.image_index=3 treas.alarm[0]=0 treas.sprite_index=spr_treasure treas.z=-32 treas.isDepth=1 treas.name="Remove" treas.animEnd=0 treas.image_speed=0
current_pal=2
}