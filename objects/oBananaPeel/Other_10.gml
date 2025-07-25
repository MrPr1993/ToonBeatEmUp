/// @description Break & Create Object
mask_index=mask_none

oControl.Pshowhp[playerFrom]=0
oControl.Penemyhp[playerFrom]=0 oControl.PhpLerp[playerFrom]=0 oControl.Penemymaxhp[playerFrom]=0.1
oControl.PenemyPortraitSpr[playerFrom]=spr_miscface
oControl.PenemyPortraitIndex[playerFrom]=0
oControl.Penemyname[playerFrom]=name
oControl.PenemyShowTime[playerFrom]=30
oControl.PhpLerp[playerFrom]=0
oControl.Penemyhplayer[playerFrom]=0
oControl.PenemyID[playerFrom]=0

with oControl
{current_pal=0;
my_pal_sprite=spr_enemypal
}


solid=false
hit=1
ground=0
spdZ=-8
sentflying=-2
image_index=1
alarm[4]=2

if item!=-1
{
item=instance_create_depth(x,y,depth,itemID)
item.image_blend=itemcolor
}

