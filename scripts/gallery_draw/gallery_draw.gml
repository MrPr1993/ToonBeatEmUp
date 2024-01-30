// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gallery_draw(){
if room=rm_gallery
{

controller_setup()

if gallerybuffer!=0 gallerybuffer-=1
if galleryload!=0 galleryload-=1

if key_cancel or keyboard_check_pressed(vk_escape) {if gallerychoosing=1 {PlaySound(snd_steal) gallerychoosing=0} else room_goto(rm_menu)}

if gallerychoosing=0
if galleryTime=0
{
draw_set_font(global.scorefont)
draw_command(1)

draw_set_font(global.scorefont) draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,2,"CHOOSE A GALLERY") 
if galleryTime=0
draw_text(160,240-12,galleryname) 
draw_set_halign(fa_left)
	///display_set_gui_size(320,240)

	




if key_right_pressed
{PlaySound(snd_select)
if galleryNO=16 galleryNO=1 else 
galleryNO+=1
}
if -key_left_pressed
{PlaySound(snd_select)
if galleryNO=1 galleryNO=16 else 
galleryNO-=1
}
if -key_down_pressed
{PlaySound(snd_select) galleryNO+=4 galleryNO=clamp(galleryNO,1,16)}

if key_up_pressed
{PlaySound(snd_select) galleryNO-=4 galleryNO=clamp(galleryNO,1,16)}

if galleryNO=1 {galleryX=0 galleryY=0 galleryname="VIVA VEGAS"}
if galleryNO=2 {galleryX=1 galleryY=0 galleryname="HINA TATSUO"}
if galleryNO=3 {galleryX=2 galleryY=0 galleryname="BAHATI ABARA"}
if galleryNO=4 {galleryX=3 galleryY=0 galleryname="SOFIA MORENO"}
if galleryNO=5 {galleryX=0 galleryY=1 galleryname="ENEMY SET 1"}
if galleryNO=6 {galleryX=1 galleryY=1 galleryname="ENEMY SET 2"}
if galleryNO=7 {galleryX=2 galleryY=1 galleryname="ENEMY SET 3"}
if galleryNO=8 {galleryX=3 galleryY=1 galleryname="ENEMY SET 4"}
if galleryNO=9 {galleryX=0 galleryY=2 galleryname="BOSS SET 1"}
if galleryNO=10 {galleryX=1 galleryY=2 galleryname="BOSS SET 2"}
if galleryNO=11 {galleryX=2 galleryY=2  galleryname="BOSS SET 3"}
if galleryNO=12 {galleryX=3 galleryY=2  galleryname="BOSS SET 4"}
if galleryNO=13 {galleryX=0 galleryY=3  galleryname="MISC. CHARACTERS"}
if galleryNO=14 {galleryX=1 galleryY=3  galleryname="CONCEPT ART"}
if galleryNO=15 {galleryX=2 galleryY=3  galleryname="KEY ART"}
if galleryNO=16 {galleryX=3 galleryY=3  galleryname="GUEST ART"}
if global.Gallery[galleryNO]=0 galleryname="???"

	if canControl=1{
if key_A or keyboard_check_pressed(vk_enter)
{
if galleryname="???" PlaySound(snd_steal) else
{
PlaySound(snd_picked)
gallerychoosing=1
gallerybuffer=10
draw_set_font(global.scorefont) draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,240-12,galleryname) 
pictureNO=1
pictureMax=4
galleryload=2 galleryTime=2
gallerybuffer=10
canControl=0
}
}
}

//display_set_gui_size(1280,960)

}

if galleryTime!=0
draw_text(160,240-12-16,"LOADING") 


//display_set_gui_size(320,240)

if gallerychoosing=1
if galleryTime=0
{

//display_set_gui_size(window_get_width(),window_get_height())
	//display_set_gui_size(320,240)
if key_taunt {if pictureNO=1 pictureNO=pictureMax else pictureNO-=1 PlaySound(snd_select)}
if key_punchback {if pictureNO=pictureMax pictureNO=1 else pictureNO+=1 PlaySound(snd_select)}


draw_set_font(global.scorefont) draw_set_color(c_white)
if showtext=1
{
draw_command(5)
	
draw_set_halign(fa_left)
draw_text(0,240-12,authorname) 
draw_set_halign(fa_right)
draw_text(320,240-12,string(pictureNO)+"/"+string(pictureMax)) 
draw_set_halign(fa_left)
}
}
if galleryload!=0 {
	galleryTime-=1
	if galleryTime=0
	{gallery_load(galleryNO) canControl=1 galleryload=0}
	}
}
}