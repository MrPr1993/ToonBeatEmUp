////FILM
with mono instance_destroy()
newsShow=0
newsText=1

newsShow=0
scene1.sprite_index=spr_introfilm2
scene1.image_index=0 scene1.image_speed=0.25
scene1.x=0 scene1.vspeed=-0.1
scene1.y=0

cutsceneline="THIS DAY, THIS WILL BE THE GREATEST SHOW EVER! HAVE A VERY GOOD NIGHT!"
if global.Language!=0 cutsceneline=languagedialogue[10]