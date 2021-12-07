/// @description Special State
if hp<losepartL and robotArmL=1 ///Lose L Arm
{robotArmL=0 walkSpeed=1
larm=instance_create_depth(x+robotArmLX*image_xscale,y+2,depth,robotArmLobject)
larm.z=robotArmLY larm.image_angle=robotArmLAngle
larm.spdZ=-4 larm.ground=0 larm.airSpin=1
larm.image_blend=image_blend larm.image_xscale=image_xscale

larm.weapon_pal=current_pal
larm.weapon_pal_sprite=my_pal_sprite
}

if hp<losepartR and robotArmR=1 ///Lose R Arm
{robotArmR=0 walkSpeed=2
rarm=instance_create_depth(x+robotArmRX*image_xscale,y-2,depth,robotArmRobject)
rarm.z=robotArmLY rarm.image_angle=robotArmRAngle
rarm.spdZ=-4 rarm.ground=0 rarm.airSpin=1
rarm.image_blend=image_blend rarm.image_xscale=image_xscale

rarm.weapon_pal=current_pal
rarm.weapon_pal_sprite=my_pal_sprite
}



