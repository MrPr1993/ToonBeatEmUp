/// @description After Boxer
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=2560}

spawner_followset("WaveSet1",0,3702+640,1)

en1=instance_create_depth(3616, 133,-1,oEntryBreak)

en2=instance_create_depth(3616+114, 133,-1,oEntryBreak) with en2
{	spawnSprFX=spr_cobra_mummy
	spawnFall=spr_cobra_move
	spawnEnemy=oCobra}
	
en3=instance_create_depth(3616+(114*2), 133,-1,oEntryBreak) with en3
{enemy_switch("BASTET",0)}
en4=instance_create_depth(3616+(114*2)+64, 133,-1,oEntryBreak) with en4
{enemy_switch("BASTET",0)}
en5=instance_create_depth(3616+(114*2)+64*2, 133,-1,oEntryBreak)

en6=instance_create_depth(3616+114+(114*2)-16+64*2, 133,-1,oEntryBreak) with en6
{	spawnSprFX=spr_cobra_mummy
	spawnFall=spr_cobra_move
	spawnEnemy=oCobra}

}
else
timeline_position-=1

