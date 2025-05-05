/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if introbuffer!=0 introbuffer-=1
if charbuffer!=0 charbuffer-=1
soldout=0;

/////See if the character is available
if (controlNO=1 and oControl.p2.charadded=2 and oControl.p2.charno=charno)
or (controlNO=1 and oControl.p3.charadded=2 and oControl.p3.charno=charno)
or (controlNO=1 and oControl.p4.charadded=2 and oControl.p4.charno=charno)
or (controlNO=2 and oControl.p1.charadded=2 and oControl.p1.charno=charno)
or (controlNO=2 and oControl.p3.charadded=2 and oControl.p3.charno=charno)
or (controlNO=2 and oControl.p4.charadded=2 and oControl.p4.charno=charno)
or (controlNO=3 and oControl.p2.charadded=2 and oControl.p2.charno=charno)
or (controlNO=3 and oControl.p1.charadded=2 and oControl.p1.charno=charno)
or (controlNO=3 and oControl.p4.charadded=2 and oControl.p4.charno=charno)
or (controlNO=4 and oControl.p2.charadded=2 and oControl.p2.charno=charno)
or (controlNO=4 and oControl.p3.charadded=2 and oControl.p3.charno=charno)
or (controlNO=4 and oControl.p1.charadded=2 and oControl.p1.charno=charno)
soldout=1;
////

var _exitroom=0;
if controlNO=9
{
if controlNO!=0 controller_setup()
if (key_cancelH or keyboard_check(vk_escape))
{exitroom+=0.01; if difficultymode=1 exitroom=9} else exitroom=0;
if exitroom>=1
{_exitroom=1;}

	global.P1available=(oControl.p1.isReady)
	global.P2available=(oControl.p2.isReady)
	global.P3available=(oControl.p3.isReady)
	global.P4available=(oControl.p4.isReady)
}


var canselect=1;

SelectingX=lerp(SelectingX,0,0.5)


if controlNO=1 charno=global.P1Char
if controlNO=2 charno=global.P2Char
if controlNO=3 charno=global.P3Char
if controlNO=4 charno=global.P4Char

var palmax=15; if global.UnlockAltPal2 palmax=31;
var charcheck=spr_vivapal;
var customcheck=spr_custompal
if charno=1 
{charcheck=spr_hinapal;
customcheck=spr_custompal2}
if charno=2
{charcheck=spr_bahatipal;
customcheck=spr_custompal3}
if charno=3 
{charcheck=spr_sofiapal;
customcheck=spr_custompal4}

if custommode=0
{
if controlNO=1 global.p1Pals=charcheck
if controlNO=2 global.p2Pals=charcheck
if controlNO=3 global.p3Pals=charcheck
if controlNO=4 global.p4Pals=charcheck
}
else
{
if controlNO=1 global.p1Pals=customcheck
if controlNO=2 global.p2Pals=customcheck
if controlNO=3 global.p3Pals=customcheck
if controlNO=4 global.p4Pals=customcheck
}

