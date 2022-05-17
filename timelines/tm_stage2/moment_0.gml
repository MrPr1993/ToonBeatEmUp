/// @description Stage Starting
oPlayer.visible=1
oPlayer.alarm[0]=-1

oPlayer.carMode=1
oPlayer.anim=200

oControl.BGmove=0

limo1=instance_create(64+64+64+200,196+8,oFlashFX) limo1.sprite_index=spr_truck limo1.name="Limo" limo1.isDepth=0
with oFlashFX if name="Limo"
{
image_speed=0 animEnd=0 image_index=0 alarm[0]=0 image_speed=0.5 hspeed=6
FlashShadow=1 shadowSpr=spr_carshadow
}
__background_set( e__BG.HSpeed, 0, -16 )

with oPlayer
{
sprite_index=CarSpr
image_index=0
ground=1
zSpeed=0
carMode=1 sentflying=0
carAnim=0
canmove=0
animFrame=0
anim=200
canControl=0
areaEntry=1 key_left=0 key_right=0
x=-100
}

oControl.showMap=1
//with oControl{
//alarm[0]=timecheck timecheck=-1}

repeat(20)
{
fakesky=instance_create_depth(160*specialSet8,-8,26777516,oFlashFX) with fakesky name="FakeSky"
specialSet8+=1
}
specialSet8=0
with oFlashFX if name="FakeSky"
{sprite_index=bg_buildings image_speed=0 isDepth=0
alarm[0]=0 hspeed=-2 depth=26777516
}

post1=instance_create(320+32,32,oFlashFX) with post1
{sprite_index=bg_carmodelight image_speed=0 isDepth=0
alarm[0]=0 hspeed=-12 depth=16777116
}

///Billboard
billboard=instance_create(640,0,oFlashFX) with billboard
{sprite_index=spr_billboard image_speed=0 isDepth=0
alarm[0]=0 hspeed=-12 depth=16777016
}


with oEnemySpawner
if selfID="WaveSet1" {oControl.canMove=0 wave=0 xLock=1 image_xscale=10}

