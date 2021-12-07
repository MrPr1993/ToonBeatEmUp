/// @description Break & Create Object
if hit=0
{
mask_index=mask_none

oControl.enemyhp=0 oControl.hpLerp=0 oControl.enemymaxhp=0.1
oControl.enemyPortraitSpr=spr_miscface
oControl.enemyPortraitIndex=0
oControl.enemyname=name
oControl.enemyShowTime=30
oControl.hpLerp=0
oControl.enemyhplayer=0
oControl.enemyID=0
with oControl
{current_pal=0;
my_pal_sprite=spr_enemypal
}

PlaySoundNoStack(HitSound)

image_xscale=sourceCheckX
solid=false
hit=1
ground=0
zSpeed=-8
sentflying=-2
image_index=1
alarm[0]=2

if item!=-1
{
item=instance_create_depth(x,y,depth,itemID)
item.image_blend=itemcolor
}}

