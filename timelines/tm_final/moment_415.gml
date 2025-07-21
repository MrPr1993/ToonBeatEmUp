if boss.hp<2.75
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(oControl.camX-64,180,oEnemy1) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
//en2=instance_create(oControl.camX-64,180+32,oEnemy1B) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oEnemy1B) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,224+16,oEnemy1B)
with P2en1 { image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oEnemy1)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,224-32,oEnemy1B)
with P2en3 { image_xscale=1 canAttack=5 alarm[1]=60}}
////
}
if boss.hp<2.5
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(oControl.camX-64,180,oFemBurglar) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en2=instance_create(oControl.camX-64,180+32,oEnemy1) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oFemBurglar) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5
	enemy_switch("MS.CHILL",0)
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,224+16,oEnemy1B)
with P2en1 { image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oEnemy1)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,224-32,oEnemy1B)
with P2en3 { image_xscale=1 canAttack=5 alarm[1]=60}}
////

}
}
else timeline_position-=1

if boss.hp<2
{
if enemySpawn0=2
{
enemySpawn0=3
en1=instance_create(oControl.camX-64,180,oSneak) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en2=instance_create(oControl.camX-64,180+32,oEnemy1) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oSneak) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,224+16,oEnemy1)
with P2en1 { image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oEnemy1B)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,224-32,oEnemy1)
with P2en3 { image_xscale=1 canAttack=5 alarm[1]=60}}
////

}
}
else timeline_position-=1

if boss.hp<1.5
{
if enemySpawn0=3
{
enemySpawn0=4
en1=instance_create(oControl.camX-64,180,oFatBurglar) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en3=instance_create(oControl.camX-64,180+64,oWrestler) en3.image_xscale=1 with en3 {alarm[1]=30 canAttack=5}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,224+16,oEnemy1B)
with P2en1 { image_xscale=1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oEnemy1)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,224-32,oEnemy1B)
with P2en3 { image_xscale=1 canAttack=5 alarm[1]=60}}
////
}
}
else timeline_position-=1


}
else timeline_position-=1
