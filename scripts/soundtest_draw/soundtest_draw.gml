// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function soundtest_draw(){
if room=rm_soundtest
{fpsY=8 if global.CurrentMusic!=-1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)
	
///Translation
var _t0="SOUND TEST"
var _t1="PLAYING:"
var _t2=" (LOOPED)"
var _t3="MUSIC"
var _t4="COMPOSER:"
var _t5="MUSIC SPEED"
var _t6="MUSIC VOLUME"
var _t7="SOUND VOLUME"
var _t8="SOUNDS"
var _t9="SETTINGS"
var _t10="SOUND"
var _t11="VOICED BY:"

var _sn0="OPENING FILM"
var _sn1="DOWNTOWN BEAT"
var _sn2="AERIAL WALK"
var _sn3="RUSH OVER THE SEAS"
var _sn4="TRAINING TRAVEL"
var _sn5="GRITTY GRAVES"
var _sn6="MASHUP MUSEUM"
var _sn7="LUCKY DOJO CASINO"
var _sn8="DEEP DEAD SWAMPS"
var _sn9="CLOWNY HONKY CARNIVAL"
var _sn10="DOWNSIDE BEACH"
var _sn11="UFO BEYOND THE STARS"
var _sn12="UNDER THE SEA JAM"
var _sn13="HEATING HOT DESERT"
var _sn14="GREAT CLIMBING COLD"
var _sn15="FANTASTIC FANTASY CAVERNS"
var _sn16="AHEAD IN THE CLOUDS"
var _sn17="DANGEROUS SCIENCE"
var _sn18="ZEPPELIN FINALE"
var _sn19="NASTY FOE TUNE"
var _sn20="BADDY BADDIES JAM"
var _sn21="QUICK VILE MELODY"
var _sn22="DANGEROUS OF TONES"
var _sn23="DASTARDLY SUBJECT"
var _sn24="PIECE OF THE NIGHT"
var _sn25="RISKY REVIVAL"
var _sn26="SHOW'S CANCELLED"
var _sn27="GOOD SHOW"
var _sn28="MARVELOUS FINALE"
var _sn29="ROUGH ROUGHHOUSING"
var _sn30="CONCENTRATING BREAK"
///
var _sn31="MAIN LOBBY"
var _sn32="TONIGHT'S SHOW"
var _sn33="LITTLE IRISH SHOP"
var _sn34="PICKING INFORMATION"
var _sn35="STAGE PREPARATIONS"
var _sn36="TRAININ' GROUNDS"
var _sn37="SOUR SURVIVAL"
var _sn38="CALM FISHER"
var _sn39="HAPPY GAMBLING"
var _sn40="ODD TIME"
var _sn41="FRIGHT MOMENT"
var _sn42="MYSTERY INVESTIGATION"
var _sn43="ACTION SCENE"
var _sn44="SHOW'S END"
var _sn45="OUT OF PLACE..."


