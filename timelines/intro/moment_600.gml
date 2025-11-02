newsShow=0
scene1.sprite_index=spr_divaintro
scene1.image_index=0
scene1.x=160+20
scene1.y=240

scene1.hspeed-=0.2
scene1.vspeed-=0.05
newsRepeat=2


scenebg=instance_create_depth(20,0,0,oFlashFX);
with scenebg {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_divabg
	hspeed=-0.2/4 vspeed-=0.05/2 depth=6}

cutsceneline="AN ELECTRIFYING BEAUTY AIN'T SHE? SHE'LL BRING OUT GLAMOUR THROUGH HER\nSONGS."
if global.Language!=0 cutsceneline=languagedialogue[2]
