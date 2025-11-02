anD=instance_create_depth(320+80,180,-1,oFlashFX);
with anD
{alarm[0]=0 depth=-100 isDepth=0 animEnd=0 visible=1 image_speed=0 alarm[2]=65 image_index=3 sprite_index=spr_cutscene1d hspeed=-2}

with anA {hspeed=-1.2 alarm[2]=30}
with anB {hspeed=-1.2 alarm[2]=30}
with anC {hspeed=-1.5 alarm[2]=30}

cutscenename="SOFIA"
cutsceneline="I WAS GOING TO SUGGEST WE'D USE A DOG WHISTLE."


if global.Language!=0 cutsceneline=languagedialogue[18]