switch(global.Language)
{
case 1: ///Espanol
_t0="PRUEBA DE SONIDO"
_t1="TOCANDO:"
_t2=" (EN LOOP)"
_t3="MÚSICA"
_t4="COMPOSITOR:"
_t5="VEL.DE MÚSICA"
_t6="VOL.DE MÚSICA"
_t7="VOL.DE SONIDO"
_t8="SONIDOS"
_t9="AJUSTES"
_t10="SONIDO"
_t11="VOZ POR:"

_sn0="PELÍCULA DE APERTURA"
_sn1="nRITMO DEL CENTRO"
_sn2="CAMINATA AÉREA"
_sn3="CORRER SOBRE LOS MARES"
_sn4="VIAJE DE TRENAMIENTO"
_sn5="nTUMBAS SOMBRÍAS"
_sn6="MUSEO MEZCLADO"
_sn7="CASINO SUERTUDO DE DOJO"
_sn8="PANTANOS PROFUNDAMENTE MUERTOS"
_sn9="CARNAVAL PAYASILLO Y RUIDOSO"
_sn10="PLAYA INVERTIDA"
_sn11="OVNI MÁS ALLÁ DE LAS ESTRELLAS"
_sn12="FIESTA BAJO EL MAR"
_sn13="DESIERTO ARDIENTE"
_sn14="GRAN ESCALADA HELADA"
_sn15="CAVERNAS DE FANTASÍA FANTÁSTICA"
_sn16="ADELANTE ENTRE LAS NUBES"
_sn17="CIENCIA PELIGROSA"
_sn18="ZEPPELIN FINAL"

_sn19="MELODÍA DE CRUEL ENEMY"
_sn20="JAM DESA DESAGRADABLE"
_sn21="MELODÍA RÁPIDA Y VIL"
_sn22="TONOS PELIGROSOS"
_sn23="TEMA VIL"
_sn24="PIEZA DE LA NOCHE"
_sn25="REVIVAL RIESGOSO"
_sn26="EL ESPECTÁCULO FUE CANCELADO"
_sn27="BUEN ESPECTÁCULO"
_sn28="FINAL MARAVILLOSO"
_sn29="SUEÑOS ROMPIDOS"
_sn30="ROMPEDORES DE LA CONCENTRACIÓN"
///
_sn31="VESTÍBULO PRINCIPAL"
_sn32="ESPECTÁCULO DE ESTA NOCHE"
_sn33="PEQUEÑA TIENDA IRLANDESA"
_sn34="SELECCIONANDO INFORMACIÓN"
_sn35="PREPARACIONES DEL ESCENARIO"
_sn36="CAMPOS DE ENTRENAMIENTO"
_sn37="DIFÍCIL SUPERVIVENCIA"
_sn38="PESCADOR TRANQUILO"
_sn39="JUEGO FELIZ"
_sn40="HORA EXTRAÑA"
_sn41="MOMENTO ATERRADOR"
_sn42="INVESTIGACIÓN MISTERIOSA"
_sn43="ESCENA DE ACCIÓN"
_sn44="FIN DEL ESPECTÁCULO"
_sn45="FUERA DE LUGAR..."
break;	
case 2: ///Portuguese
_t0="PRUEBA DE SONIDO"
_t1="TOCANDO:"
_t2=" (EM LOOP)"
_t3="MÚSICA"
_t4="COMPOSITOR:"
_t5="VEL.DE MÚSICA"
_t6="VOL.DA MÚSICA"
_t7="VOL.DO SOM"
_t8="SONS"
_t9="CONFIGURAÇÕES"
_t10="SOM"
_t11="DUBLADA POR:"

_sn0="FILME DE ABERTURA"
_sn1="DISTRITO BEAT"
_sn2="TOUR AÉRIO"
_sn3="LARGADA SOB O MAR"
_sn4="TREMENDA VIAGEM"
_sn5="DENSAS TUMBAS"
_sn6="MUSEU MASHUP"
_sn7="CASINO DOJO LUCKY"
_sn8="BREJO DOS AFOGADOS"
_sn9="FESTIVAL DAS PALHAÇAS ALBINAS"
_sn10="LITORAL TROPICAL"
_sn11="DISCOS ALÉM DAS ESTRELAS"
_sn12="POR ÁGUA ABAIXO"
_sn13="DESERTO ISKH-AL DANT"
_sn14="ALPES DO BATE-QUEIXO"
_sn15="FANTÁSTICA CAVERNA DAS FANTASIAS"
_sn16="ACIMA DAS NUVENS"
_sn17="CIÊNCIA CABULOSA"
_sn18="ZEPPELIN FINALE"

_sn19="MELODIA INIMIGO CRUEL"
_sn20="JAM DESA DESAGRADÁVEL"
_sn21="MELODÍA RÁPIDA E VIL"
_sn22="PERIGOSO DOS TONS"
_sn23="ASUNTO VIL"
_sn24="PEDAÇO DA NOITE"
_sn25="REAVIVAMENTO ARRISCADO"
_sn26="SHOW FOI CANCELADO"
_sn27="BOM SHOW"
_sn28="FINAL MARAVILHOSO"
_sn29="BROMCADEORAS BRUTAS"
_sn30="DISJUNTOR DE CONCENTRAÇÃO"
///
_sn31="LOBBY PRINCIPAL"
_sn32="SHOW DESTA NOITE"
_sn33="PEQUENA LOJA IRLANDESA"
_sn34="ESCOLHENDO INFORMAÇÕES"
_sn35="PREPARATIVOS DE PALCO"
_sn36="CAMPOS DE TREINAMENTO"
_sn37="SOBREVIVÊNCIA DIFÍCIL"
_sn38="PESCADOR CALMO"
_sn39="JOGO FELIZ"
_sn40="HORA ESTRANHA"
_sn41="MOMENTO DE SUSTO"
_sn42="INVESTIGAÇÃO MISTERIOSA"
_sn43="CENA DE AÇÃO"
_sn44="MOSTRA FIM"
_sn45="FORA DO LUGAR"

break;
}

