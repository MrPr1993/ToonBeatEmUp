/// @description Insert description here
// You can write your code in this editor



if oPlayer.spawnID=oFishingRod
if oPlayer.anim!=85 and oPlayer.anim!=80 and oPlayer.anim!=81 and oPlayer.anim!=82 and oPlayer.anim!=83 and oPlayer.anim!=84
{
draw_set_color(c_white)
if instance_exists(oPlayer)
{
with oPlayer
{var minimodediv=1; if global.Cheat[5]=1 if global.NoCheat minimodediv=0.25;
oFishingMinigame.weaponAngle=weaponangle+weaponExtraAngle*image_xscale
oFishingMinigame.weaponX=round(x+(((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale+weaponX*(image_xscale*wobbleX))*minimodediv)
oFishingMinigame.weaponY=round(y+trainz+((floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY+weaponY*wobbleY)*minimodediv)


if anim=26 and AnimFrame=1.3
{
draw_set_color(c_white)
draw_rectangle(x+64-1,y-32+1,x+64+16+1,y-32-100-1,false)

draw_set_color(c_red)
draw_rectangle(x+64,y-32,x+64+16,y-32-100,false)
draw_set_color(c_yellow)
draw_rectangle(x+64,y-32,x+64+16,y-32-specialtimes[1],false)

draw_set_color(c_white)
}
}

if oControl.betatest {draw_text(x,y,x+240)}

var ropeang=matrix_build(weaponX,weaponY,0,0,0,weaponAngle*oPlayer.image_xscale,1*oPlayer.image_xscale,1,1);
var ropeang2=matrix_multiply(matrix_build(weaponXadd,weaponYadd,0,0,0,0,1,1,1),ropeang);

var ropeangx=ropeang2[12];
var ropeangy=ropeang2[13];

if Thrown=0
{
x=lerp(x,ropeangx,0.1)
y=lerp(y,oPlayer.y,0.1)
z=lerp(z,oPlayer.z-16,0.8)
}

var inwater=0;
if Thrown=2 inwater=-4

draw_line(ropeangx,ropeangy,x,y+z+inwater)

//draw_line(weaponX+(lengthdir_x(weaponXadd,weaponAngle)),weaponY+(lengthdir_y(weaponYadd,weaponAngle)),x,y+z)


}

draw_sprite_ext(sprite_index,image_index,x,y+z+inwater,oPlayer.image_xscale,1,imageang+270*oPlayer.image_xscale,c_white,1)

if fishout=3
{draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(x,y-16,fishname)
draw_text(x,y-24,"$"+string(fishscore))
draw_set_halign(fa_left)
}
}