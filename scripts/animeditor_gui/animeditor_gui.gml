// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animeditor_gui(){
	if instance_exists(oAnimEditor) with oAnimEditor
{
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_text(0,0,string_hash_to_newline("SPRITE NO. "+string(sprite_index)))
draw_text(0,8,string_hash_to_newline("INDEX NO. "+string(image_index)+string("/")+string(sprite_get_number(sprite_index)-1)))

draw_text(112,8,string_hash_to_newline(""+string_upper(sprite_get_name(sprite_index))))


draw_text(0,16,string_hash_to_newline("VIEW POS. "+string(PosX)+string(", "+string(PosY))))

if grabMode=0{
draw_text(144,0,string_hash_to_newline("COL POS. "+string(colX)+string(", "+string(colZ))))
draw_text(144,16,string_hash_to_newline("COL SCALE. "+string(colSizeX)+string(", ")+string(colSizeZ)))
}
else
{
draw_text(144,0,string_hash_to_newline("GRAB POS. "+string(colX)+string(", "+string(colZ))))
draw_text(144,16,string_hash_to_newline("GRAB SCALE. "+string(colSizeX)+string(", ")+string(colSizeZ)))
}

if grabMode=0
{
draw_text(0,24,string_hash_to_newline("WEAPON MODE: "+string(weaponOn)
+string(", POS X: ")+string(weaponPosX)+string(", POS Y: ")+string(weaponPosX)+
string(", ANGLE: ")+string(weaponAngle))
)
draw_text(0,32,string_hash_to_newline("WEAPON BACK: "+string(weaponBack)+" W INDEX: "+string(weaponIndex)))
}

draw_text(0,40,string_hash_to_newline("ENTER SO COPY COl. POS. TO CLIP"))
draw_text(0,48,string_hash_to_newline("HOLD CTRL TO COPY WEAPON POS. TO CLIP"))


draw_text(0,192,string_hash_to_newline("C- AXIS   G- GRID   Q-COLISSION"))
draw_text(0,200,string_hash_to_newline("ASDW- MOVE CAM   1234- CHANGE SPRITE"))
if grabMode=0
{
draw_text(0,208,string_hash_to_newline("ARROW KEYS- MOVE COLLISION"))
draw_text(0,216,string_hash_to_newline("HOLD SHIFT- CHANGE COLLISION SIZE"))
}
else
{
if grabPos=0 grabText="FLOOR"
if grabPos=1 grabText="WAIST"
if grabPos=2 grabText="HEAD"

draw_text(0,208,string_hash_to_newline("ARROW KEYS- MOVE CROSS"))
draw_text(0,216,string_hash_to_newline("JL- GRAB POS: "+string(grabText)))
}
if grabMode=0
{
draw_text(0,224,string_hash_to_newline("IJKL- MOVE WEAPON  P- WEAPON"))
draw_text(0,232,string_hash_to_newline("UO- WEAPON ANGLE  Y-WEAPON DEPTH"))
}
if textCopied>0
{
draw_text(16,56,string_hash_to_newline(specialText))
}
if textCopied!=0 textCopied-=1 else textCopied=0

draw_sprite_ext(my_pal_sprite,0,320-24,120-60,4,4,0,c_white,1)

draw_set_color(c_white)
draw_rectangle(-16+312+4*current_pal,50,-16+312+4+4*current_pal,208,1)

draw_text(-16+312+4,50-8,string_hash_to_newline(current_pal))

///atkAddX=31 atkAddZ=-46 selfatk.image_xscale=1.35*image_xscale selfatk.height=20

if keyboard_check_pressed(ord("R")) {PosX=0 PosY=0}




}
}