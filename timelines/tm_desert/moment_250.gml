/// @description Pyramid Area - Hieroglyphs

if __view_get( e__VW.XView, 0 )>=5896-2-320
{
oControl.quakeFXTime=10

en1=instance_create_depth(5632,176,-1,oEntryPool) with en1
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph}

en2=instance_create_depth(5632+96,176,-1,oEntryPool) with en2
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph}

en3=instance_create_depth(5632+96*2,176,-1,oEntryPool) with en3
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph}

en4=instance_create_depth(5632+96*3,176,-1,oEntryPool) with en4
{rangeX=0 z=-32 spawnFall=spr_hieroglyph_base spawnEnemy=oHieroglyph}

	
}
else
timeline_position-=1
