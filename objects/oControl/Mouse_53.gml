/// @description Spawn Enemy
if isPaused=0
{
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop
{
if betatest=1
{

en=instance_create(mouse_x,mouse_y,spawnUnit)

if keyboard_check(vk_shift) with en
{
if object_index=oBoss1 or object_index=oPharaoh
{
if oPlayer.x>x image_xscale=1 else image_xscale=-1

canmove=0 animFrame=0 anim=100}

if object_index=oZombieMan or object_index=oZombieWoman
{canmove=0 animFrame=0 anim=666 alarm[1]=choose(60,90,120)
	current_pal=choose(0,1,2,3,4,5)
}

if object_index=oSneak if keyboard_check(vk_control)
{
spawnID=oTommyGun
weaponspr=spr_tommygun
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.1
weapontargetHeight=2
weapontype=0
weaponHitType=0
}

if object_index=oEnemy1B if keyboard_check(vk_control)
{
weapon_setup(oPipe,spr_pipe,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)

}

if object_index=oSwing if keyboard_check(vk_control)
{
weaponspr=-1
weaponIndex=0
weaponX=0
weaponY=0
weaponangle=0
weaponcolor=c_white
weaponspawn=-1
spawnID=-1
}

}

with en
{
if oPlayer.x>x image_xscale=1 else image_xscale=-1

if place_meeting(x,y,oHeight32)
{h=instance_place(x,y,oHeight32)
z=-320}
}

if spawnUnit=oAreaSpawner 
{

enemylist_choose()

with en
{spawnX=x-320 }

///Multiple Random Spaw Tests
if enemySpawn=0 with en
{FXtype=1
sprite_index=spr_emptyarea
FrameVis=1
FrameSpd=0.1
MaxSpawnFrame=0.8
enemyMax=choose(0,1,2,3,4,5)


randomWeapon=1

hasFake=0

pal0=random_range(0,10)
pal1=random_range(0,10)
pal2=random_range(0,10)
pal3=random_range(0,10)
pal4=random_range(0,10)
pal5=random_range(0,10)


enemytype0=oControl.enemyList
enemylist_choose()
enemytype1=oControl.enemyList
enemylist_choose()
enemytype2=oControl.enemyList
enemylist_choose()
enemytype3=oControl.enemyList
enemylist_choose()
enemytype4=oControl.enemyList
enemylist_choose()
enemytype5=oControl.enemyList
}

///Default - no need to change here
if enemySpawn=1{with en current_pal=choose(0,1,2,3,4)}

///Test of random enemy picks
if enemySpawn=2 en.enemytype0=oControl.enemyList



///Door Test
if enemySpawn=3 with en
{FXtype=1
sprite_index=spr_door
FrameVis=1
FrameSpd=0.25
MaxSpawnFrame=4
}

}

if keyboard_check(vk_shift) with en
{
move_snap(16,16)
}

}
}

}