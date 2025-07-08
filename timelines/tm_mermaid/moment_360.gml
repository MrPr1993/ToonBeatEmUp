///
if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
PlaySound(snd_splash1)
en1=instance_create(6430,160+16,oEntryMirror) en1.image_xscale=1
with en1 { enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
if playernumber>=2 en1.x-=64
////
if playernumber>=2 {P2en1=instance_create(6430+64,160+16,oEntryMirror)
with P2en1 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
}

if playernumber>=3 {P2en2=instance_create(6430+128,160+16,oEntryMirror)
with P2en2 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
}

if playernumber>=3 {P2en3=instance_create(6430-128,160+16,oEntryMirror)
with P2en3 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
}

}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2
PlaySound(snd_splash1)
en1=instance_create(6430,160+16,oEntryMirror) en1.image_xscale=1
with en1 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
if playernumber>=2 en1.x-=64
////
if playernumber>=2 {P2en1=instance_create(6430+64,160+16,oEntryMirror)
with P2en1 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
}

if playernumber>=3 {P2en2=instance_create(6430+128,160+16,oEntryMirror)
with P2en2 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
}

if playernumber>=3 {P2en3=instance_create(6430-128,160+16,oEntryMirror)
with P2en3 {enemy_switch("W.PRINCE",0) spawnEnemy=oPrince; rangeX=0 commonenemy=1// alarm[1]=30 canAttack=5
sprite_index=spr_prince_intro image_index=15 image_xscale=1 risespd=0.1 flashFX(x,y+1,0,spr_watersplash,0,0.25,30,1,1,c_white,1)}
}

}
}
else timeline_position-=1
}
else timeline_position-=1