draw_sprite(bg_soundtest,0,0,0)
draw_sprite_ext(bg_soundtest,0,320,0,-1,1,0,c_white,1)

if keyboard_check_pressed(vk_escape) {room_goto(rm_menu) settings_save()}

matrix_set(matrix_world,matrix_build(160,163-1,0,85,0,0,1+0.01*recordscale,1-0.07*recordscale,1))
draw_sprite_ext(spr_soundtestrec,0,0,0,1,1,0,c_black,1)
matrix_set(matrix_world,matrix_build(160,163-3,0,85,0,0,1+0.01*recordscale,1-0.07*recordscale,1))
draw_sprite_ext(spr_soundtestrec,0,0,0,1,1,recordAng,image_blend,1)
matrix_set(matrix_world,matrix_build(234,152,0+0.05*cos(recordAng),85,0,0,1,1,1))

draw_sprite_ext(spr_soundtestrec2,0,0,0,1,1,recordAng2,c_white,1)
matrix_set(matrix_world,matrix_build_identity())

if instance_exists(oCameoChar) with oCameoChar draw_self()



if playingsongname=""
{dancersfade=lerp(dancersfade,1,0.5)
dancer1img=1
dancer2img=1
dancer3img=1
dancer4img=1
recordAng2=lerp(recordAng2,45,0.1)

}
else
{dancersfade=lerp(dancersfade,0,0.5)
soundtest_dance()
dancer1img=image_index
dancer2img=image_index
dancer3img=image_index
dancer4img=image_index

if audio_is_playing(songplaying)
{image_blend=recordcol
		
	if songnote>0.5 recordscale=lerp(recordscale,0,0.1) else
	recordscale=lerp(recordscale,1,0.1)
	
	songnote+=1*songSPD if songnote>(60*songSPD)
	{songnote=0
camnote=instance_create_depth(160+choose(-random_range(20,80),random_range(20,80)),156,-1,oCameoChar)
camnote.visible=0 	camnote.anim=666 
with camnote 
{
	if x>160 hspeed=random_range(1,3) else hspeed=-random_range(1,3)
	sprite_index=spr_musicnotes image_index=random(7) image_xscale=random_range(0.5,1) image_yscale=image_xscale
image_blend=choose(c_blue,c_red,c_yellow,c_green) vspeed=-random_range(2,4)
newscript=function()
{vspeed+=0.22 if vspeed>0 {image_alpha-=0.01 if image_alpha<0 instance_destroy()}
}
}

}	
recordAng+=1*songSPD
recordAng2=lerp(recordAng2,22,0.1)
} else {recordscale=lerp(recordscale,0,0.1) recordAng2=lerp(recordAng2,45,0.1) songnote=0}

}

