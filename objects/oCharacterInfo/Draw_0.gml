if dataRow!=4
{
if image_blend=c_black {cRed=-1.0 cBlue=-1.0 cGreen=-1.0} else {cRed=0.0 cBlue=0.0 cGreen=0.0}
script_execute(chardraw);
}
else
draw_sprite_ext(spr_datastage,enemyPortraitIndex-1,145,0,1,1,0,image_blend,1)
