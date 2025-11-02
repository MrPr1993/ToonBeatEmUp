////VILLAIN LAUGH
newsShow=0
scene1.sprite_index=spr_introfilm3b
scene1.image_index=4 scene1.image_speed=0
scene1.y+=8 scene1.vspeed=-0.8
scene2.y-=8 scene2.vspeed=0.8

PlaySound(snd_dastardly3)

if newsRepeat!=0
{
newsRepeat-=1
timeline_position-=10
}
else
{
scene1.vspeed=0
scene2.vspeed=0
//scene1.sprite_index=spr_introfilm3
timeline_position=4080
}
cutsceneline="HAHAHAHAHAHA!!!"
if global.Language!=0 cutsceneline=languagedialogue[13]