if songtext=1
{
if key_up_pressed {if soundSelect=1 soundSelect=5 else soundSelect-=1}
if -key_down_pressed {if soundSelect=5 soundSelect=1 else soundSelect+=1}

	if key_B
if playingsongname="" {dancer1turn=1 dancer2turn=1 dancer3turn=1 dancer4turn=1 audio_stop_all() settings_save() room_goto(rm_menu) AnimFrame=0} else {dancer1turn=1 dancer2turn=1 dancer3turn=1 dancer4turn=1 AnimFrame=0 audio_stop_all() playingsongname=""
dancer1img=1
dancer2img=1
dancer3img=1
dancer4img=1
	}
if !audio_is_playing(songplaying) playingsongname=""




if soundSelect=1 /////Select Music
{

if key_A {

	{audio_stop_all() AnimFrame=0
	playingsongname=songname
playingloop=0
	songID=audio_play_sound(playingSound,1,0)
	audio_sound_gain(playingSound,global.BGMvolume/100,0)
	recordcol=recordcol2 recordscale=1.1
	
	}	
	songplaying=playingSound
	}
	if key_X {////Loop
playingsongname=songname
playingloop=1
	{audio_stop_all()
	songID=audio_play_sound(playingSound,1,1)
	audio_sound_gain(playingSound,global.BGMvolume/100,0)
	
	recordcol=recordcol2 recordscale=1.1
	}	
	songplaying=playingSound
	}





if -key_left_pressed if songno=0 songno=45 else songno-=1
if key_right_pressed if songno=45 songno=0 else songno+=1


if songno=0 {recordcol2=c_white songname=_sn0 playingSound=msc_intro songcomposer="JONORSI"}
if songno=1 {recordcol2=#AC482F songname=_sn1 playingSound=msc_stage1 songcomposer="JONORSI"}
if songno=2 {recordcol2=#737A65 songname=_sn2 playingSound=msc_airplane songcomposer="JONORSI"}
if songno=3 {recordcol2=#006B9C songname=_sn3 playingSound=msc_stage2 songcomposer="JONORSI"}
if songno=4 {recordcol2=#BD6300 songname=_sn4 playingSound=msc_train songcomposer="JONORSI"}
if songno=5 {recordcol2=#005026 songname=_sn5 playingSound=msc_stage4 songcomposer="JONORSI"}
if songno=6 {recordcol2=#D5D7CF songname=_sn6 playingSound=msc_stage3 songcomposer="JONORSI"}
if songno=7 {recordcol2=#FF65A0 songname=_sn7 playingSound=msc_stage5 songcomposer="JONORSI"}
if songno=8 {recordcol2=#66710E songname=_sn8 playingSound=msc_swamp songcomposer="JONORSI"}
if songno=9 {recordcol2=#29B6F9 songname=_sn9 playingSound=msc_carnival songcomposer="EVADER MUSIC"}
if songno=10 {recordcol2=#FFEE70 songname=_sn10 playingSound=msc_beach songcomposer="EVADER MUSIC"}
if songno=11 {recordcol2=#9147B2 songname=_sn11 playingSound=msc_ufo songcomposer="EVADER MUSIC"}
if songno=12 {recordcol2=#29397B songname=_sn12 playingSound=msc_underwater songcomposer="JONORSI"}
if songno=13 {recordcol2=#EAC685 songname=_sn13 playingSound=msc_desert songcomposer="EVADER MUSIC"}
if songno=14 {recordcol2=#3277BE songname=_sn14 playingSound=msc_snowmountain songcomposer="EVADER MUSIC"}//X
if songno=15 {recordcol2=#72004A songname=_sn15 playingSound=msc_cave songcomposer="EVADER MUSIC"}//X
if songno=16 {recordcol2=#E55BE0 songname=_sn16 playingSound=msc_clouds songcomposer="EVADER MUSIC"}//X
if songno=17 {recordcol2=#5B9995 songname=_sn17 playingSound=msc_lab songcomposer="JONORSI"}
if songno=18 {recordcol2=c_red songname=_sn18 playingSound=msc_zeppelin songcomposer="EVADER MUSIC"}//X
if songno=19 {recordcol2=#890200 songname="NASTY FOE TUNE" playingSound=msc_boss songcomposer="JONORSI"}
if songno=20 {recordcol2=#990200 songname="BADDY BADDIES JAM" playingSound=msc_boss2 songcomposer="JONORSI"}
if songno=21 {recordcol2=#C91122 songname="QUICK VILE MELODY" playingSound=msc_boss3 songcomposer="EVADER MUSIC"}//X
if songno=22 {recordcol2=#680200 songname="DANGEROUS OF TONES" playingSound=msc_boss4 songcomposer="EVADER MUSIC"}//X
if songno=23 {recordcol2=#FF002C songname="DASTARDLY SUBJECT" playingSound=msc_finalboss1 songcomposer="EVADER MUSIC"}
if songno=24 {recordcol2=#5E6091 songname="PIECE OF THE NIGHT" playingSound=msc_finalboss2 songcomposer="EVADER MUSIC"}
if songno=25 {recordcol2=c_gray songname="RISKY REVIVAL" playingSound=msc_countdown songcomposer="JONORSI"}
if songno=26 {recordcol2=c_dkgray songname="SHOW'S CANCELLED" playingSound=msc_gameover songcomposer="JONORSI"}
if songno=27 {recordcol2=c_orange songname="GOOD SHOW" playingSound=msc_stageclear songcomposer="JONORSI"}
if songno=28 {recordcol2=c_yellow songname="MARVELOUS FINALE" playingSound=msc_finalbossclear songcomposer="EVADER MUSIC"}
if songno=29 {recordcol2=#508060 songname="ROUGH ROUGHHOUSING" playingSound=msc_minigame1 songcomposer="EVADER MUSIC"}
if songno=30 {recordcol2=#B7B7B7 songname="CONCENTRATING BREAK" playingSound=msc_minigame2 songcomposer="EVADER MUSIC"}
///
if songno=31 {recordcol2=c_navy songname="MAIN LOBBY" playingSound=msc_mainmenu songcomposer="EVADER MUSIC"}
if songno=32 {recordcol2=c_blue songname="TONIGHT'S SHOW" playingSound=msc_charselect songcomposer="JONORSI"}
if songno=33 {recordcol2=#EF8400 songname="LITTLE IRISH SHOP" playingSound=msc_gallery songcomposer="EVADER MUSIC"}
if songno=34 {recordcol2=#FFCEC6 songname="PICKING INFORMATION" playingSound=msc_profile songcomposer="EVADER MUSIC"}
if songno=35 {recordcol2=#4D1E0A songname="STAGE PREPARATIONS" playingSound=msc_stageselect songcomposer="EVADER MUSIC"}
if songno=36 {recordcol2=#2E3192 songname="TRAININ' GROUNDS" playingSound=msc_training songcomposer="EVADER MUSIC"}
if songno=37 {recordcol2=#FFBE46 songname="SOUR SURVIVAL" playingSound=msc_survival songcomposer="EVADER MUSIC"}
if songno=38 {recordcol2=#66B4FF songname="CALM FISHER" playingSound=msc_fishing songcomposer="EVADER MUSIC"}
if songno=39 {recordcol2=#FCC971 songname="HAPPY GAMBLING" playingSound=msc_casinogame songcomposer="EVADER MUSIC"}
if songno=40 {recordcol2=c_purple songname="ODD TIME" playingSound=msc_weird songcomposer="EVADER MUSIC"}
if songno=41 {recordcol2=c_green songname="FRIGHT MOMENT" playingSound=msc_scary songcomposer="EVADER MUSIC"}
if songno=42 {recordcol2=c_maroon songname="MYSTERY INVESTIGATION" playingSound=msc_mystery songcomposer="EVADER MUSIC"}
if songno=43 {recordcol2=c_teal songname="ACTION SCENE" playingSound=msc_action songcomposer="EVADER MUSIC"}
if songno=44 {recordcol2=#18194C songname="SHOW'S END" playingSound=msc_credits songcomposer="EVADER MUSIC"}
if songno=45 {recordcol2=c_ltgray songname="OUT OF PLACE..." playingSound=msc_secretboss songcomposer="EVADER MUSIC"}



}

if soundSelect=2
{
if key_A songSPD=1
if -key_left if songSPD>0.01 songSPD-=0.01
if key_right if songSPD<5 songSPD+=0.01
}
audio_sound_gain(playingSound,global.BGMvolume/100,0)
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
draw_text(160,8,_t0)
if playingsongname!=""
{
if playingloop=0
draw_text(160,32-8,string(_t1)+string(playingsongname))
else
draw_text(160,32-8,string(_t1)+string(playingsongname)+_t2)
}
draw_text(160,32,_t3)
draw_text(64,32+8,"")
draw_text(320-64,32+8,"")
draw_text(160,32+8,"◄ "+string(songname)+" ►")
draw_text(160,32+24,string(_t4)+string(songcomposer))
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
draw_text(160-4,32+16+16,_t5)

draw_text(160-4,64+24+8+8,_t6)
draw_text(160-4,64+24+8+16,_t7)

draw_set_halign(fa_center)
if soundSelect=2
draw_text(160,32+16+16,"✰")
draw_set_halign(fa_left)
draw_text(160+4,32+16+16,string(round(100*songSPD))+"%")

draw_text(160+4,64+24+8+8,string(global.BGMvolume)+string("%"))
draw_text(160+4,64+24+8+16,string(global.SFXvolume)+string("%"))

draw_set_halign(fa_center)
//string(secondsMAX3)+string(":")+string(secondsMAX2)+string(":")+string(secondsMAX)
//draw_text(160,32+16,string(audio_sound_get_))



draw_set_color(c_white)
draw_text(160,64+16-4,_t8) //songSPD=1

draw_text(160,64+24+8,_t9) //songSPD=1
draw_set_halign(fa_right)

draw_text(160-4,64+24-4,"◄ "+string(_t10)+" "+string(soundno))
draw_set_halign(fa_center)
if voiceActor!=""
draw_text(160-4,64+32-4,string(_t11)+string(voiceActor))
if soundSelect=3
{////Check Sounds
draw_text(160,64+24-4,"✰")

//soundname="VIVA 1" playSFX=snd_viva4 voiceActor=""
voiceActor=""

var _maxsounds=564

if -key_left_pressed if soundno=1 soundno=_maxsounds else soundno-=1
if key_right_pressed if soundno=_maxsounds soundno=1 else soundno+=1
soundtest_sounds()

if key_A {PlaySound(playSFX)}

}
draw_set_halign(fa_left)
draw_text(160+4,64+24-4,string(soundname)+" ►")

draw_set_color(c_white)


if soundSelect=4
{
draw_text(160-4,64+24+8+8,"✰")

if -key_left
{if global.BGMvolume!=0 global.BGMvolume-=1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)}


if key_right
{if global.BGMvolume!=100 global.BGMvolume+=1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)}


}

if soundSelect=5
{
draw_text(160-4,64+24+8+16,"✰")
if -key_left
{if global.SFXvolume!=0 global.SFXvolume-=1}

if key_right
{if global.SFXvolume!=100 global.SFXvolume+=1}

}
}

if key_Y
if songtext=1 songtext=0 else songtext=1


///Draw the divas
if x=99999999999
{
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
}

draw_command(6)





}


}