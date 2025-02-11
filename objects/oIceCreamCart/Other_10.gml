
if hit=0
{
mask_index=mask_none


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

PlaySoundNoStack(HitSound)

image_xscale=sourceCheckX
solid=false
hit=1
ground=0
zSpeed=-8
sentflying=-2
image_index=1
alarm[0]=2

item=instance_create_depth(x,y,depth,oIceCream) item.hspeed=-1 item.ground=0 item.spdZ=-4 item.z=z
with item specialscript=function(){if ground {hspeed=0 specialscript=-1;} }
item=instance_create_depth(x,y,depth,oIceCream) item.hspeed=-0.5 item.ground=0 item.spdZ=-4 item.z=z 
with item specialscript=function(){if ground {hspeed=0 specialscript=-1;} }
item=instance_create_depth(x,y,depth,oIceCream) item.hspeed=0.5 item.ground=0 item.spdZ=-4 item.z=z
with item specialscript=function(){if ground {hspeed=0 specialscript=-1;} }
item=instance_create_depth(x,y,depth,oIceCream) item.hspeed=1 item.ground=0 item.spdZ=-4 item.z=z
with item specialscript=function(){if ground {hspeed=0 specialscript=-1;} }
}


