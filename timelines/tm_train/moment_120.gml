oEnemySpawner.canFollow=0
oControl.camMove=0
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0



if specialSet8=1 or specialSet8=3
{PlaySound(snd_metalhit)
with luggage1 shaketime=10
}

if specialSet8=2
{
with luggage1 shaketime=0	
}

if specialSet8=1 with oEnemy1 isIdle=0
if specialSet8=3 with oEnemy1 {image_xscale=-1}


if specialSet8!=4
{specialSet8+=1 
timeline_position-=30
}


