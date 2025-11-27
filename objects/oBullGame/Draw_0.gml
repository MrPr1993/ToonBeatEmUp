draw_sprite(spr_bullgate,1,-rundist,0)

draw_sprite_ext(spr_bullgate,3,320+16+oBullGame.runmax-oBullGame.runmax*(rundist/oBullGame.runmax),0,-1,1,0,c_white,1)


if ready=1
draw_sprite(spr_carshadow,0,bullx,178)

draw_sprite(spr_bullfence,0,obstacleX,200)

if instance_exists(oBullPlayer) with oBullPlayer draw_sprite(spr_shadow,0,round(x),y)

if ready=0
{

var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECT"
var _t4="GOOD"
var _t5="SCORE"

switch(global.Language)
{
case 1:
var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECTO"
var _t4="BIEN"
var _t5="PUNTOS"
break;

case 2:
var _t1="SEM BÔNUS"
var _t2="BÔNUS"
var _t3="PERFEITO"
var _t4="BOM"
var _t5="PONTUAÇÃO"
break;
}


var _t1="GET READY TO RUN!"
var _t2="ATTACK  \nFOR RUN"
var _t3="  JUMP\nFOR AVOIDING\nOBSTACLES"
var _t4="GOOD"
var _t5="SCORE"

switch(global.Language)
{
case 1:
var _t1="PREPÁRATE PARA CORRER!"
var _t2="ATACAR  \nPARA CORRER"
var _t3="  SALTAR\nPARA EVITAR\nOBSTÁCULOS"
var _t4="BIEN"
var _t5="PUNTOS"
break;
case 2:
var _t1="PREPARE-SE PARA CORRER!"
var _t2="ATACAR  \nPARA CORRER"
var _t3="  SALTAR\nPARA EVITAR\nOBSTÁCULOS"
var _t4="BOM"
var _t5="PONTUAÇÃO"
break;
}
	
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,20,_t1)
draw_set_halign(fa_right)
draw_text(160,32,_t2)
draw_set_halign(fa_left)
draw_text(160,32,_t3)


}
else
{
if stageClear=0
bullx=lerp(bullx,0,0.1)

if bullx>-32
if brokengate=0
{
brokengate=1

PlaySound(snd_explosion)

dor1=instance_create_depth(30-rundist,180,0,oBarrel) with dor1  //87
{sprite_index=spr_bullgate2 image_index=1 z-=62
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=2 mask_index=mask_none
sentflying=2 image_index=0 alarm[0]=2 shadow=mask_none}

dor2=instance_create_depth(60-rundist,150,0,oBarrel) with dor2
{sprite_index=spr_bullgate2 z-=32
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-16 hspeed=3 mask_index=mask_none
sentflying=4 image_index=0 alarm[0]=2 shadow=mask_none}
}

draw_sprite(spr_bigbullrun,current_time/100,round(bullx),178)

draw_sprite(spr_bullbar,0,26,224)
}

draw_sprite(spr_bullgate,0,-rundist,0)

if brokengate=0
draw_sprite(spr_bullgate,2,-rundist,0)

draw_sprite(spr_bullbar,0,26,224)

if instance_exists(oBullPlayer)
with oBullPlayer
{
draw_sprite(spr_bullhang,0,320+16+oBullGame.runmax-oBullGame.runmax*(oBullGame.rundist/oBullGame.runmax),y-96-64-7)

	pal_swap_set(my_pal_sprite,current_pal,false);

draw_sprite_ext(sprite_index,image_index,round(x+shake),round(y+z),image_xscale,1,0,c_white,1)

draw_sprite(spr_bullarrow,character,26+264*(runpos/oBullGame.runmax),224)

	pal_swap_reset();
	shader_reset()


}



if oControl.betatest=1 {draw_text(32,32,rundist)}