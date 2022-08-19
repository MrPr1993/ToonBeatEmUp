// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gallery_draw(){
if room=rm_gallery
{

controller_setup()

if gallerybuffer!=0 gallerybuffer-=1
if galleryload!=0 galleryload-=1

if key_jump or keyboard_check_pressed(vk_escape) {if gallerychoosing=1 {PlaySound(snd_steal) gallerychoosing=0} else room=rm_menu}

if gallerychoosing=0
{
	///display_set_gui_size(320,240)

	
	if canControl=1{
if key_attack or keyboard_check_pressed(vk_enter)
{
PlaySound(snd_picked)
gallerychoosing=1
gallerybuffer=10
draw_set_font(global.scorefont) draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,240-12,galleryname) 
pictureNO=1
pictureMax=4
galleryload=10
gallerybuffer=10
canControl=0
}
}



if key_right_pressed
{PlaySound(snd_select)
if galleryNO=8 galleryNO=1 else 
galleryNO+=1
}
if -key_left_pressed
{PlaySound(snd_select)
if galleryNO=1 galleryNO=8 else 
galleryNO-=1
}
if -key_down_pressed or key_up_pressed
{PlaySound(snd_select)
if galleryNO=1 galleryNO=5 else
if galleryNO=2 galleryNO=6 else 
if galleryNO=3 galleryNO=7 else 
if galleryNO=4 galleryNO=8 else 
if galleryNO=5 galleryNO=1 else
if galleryNO=6 galleryNO=2 else 
if galleryNO=7 galleryNO=3 else 
if galleryNO=8 galleryNO=4 
}

if galleryNO=1 {galleryX=0 galleryY=0 }
if galleryNO=2 {galleryX=1 galleryY=0 }
if galleryNO=3 {galleryX=2 galleryY=0 }
if galleryNO=4 {galleryX=3 galleryY=0 }
if galleryNO=5 {galleryX=0 galleryY=1 }
if galleryNO=6 {galleryX=1 galleryY=1}
if galleryNO=7 {galleryX=2 galleryY=1}
if galleryNO=8 {galleryX=3 galleryY=1}

//display_set_gui_size(1280,960)

draw_set_font(global.scorefont) draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,2,"CHOOSE A GALLERY") 
if galleryload=0
draw_text(160,240-12,galleryname) 
else draw_text(160,240-12,"LOADING") 
draw_set_halign(fa_left)
}


//display_set_gui_size(320,240)

if gallerychoosing=1
{

//display_set_gui_size(window_get_width(),window_get_height())
	//display_set_gui_size(320,240)
if key_taunt {if pictureNO=1 pictureNO=pictureMax else pictureNO-=1 PlaySound(snd_select)}
if key_punchback {if pictureNO=pictureMax pictureNO=1 else pictureNO+=1 PlaySound(snd_select)}


draw_set_font(global.scorefont) draw_set_color(c_white)
if showtext=1
{draw_set_halign(fa_left)
draw_text(0,240-12,authorname) 
draw_set_halign(fa_right)
draw_text(320,240-12,string(pictureNO)+"/"+string(pictureMax)) 
draw_set_halign(fa_left)
}
}
if galleryload!=0 {gallery_load(galleryNO) canControl=1 galleryload=0}
}
}