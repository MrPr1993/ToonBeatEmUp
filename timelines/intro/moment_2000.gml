////FILM
newsShow=0
scene1.sprite_index=spr_introfilm
scene1.image_index=3
scene1.x=999999
scene1.y=0
scene1.vspeed=-0.05

cutsceneline="ALL FOUR CAME TO THIS JOINT FOR A PERFORMANCE!\nAND EACH ONE BROUGHT A SACRED TREASURE\nWITH THEM! A GOOD EYE AIN'T THEY?"
with scenebg instance_destroy()

mono=instance_create_depth(0,0,-1,oAlphaFadeFX) 
with mono
{
sprite_index=spr_introfilm
image_index=3
vspeed=-0.05 image_speed=0 image_alpha=1
monochrome=0
}

mono2=instance_create_depth(0,0,1,oAlphaFadeFX) 
with mono2
{
sprite_index=spr_introfilm
image_index=3
vspeed=-0.05 image_speed=0 image_alpha=1
monochrome=1
}

