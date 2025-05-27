/// @description Insert description here
// You can write your code in this editor
hpD=0;



mode=0
modetime=400

oniID1=-1
oniID2=-1

hp=2
maxhp=2

animLock=0

name="ONI SISTERS"

canmove=0

dead=0

isBoss=1
specialBossState=0

curtain1=instance_create_depth(4880, 16, 16777214, oFlashFX) with curtain1
{animEnd=0 sprite_index=spr_oni_curtain alarm[0]=0 isDepth=0 depth=16777214}
curtain2=instance_create_depth(4880+96, 16, 16777214, oFlashFX) with curtain2
{animEnd=0 sprite_index=spr_oni_curtain alarm[0]=0 isDepth=0 depth=16777214}
curtain3=instance_create_depth(4880+96*2, 16, 16777214, oFlashFX) with curtain3
{animEnd=0 sprite_index=spr_oni_curtain alarm[0]=0 isDepth=0 depth=16777214}
