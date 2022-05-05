////VILLAIN
newsShow=0
scene1.sprite_index=spr_introfilm3
scene1.image_index=0 scene1.image_speed=0.25
scene1.x=0 scene1.vspeed=0
scene1.y=-32-24

scene2=instance_create_depth(0,240-16-24,0,oFlashFX);
with scene2 {alarm[0]=-1 isDepth=0 depth=-2 animEnd=0 image_speed=0 sprite_index=spr_introfilm4}
scene2.vspeed=0

cutscenename="VAN BAD"
cutsceneline="OH YES...A VERY GOOD NIGHT INDEED...\nAND THERE THEY ARE. RIGHT THERE, EASY,\nEASY LOOT!"
