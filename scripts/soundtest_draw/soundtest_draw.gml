// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function soundtest_draw(){
if room=rm_soundtest
{
controller_setup()

if keyboard_check_pressed(vk_escape) room=rm_menu

if key_up_pressed {if soundSelect=1 soundSelect=8 else soundSelect-=1}
if -key_down_pressed {if soundSelect=8 soundSelect=1 else soundSelect+=1}

	if key_jump
if playingsongname="" {audio_stop_all() room=rm_menu} else {audio_stop_all() playingsongname=""}
if !audio_is_playing(songplaying) playingsongname=""

if soundSelect=1 /////Select Music
{
if key_attack {

	{audio_stop_all()
	playingsongname=songname
playingloop=0
	songID=audio_play_sound(playingSound,1,0)
	audio_sound_gain(playingSound,global.BGMvolume/100,0)
	}	
	songplaying=playingSound
	}
	if key_super {////Loop
playingsongname=songname
playingloop=1
	{audio_stop_all()
	songID=audio_play_sound(playingSound,1,1)
	audio_sound_gain(playingSound,global.BGMvolume/100,0)
	}	
	songplaying=playingSound
	}





if -key_left_pressed if songno=0 songno=20 else songno-=1
if key_right_pressed if songno=20 songno=0 else songno+=1

if songno=0 {songname="OPENING" playingSound=msc_intro}
if songno=1 {songname="STAGE 1" playingSound=msc_stage1}
if songno=2 {songname="PLANE" playingSound=msc_airplane}
if songno=3 {songname="CAR BOAT" playingSound=msc_stage2}
if songno=4 {songname="TRAIN" playingSound=msc_train}
if songno=5 {songname="GRAVE" playingSound=msc_stage4}
if songno=6 {songname="MUSEUM" playingSound=msc_stage3}
if songno=7 {songname="CASINO" playingSound=msc_stage5}
if songno=8 {songname="SWAMPS" playingSound=msc_swamp}
}

if soundSelect=2
{
if key_attack songSPD=1
if -key_left if songSPD>0.01 songSPD-=0.01
if key_right if songSPD<5 songSPD+=0.01
}

	audio_sound_pitch(playingSound,songSPD)
	
if songplaying!=-1
{

songMinTime=audio_sound_get_track_position(songID)

seconds = round(songMinTime) mod 60
seconds2 = round(songMinTime) div 60 mod 60
seconds3 = round(songMinTime) div 3600

songMaxTime=audio_sound_length(songplaying)

secondsMAX = round(songMaxTime) mod 60

secondsMAX2 = round(songMaxTime) div 60 mod 60
secondsMAX3 = round(songMaxTime) div 3600
}

draw_set_font(global.scorefont)
draw_set_halign(fa_center) draw_set_color(c_white)
draw_text(160,8,"SOUND TEST")
if playingsongname!=""
{
if playingloop=0
draw_text(160,32-8,"PLAYING:"+string(playingsongname))
else
draw_text(160,32-8,"PLAYING:"+string(playingsongname)+" (LOOPED)")
}
draw_text(160,32,"MUSIC")
draw_text(64,32+8,"◄")
draw_text(320-64,32+8,"►")
draw_text(160,32+8,songname)
if songplaying!=-1
{
draw_set_halign(fa_right)
if seconds<10
draw_text(160-4,32+16,string(seconds2)+":0"+string(seconds))
else
draw_text(160-4,32+16,string(seconds2)+":"+string(seconds))
draw_set_halign(fa_center)
if soundSelect=1
draw_text(160,32+16,"✰")
draw_set_halign(fa_left)
if secondsMAX<10
draw_text(160+4,32+16,string(secondsMAX2)+":0"+string(secondsMAX))
else
draw_text(160+4,32+16,string(secondsMAX2)+":"+string(secondsMAX))
}
else
{
draw_set_halign(fa_right)
draw_text(160-4,32+16,"0:00")
draw_set_halign(fa_center)
if soundSelect=1
draw_text(160,32+16,"✰")
draw_set_halign(fa_left)
draw_text(160+4,32+16,"0:00")
}


draw_set_halign(fa_right)
draw_text(160-4,32+16+8,"MUSIC SPEED")
draw_set_halign(fa_center)
if soundSelect=2
draw_text(160,32+16+8,"✰")
draw_set_halign(fa_left)
draw_text(160+4,32+16+8,string(round(100*songSPD))+"%")


draw_set_halign(fa_center)
//string(secondsMAX3)+string(":")+string(secondsMAX2)+string(":")+string(secondsMAX)
//draw_text(160,32+16,string(audio_sound_get_))

draw_set_color(c_white)
draw_text(160,64+8,"SOUNDS") //songSPD=1
draw_set_halign(fa_right)
draw_text(160-4,64+16,"SOUND "+string(soundno))
draw_set_halign(fa_center)
if soundSelect=3
{
draw_text(160,64+16,"✰")
if key_attack {PlaySound(playSFX)}
}
draw_set_halign(fa_left)
draw_text(160+4,64+16,soundname)


///Draw the divas
draw_sprite(spr_viva_stand,0,160-96,200)
draw_sprite(spr_hina_stand,0,160-32,200)
draw_sprite(spr_bahati_stand,0,160+32,200)
draw_sprite(spr_sofia_stand,0,160+96,200)

draw_command(6)


}
}