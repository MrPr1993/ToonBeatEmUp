if boss.hp<2.75
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(oControl.camX-64,180,oEnemy1) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
//en2=instance_create(oControl.camX-64,180+32,oEnemy1B) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oEnemy1B) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5}
}
if boss.hp<2.5
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(oControl.camX-64,180,oFemBurglar) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en2=instance_create(oControl.camX-64,180+32,oSneak) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oFemBurglar) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5
	enemy_switch("MS.CHILL",0)
	}
}
}
else timeline_position-=1

if boss.hp<2
{
if enemySpawn0=2
{
enemySpawn0=3
en1=instance_create(oControl.camX-64,180,oFatBurglar) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en2=instance_create(oControl.camX-64,180+32,oSwing) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oWrestler) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5}
}
}
else timeline_position-=1

if boss.hp<1.5
{
if enemySpawn0=3
{
enemySpawn0=4
en1=instance_create(oControl.camX-64,180,oBoxer) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oStrongBurg) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5}
}
}
else timeline_position-=1


}
else timeline_position-=1
