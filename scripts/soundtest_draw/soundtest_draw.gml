// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function soundtest_draw(){
if room=rm_soundtest
{fpsY=8
controller_setup()

draw_sprite(bg_soundtest,0,0,0)
draw_sprite_ext(bg_soundtest,0,320,0,-1,1,0,c_white,1)

if keyboard_check_pressed(vk_escape) room=rm_menu

if playingsongname=""
{dancersfade=lerp(dancersfade,1,0.5)
dancer1img=1
dancer2img=1
dancer3img=1
dancer4img=1
}
else
{dancersfade=lerp(dancersfade,0,0.5)
soundtest_dance()
dancer1img=image_index
dancer2img=image_index
dancer3img=image_index
dancer4img=image_index
}

if songtext=1
{
if key_up_pressed {if soundSelect=1 soundSelect=8 else soundSelect-=1}
if -key_down_pressed {if soundSelect=8 soundSelect=1 else soundSelect+=1}

	if key_jump
if playingsongname="" {dancer1turn=1 dancer2turn=1 dancer3turn=1 dancer4turn=1 audio_stop_all() room=rm_menu animFrame=0} else {dancer1turn=1 dancer2turn=1 dancer3turn=1 dancer4turn=1 animFrame=0 audio_stop_all() playingsongname=""
dancer1img=1
dancer2img=1
dancer3img=1
dancer4img=1
	}
if !audio_is_playing(songplaying) playingsongname=""




if soundSelect=1 /////Select Music
{

if key_attack {

	{audio_stop_all() animFrame=0
	playingsongname=songname
playingloop=0
	songID=audio_play_sound(playingSound,1,0)
	audio_sound_gain(playingSound,global.BGMvolume/100,0)
	}	
	songplaying=playingSound
	}
	if key_shield_pressed {////Loop
playingsongname=songname
playingloop=1
	{audio_stop_all()
	songID=audio_play_sound(playingSound,1,1)
	audio_sound_gain(playingSound,global.BGMvolume/100,0)
	}	
	songplaying=playingSound
	}





if -key_left_pressed if songno=0 songno=30 else songno-=1
if key_right_pressed if songno=30 songno=0 else songno+=1

if songno=0 {songname="OPENING FILM" playingSound=msc_intro songcomposer="JONORSI"}
if songno=1 {songname="DOWNTOWN BEAT" playingSound=msc_stage1 songcomposer="JONORSI"}
if songno=2 {songname="AERIAL WALK" playingSound=msc_airplane songcomposer="JONORSI"}
if songno=3 {songname="RUSH OVER THE SEA" playingSound=msc_stage2 songcomposer="JONORSI"}
if songno=4 {songname="TRAINING TRAVEL" playingSound=msc_train songcomposer="JONORSI"}
if songno=5 {songname="GRITTY GRAVES" playingSound=msc_stage4 songcomposer="JONORSI"}
if songno=6 {songname="MASHUP MUSEUM" playingSound=msc_stage3 songcomposer="JONORSI"}
if songno=7 {songname="LUCKY DOJO CASINO" playingSound=msc_stage5 songcomposer="JONORSI"}
if songno=8 {songname="DEEP DEAD SWAMPS" playingSound=msc_swamp songcomposer="JONORSI"}
if songno=9 {songname="CLOWNY HONKY CARNIVAL" playingSound=msc_carnival songcomposer="EVADER MUSIC"}
if songno=10 {songname="DOWNSIDE BEACH" playingSound=msc_beach songcomposer="EVADER MUSIC"}
if songno=11 {songname="UFO BEYOND THE STARS" playingSound=msc_ufo songcomposer="EVADER MUSIC"}
if songno=12 {songname="UNDER THE SEA JAM" playingSound=msc_underwater songcomposer="JONORSI"}
if songno=13 {songname="HEATING HOT DESERT" playingSound=msc_desert songcomposer="EVADER MUSIC"}
if songno=14 {songname="GREAT CLIMBING COLD" playingSound=msc_snowmountain songcomposer="EVADER MUSIC"}//X
if songno=15 {songname="FANTASTIC FANTASY CAVERNS" playingSound=msc_swamp songcomposer="EVADER MUSIC"}//X
if songno=16 {songname="AHEAD IN THE CLOUDS" playingSound=msc_swamp songcomposer="EVADER MUSIC"}//X
if songno=17 {songname="DANGEROUS SCIENCE" playingSound=msc_lab songcomposer="JONORSI"}
if songno=18 {songname="ZEPPELIN FINALE" playingSound=msc_swamp songcomposer="EVADER MUSIC"}//X
if songno=19 {songname="NASTY FOE" playingSound=msc_boss songcomposer="JONORSI"}
if songno=20 {songname="BADDY JAM" playingSound=msc_boss2 songcomposer="JONORSI"}
if songno=21 {songname="BOSS3" playingSound=msc_boss songcomposer="JONORSI"}//X
if songno=22 {songname="BOSS4" playingSound=msc_boss2 songcomposer="JONORSI"}//X
if songno=23 {songname="RISKY REVIVAL" playingSound=msc_countdown songcomposer="JONORSI"}
if songno=24 {songname="SHOW'S OVER" playingSound=msc_gameover songcomposer="JONORSI"}
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
draw_text(160,32+24,"COMPOSER:"+string(songcomposer))
if songplaying!=-1
{
////Beta Test for timer
if betatest=1
{
draw_set_halign(fa_left)
draw_text(0,0,audio_sound_get_track_position(songID))
}
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
draw_text(160-4,32+16+16,"MUSIC SPEED")
draw_set_halign(fa_center)
if soundSelect=2
draw_text(160,32+16+16,"✰")
draw_set_halign(fa_left)
draw_text(160+4,32+16+16,string(round(100*songSPD))+"%")


draw_set_halign(fa_center)
//string(secondsMAX3)+string(":")+string(secondsMAX2)+string(":")+string(secondsMAX)
//draw_text(160,32+16,string(audio_sound_get_))

draw_set_color(c_white)
draw_text(160,64+16-4,"SOUNDS") //songSPD=1
draw_set_halign(fa_right)
draw_text(160-4,64+24-4,"SOUND "+string(soundno))
draw_set_halign(fa_center)
if voiceActor!=""
draw_text(160-4,64+32-4,"VOICED BY:"+string(voiceActor))
if soundSelect=3
{////Check Sounds
draw_text(160,64+24-4,"✰")

//soundname="VIVA 1" playSFX=snd_viva4 voiceActor=""
voiceActor=""

if -key_left_pressed if soundno=1 soundno=30 else soundno-=1
if key_right_pressed if soundno=300 soundno=1 else soundno+=1
soundtest_sounds()

if key_attack {PlaySound(playSFX)}

}
draw_set_halign(fa_left)
draw_text(160+4,64+24-4,soundname)

}

if key_super
if songtext=1 songtext=0 else songtext=1

///Draw the divas
draw_sprite(spr_shadow,0,40,200)
draw_sprite_ext(dancer1spr,dancer1img,40,200,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(dancer1spr,dancer1img,40,200,dancer1turn,1,0,c_black,dancersfade)


draw_sprite(spr_shadow,0,40+80-6,200)
draw_sprite_ext(dancer2spr,dancer2img,40+80-6,200,dancer2turn,1,0,c_white,1) ///Hina
draw_sprite_ext(dancer2spr,dancer2img,40+80-6,200,dancer2turn,1,0,c_black,dancersfade)


draw_sprite(spr_shadow,0,40+160,200)
draw_sprite_ext(dancer3spr,dancer3img,40+160,200,dancer3turn,1,0,c_white,1) ///Bahati
draw_sprite_ext(dancer3spr,dancer3img,40+160,200,dancer3turn,1,0,c_black,dancersfade)

draw_sprite(spr_shadow,0,40+240-2,200)
draw_sprite_ext(dancer4spr,dancer4img,40+240-2,200,dancer4turn,1,0,c_white,1) ///Sofia
draw_sprite_ext(dancer4spr,dancer4img,40+240-2,200,dancer4turn,1,0,c_black,dancersfade)


draw_command(6)


}


}