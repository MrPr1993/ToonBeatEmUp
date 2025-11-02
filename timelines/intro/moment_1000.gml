newsShow=0
scene1.sprite_index=spr_divaintro
scene1.image_index=1
scene1.x=160-40
scene1.y=240-16
newsRepeat=2


cutsceneline="AND SHE HAS QUITE THE FLEXIBLE PERSONALITY. SHE'LL BRING OUT THE\nHEAT!"
if global.Language!=0 cutsceneline=languagedialogue[4]
scene1.hspeed=0.2
scene1.vspeed=0.05


with scenebg {image_index=1 x=-12 y=-32
	hspeed=0.2/4 vspeed=0.05/4 depth=6}
