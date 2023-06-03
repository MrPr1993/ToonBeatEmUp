///VILLAIN
if global.IsMovie=1
{room_goto(rm_cutscenes)}
else
{global.MenuSkip=0 global.IntroSkip=1 room_goto(rm_titlescreen)}


newsShow=0
scene1.sprite_index=spr_introfilm
scene1.image_index=4 scene1.image_speed=0
scene1.x=0
scene1.y=0

scene2.x=99999

cutsceneline="IT'S SHOWTIME, EVERYONE! TO THE CLUB!"

