if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,5896,1)

en1=instance_create_depth(5632,176,-1,oEntryPainting) with en1
{rangeX=9999 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32 paintingSpr=spr_heye
	name="HORUS" enemyID=125
	}

en2=instance_create_depth(5712,176,-1,oEntryPainting) with en2
{rangeX=9999 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32 paintingSpr=spr_heys
	name="SCARAB" enemyID=126
	}

en3=instance_create_depth(5792,176,-1,oEntryPainting) with en3
{rangeX=9999 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32 paintingSpr=spr_heyankh
	name="ANKH" enemyID=127
	}

en4=instance_create_depth(5872,176,-1,oEntryPainting) with en4
{rangeX=9999 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32 paintingSpr=spr_heya
	name="ANUBIS" enemyID=128
	}

}
else
timeline_position-=1;