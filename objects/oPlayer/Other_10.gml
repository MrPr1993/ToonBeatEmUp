/// @description Hurt
if ContinueMode=0
{
if carMode=0
hit_reaction()
else
{
if hp<=0 or dead=1
{
if anim!=202
{
car=instance_create_depth(x,y,depth,oCar) car.dead=1 car.sprite_index=spr_car_dead
car.image_xscale=image_xscale car.hspeed=-12 car.z=z car.ground=0
}
zSpeed=-8
image_index=3+13 sprite_index=ThrownSpr
animFrame=3+13
anim=202

areaEntry=1
}
else {shaketime=30 animFrame=0 anim=201 event_user(11)}
}

}