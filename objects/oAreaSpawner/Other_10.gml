/// @description Spawn Enemy
if act=1 and enemytype0!=-1
{
if enemy=0
{
if FXtype=0 ////Spawn type for breaking wall
{
PlaySound(SoundSpawn0)
oControl.quakeFXTime=10
image_index=2
image_speed=2
}

if FXtype=4 ////Spawn type for door
{
PlaySound(SoundSpawn0)
oControl.quakeFXTime=10
image_index=2
image_speed=0 visible=0
door=instance_create_depth(x,y,depth,oDoorTrap) door.depth=depth door.active=1
}

if FXtype=5 ////Spawn type for sliding door
{
PlaySoundNoStack(SoundSpawn0)
oControl.quakeFXTime=10
image_index=0
image_speed=0 visible=0
}

if FXtype=6 ////Spawn tree parts
{
PlaySound(SoundSpawn0)
oControl.quakeFXTime=10
image_index=2
image_speed=0 visible=0

dor1=instance_create_depth(x,y,0,oBarrel) with dor1 
{sprite_index=spr_swamptree
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-4 hspeed=-1 mask_index=mask_none
sentflying=-1 image_index=1 alarm[0]=2 	isDepth=0 depth=-y}

dor1=instance_create_depth(x,y,0,oBarrel) with dor1 
{sprite_index=spr_swamptree
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-4 hspeed=1 mask_index=mask_none
sentflying=1 image_index=2 alarm[0]=2 	isDepth=0 depth=-y

}

}

if FXtype=7 ////Teleport
{
//PlaySoundNoStack(SoundSpawn0)
oControl.quakeFXTime=10 PlaySoundNoStack(snd_shocked)
image_index=0
image_speed=0 visible=0
dust_make(x,y+1,0,0,0,0) with dustmk sprite_index=spr_ateleporter
}

}

if enemy=0
{
en0=instance_create_depth(x,y,depth,enemytype0)
en0.anim=110 en0.image_alpha=0 en0.isSpawn=1
en0.immune=1 en0.image_xscale=turn0

if name0!=-1 en0.name=name0
//if hplayer0!=-1 en0.hplayer=hplayer0
//if hp0!=-1 {en0.hp=hp0 en0.maxhp=hp0}
//if pal0!=-1 en0.current_pal=pal0
//if palS0!=-1  en0.my_pal_sprite=palS0

with en0 enemy_switch(name,0)
}
if enemy=1
{
en1=instance_create_depth(x,y,depth,enemytype0)
en1.anim=110 en1.image_alpha=0 en1.isSpawn=1
en1.immune=1 en1.image_xscale=turn1

if name1!=-1 en1.name=name1
//if hplayer1!=-1 en1.hplayer=hplayer1
//if hp1!=-1 {en1.hp=hp1 en0.maxhp=hp1}
//if pal1!=-1 en1.current_pal=pal1
//if palS1!=-1  en0.my_pal_sprite=palS1

with en1 enemy_switch(name,0)
}
if enemy=2
{
en2=instance_create_depth(x,y,depth,enemytype0)
en2.anim=110 en2.image_alpha=0 en2.isSpawn=1
en2.immune=1 en2.image_xscale=turn2

if name2!=-1 en2.name=name2
//if hplayer2!=-1 en2.hplayer=hplayer2
//if hp2!=-1 {en2.hp=hp2 en0.maxhp=hp2}
//if pal2!=-1 en2.current_pal=pal2
//if palS2!=-1  en2.my_pal_sprite=palS2
with en2 enemy_switch(name,0)
}
if enemy=3
{
en3=instance_create_depth(x,y,depth,enemytype0)
en3.anim=110 en3.image_alpha=0 en3.isSpawn=1
en3.immune=1 en3.image_xscale=turn3

if name3!=-1 en3.name=name3
//if hplayer3!=-1 en3.hplayer=hplayer3
//if hp3!=-1 {en3.hp=hp3 en3.maxhp=hp3}
//if pal3!=-1 en3.current_pal=pal3
//if palS3!=-1  en3.my_pal_sprite=palS3
with en3 enemy_switch(name,0)
}
if enemy=4
{
en4=instance_create_depth(x,y,depth,enemytype0)
en4.anim=110 en4.image_alpha=0 en4.isSpawn=1
en4.immune=1 en4.image_xscale=turn4

if name4!=-1 en4.name=name4
//if hplayer4!=-1 en4.hplayer=hplayer4
//if hp4!=-1 {en4.hp=hp4 en4.maxhp=hp4}
//if pal4!=-1 en4.current_pal=pal4
//if palS4!=-1  en4.my_pal_sprite=palS4
with en4 enemy_switch(name,0)
}
if enemy=5
{
en5=instance_create_depth(x,y,depth,enemytype0)
en5.anim=110 en5.image_alpha=0 en5.isSpawn=1
en5.immune=1 en5.image_xscale=turn5

if name5!=-1 en5.name=name5
//if hplayer5!=-1 en5.hplayer=hplayer5
//if hp5!=-1 {en5.hp=hp5 en5.maxhp=hp5}
//if pal5!=-1 en5.current_pal=pal5
//if palS5!=-1  en5.my_pal_sprite=palS5
with en5 enemy_switch(name,0)
}

act=2

alarm[0]=spawnAlarm
}

