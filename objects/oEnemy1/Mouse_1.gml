/// @description /Increase enemy's HP
if oControl.betatest=1
{
if act=1
{
if keyboard_check(vk_space)
{

oControl.enemyID=id
if instance_exists(oEnemy1) 
with oEnemy1
{if oControl.enemyID!=id
{
fight_target(oControl.enemyID)
isPlayer=1 selfatk.isPlayer=isPlayer
}
}
}
else
{
if keyboard_check(vk_control)
{
if keyboard_check(vk_shift)
{maxhp+=0.01 hp+=0.01
}
else if hp<maxhp hp+=0.01 else hp=maxhp
hud_show()
}
else
{
zSpeed=0
if keyboard_check(vk_shift) z+=1 else
z-=1
}
}
}
}

