/// @description Pyramid Area - Hieroglyphs

if __view_get( e__VW.XView, 0 )>=5896-2-320
{PlaySound(snd_stonebreakl)
oControl.quakeFXTime=10

en1=instance_create_depth(5632,176,-1,oEntryPool) with en1
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32
	}

en2=instance_create_depth(5712,176,-1,oEntryPool) with en2
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32
	}

en3=instance_create_depth(5792,176,-1,oEntryPool) with en3
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32
	}

en4=instance_create_depth(5872,176,-1,oEntryPool) with en4
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph
	splashspr=spr_smokemid fxYadd=-32
	}

	
}
else
timeline_position-=1