if charno=0
{sprite_index=spr_csviva picksound=snd_viva1
ability1="✰✰✰" ability2="✰✰✰" ability3="✰✰✰"
}
if charno=1
{sprite_index=spr_cshina picksound=snd_hina1
ability1="✰✰✰" ability2="✰✰" ability3="✰✰✰✰"}
if charno=2
{sprite_index=spr_csbahati picksound=snd_bahati1
ability1="✰✰✰✰✰" ability2="✰" ability3="✰✰"}
if charno=3
{sprite_index=spr_cssofia picksound=snd_sofia1
ability1="✰" ability2="✰✰✰✰✰" ability3="✰✰✰"}
introtextadd+=introtextaddspd
if canControl!=0
{
controller_setup()

if controlNO=9
{


if difficultymode=1 
{

oCharacterSelectPlayer.charadded=0
oCharacterSelectPlayer.charaddedbuffer=0

if introprep=0
{
introprep=1 introtextadd+=640
	oControl.p1.x+=640
	oControl.p2.x+=640
	oControl.p3.x+=640
	oControl.p4.x+=640
	

	
	blk=instance_create_depth(320,0,-1,oFlashFX) with blk
	{sprite_index=spr_block image_xscale=-9999 image_yscale=8888 hspeed=-32
	image_blend=c_black isDepth=0 depth=-8888 alarm[0]=100 image_speed=0 haspal=0
	}

if global.MultiVS=888880
{
	
if oControl.charselectgo=0
{
if key_up_pressed{if oControl.multiVSsetting=0 oControl.multiVSsetting=1 else oControl.multiVSsetting-=1 PlaySound(snd_select)}
if -key_down_pressed{if oControl.multiVSsetting=1 oControl.multiVSsetting=1 else oControl.multiVSsetting+=1 PlaySound(snd_select)}

if oControl.multiVSsetting=0
{

if -key_left_pressed {if global.Difficulty=0 global.Difficulty=4 else global.Difficulty-=1 PlaySound(snd_select)}
if key_right_pressed {if global.Difficulty=4 global.Difficulty=0 else global.Difficulty+=1 PlaySound(snd_select)}
}
if oControl.multiVSsetting=1
{
if -key_left_pressed or key_right_pressed {global.FriendlyFire^=1 PlaySound(snd_select)}
}
}

}
}
else
{

}

if global.TrainingRoom=1 or global.MultiVS=2 or global.SkipDifficulty=1
{
	difficultymode=0 oControl.charsetting=1
		oCharacterSelectPlayer.hspeed=-32

//Drop player sources
var _i = 0;
repeat(INPUT_MAX_PLAYERS)
{
    input_source_clear(_i);
    ++_i;
}
input_source_mode_set(INPUT_SOURCE_MODE.JOIN);	
introtextaddspd=-32
	
layer_hspeed("BGbricks",-32)
	alarm[0]=20
}

if introbuffer=0
{
if global.TrainingRoom=1 or global.MultiVS=2 or global.SkipDifficulty=1 or
key_A {
	
	if oControl.deletefile=0
	{
	if oControl.charselectgo=1
	PlaySound(snd_picked) else PlaySound(snd_steal)
	
if oControl.charselectgo=1
{
//Drop player sources
var _i = 0;
repeat(INPUT_MAX_PLAYERS)
{
    input_source_clear(_i);
    ++_i;
}

	difficultymode=0 oControl.charsetting=1
		oCharacterSelectPlayer.hspeed=-32
	
introtextaddspd=-32
	
layer_hspeed("BGbricks",-32)
	alarm[0]=20

}



}
}
}

}
else
{
if introprep=0
{

}

//if oControl.p1.isReady=0
isReady=0
//else
isReady=(oControl.p1.isReady)+(oControl.p2.isReady)+(oControl.p3.isReady)+(oControl.p4.isReady)

if isReady!=0 oControl.characterSelReady=1
else oControl.characterSelReady=0

if charaddedbuffer!=0 charaddedbuffer-=1

if key_start or keyboard_check_pressed(vk_enter)
if isReady!=0 and charbuffer=0 {PlaySound(snd_picked) oCharacterSelectPlayer.canControl=0
	oControl.alarm[4]=60	 ////PLAY GAME
	oCharacterSelectPlayer.hspeed=-16
layer_hspeed("BGbricks",-16) introtextaddspd=-16
	blk=instance_create_depth(320,0,-1,oFlashFX) with blk
	{sprite_index=spr_block image_xscale=9999 image_yscale=8888 hspeed=-16
	image_blend=c_black isDepth=0 depth=-8888 alarm[0]=100 image_speed=0  haspal=0
	}
	

	
 global.multiMode=(oControl.p1.isReady)+(oControl.p2.isReady)+(oControl.p3.isReady)+(oControl.p4.isReady)
	
	}



}
}
else
{
if charadded=0
{isReady=0
if introbuffer=0
{
//if key_A // or controlNO=1
if (key_LT and key_RTh) or (key_RT and key_LTh)
{charadded=1 charaddedbuffer=20
	//if controlNO!=1 
	PlaySoundNoStack(snd_picked)
}
}
}

if charaddedbuffer!=0 charaddedbuffer-=1



if charadded=1 and charaddedbuffer=0
{image_index=0 isReady=0

if key_B
{
if palettemode=0
{
charadded=0 charaddedbuffer=20 oControl.p5.charaddedbuffer=2
PlaySoundNoStack(snd_steal)
}
}


if controlNO=1
{
if palettemode=0
{


if -key_left_pressed {SelectingX=-2 if global.P1Char=0 global.P1Char=3 else global.P1Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {SelectingX=2 if global.P1Char=3 global.P1Char=0 else global.P1Char+=1 PlaySoundNoStack(snd_select)}
}

if palettemode=1
{
if global.UnlockAltPal3
{
if key_up_pressed custommode^=1;
if -key_down_pressed custommode^=1;

if controlNO=1 global.p1CPal=custommode
if controlNO=2 global.p2CPal=custommode
if controlNO=3 global.p3CPal=custommode
if controlNO=4 global.p4CPal=custommode
}
}

if global.UnlockAltPal=1 if palettemode=1
{
if -key_left_pressed if global.p1Pal=0 global.p1Pal=palmax else global.p1Pal-=1
if key_right_pressed if global.p1Pal=palmax global.p1Pal=0 else global.p1Pal+=1

if global.UnlockAltPal=2
{
if key_up_pressed custommode^=1;
if -key_down_pressed custommode^=1;
}

}
charno=global.P1Char}
if controlNO=2
{
if palettemode=0
{
if -key_left_pressed {SelectingX=-2 if global.P2Char=0 global.P2Char=3 else global.P2Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {SelectingX=2 if global.P2Char=3 global.P2Char=0 else global.P2Char+=1 PlaySoundNoStack(snd_select)}
}
if global.UnlockAltPal=1 if palettemode=1
{
if -key_left_pressed if global.p2Pal=0 global.p2Pal=palmax else global.p2Pal-=1
if key_right_pressed if global.p2Pal=palmax global.p2Pal=0 else global.p2Pal+=1





}
charno=global.P2Char}
if controlNO=3
{
if palettemode=0
{
if -key_left_pressed {SelectingX=-2 if global.P3Char=0 global.P3Char=3 else global.P3Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {SelectingX=2 if global.P3Char=3 global.P3Char=0 else global.P3Char+=1 PlaySoundNoStack(snd_select)}
}

if global.UnlockAltPal=1 if palettemode=1
{
if -key_left_pressed if global.p3Pal=0 global.p3Pal=palmax else global.p3Pal-=1
if key_right_pressed if global.p3Pal=palmax global.p3Pal=0 else global.p3Pal+=1


}
charno=global.P3Char}
if controlNO=4
{
if palettemode=0
{
if -key_left_pressed {SelectingX=-2 if global.P4Char=0 global.P4Char=3 else global.P4Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {SelectingX=2 if global.P4Char=3 global.P4Char=0 else global.P4Char+=1 PlaySoundNoStack(snd_select)}
}
if global.UnlockAltPal=1 if palettemode=1
{
if -key_left_pressed if global.p4Pal=0 global.p4Pal=palmax else global.p4Pal-=1
if key_right_pressed if global.p4Pal=palmax global.p4Pal=0 else global.p4Pal+=1



}
charno=global.P4Char}

if global.UnlockAltPal=1
if charaddedbuffer=0
{
if palettemode=1 if key_A or key_B or key_X or key_Y {charaddedbuffer=2 palettemode=0 PlaySoundNoStack(snd_steal)}

if key_Y
if palettemode=0
{PlaySoundNoStack(snd_steal) charaddedbuffer=2
palettemode=1
}
}





////Select Character
if key_A
if soldout=1 {PlaySound(snd_steal)}
else
{
if palettemode=0
{
if (playerNO=1 and (key_A))
{
PlaySoundNoStack(snd_picked) selectedflash=0 oControl.p5.charbuffer=2
selectedflashing=1
charadded=2 charaddedbuffer=10 isReady=1 image_index=1
}
else
{
PlaySoundNoStack(snd_picked) selectedflash=0 oControl.p5.charbuffer=2
selectedflashing=1
charadded=2 charaddedbuffer=10 isReady=1 image_index=1
}
}
}

}

if charadded=2
{

if image_index<5.5 image_index+=0.25 if image_index=2 PlaySound(picksound)

if charaddedbuffer=0
{
if key_B { PlaySound(snd_steal) image_index=0 charadded=1  charaddedbuffer=10}
}
}

}

if _exitroom
{
if global.StageSelect=0 room_goto(rm_menu) else 
if global.IsMinigame=0 room_goto(rm_map) else room_goto(rm_minigames)
}
}