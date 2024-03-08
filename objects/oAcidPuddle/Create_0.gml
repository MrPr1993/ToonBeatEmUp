alarm[0]=240

atk=0

damage=0.01

act=1

z=0

image_speed=0

walkSpeed=2
walkSpeedY=2
walkMulX=1
walkMulY=1

MoveType=44

tileself=instance_create_depth(x,y,-1,oFlashFX) with tileself
{image_speed=0 alarm[0]=-1 animEnd=0 isDepth=0 depth=50000}
tileself.sprite_index=sprite_index

PlaySoundNoStack(snd_melthit)