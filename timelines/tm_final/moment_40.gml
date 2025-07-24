if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(en11)
and !instance_exists(en12)
and !instance_exists(en13)
and !instance_exists(en14)
and !instance_exists(en15)
and !instance_exists(en16)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3680-160,1)

en4=instance_create(__view_get( e__VW.XView, 0)-64,208-16,oSneak)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("MR.PROWL",0)}

en5=instance_create(__view_get( e__VW.XView, 0)-64,2008+16,oEnemy1B)
with en5 {enemy_switch("MR.RON",0) image_xscale=1 canAttack=5 alarm[1]=60 weapon_add("PIPE")}	

en1=instance_create_depth(3192,160,-1,oAreaSpawner)
en2=instance_create_depth(3320,160,-1,oAreaSpawner)
en3=instance_create_depth(3448,160,-1,oAreaSpawner)

with oAreaSpawner
{spawnX=999999 sprite_index=spr_doorzep visible=1
	MaxSpawnFrame=5.5 FrameSpd=0.25 FrameVis=1 FXtype=5
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,180,oSneak)
with P2en1 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oSneak)
with P2en2 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oSneak)
with P2en3 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}
////



}
else
timeline_position-=1;