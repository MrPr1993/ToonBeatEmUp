oControl.quakeFXTime=20
PlaySound(snd_break)
PlaySound(snd_explosion)

oControl.Penemyhp[1]=0 oControl.PhpLerp[1]=0 oControl.Penemymaxhp[1]=1.0
oControl.PenemyPortraitSpr[1]=spr_miscface
oControl.PenemyPortraitIndex[1]=0
oControl.Penemyname[1]="WALL"
oControl.PenemyShowTime[1]=30
oControl.PhpLerp[1]=0
oControl.Penemyhplayer[1]=0
oControl.PenemyID[1]=0
with oControl
{current_pal=0;
my_pal_sprite=spr_enemypal
}

var lay_id = layer_get_id("BGboat");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, bg_stage3b);


dor1=instance_create_depth(58,187,0,oBarrel) with dor1  //87
{sprite_index=spr_s2wall image_index=0 z-=62
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=2 mask_index=mask_none
sentflying=2 image_index=0 alarm[0]=2 shadow=mask_none}

dor2=instance_create_depth(58,187,0,oBarrel) with dor2
{sprite_index=spr_s2wall z-=32
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-16 hspeed=3 mask_index=mask_none
sentflying=4 image_index=1 alarm[0]=2 shadow=mask_none}

dor2=instance_create_depth(58,187,0,oBarrel) with dor2
{sprite_index=spr_s2wall image_angle=90 z-=42
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-9 hspeed=4 mask_index=mask_none
sentflying=4 image_index=1 alarm[0]=2 shadow=mask_none}
