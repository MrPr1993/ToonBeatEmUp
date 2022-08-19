/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if introbuffer!=0 introbuffer-=1
if charbuffer!=0 charbuffer-=1

if controlNO=1 charno=global.P1Char
if controlNO=2 charno=global.P2Char
if controlNO=3 charno=global.P3Char
if controlNO=4 charno=global.P4Char
if charno=0
{sprite_index=spr_csviva picksound=snd_viva1
ability1="✰✰✰" ability2="✰✰✰" ability3="✰✰✰"}
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
if introprep=0
{introprep=1 introtextadd+=640
	oControl.p1.x+=640
	oControl.p2.x+=640
	oControl.p3.x+=640
	oControl.p4.x+=640
	oCharacterSelectPlayer.hspeed=-32
	
introtextaddspd=-32
	
layer_hspeed("BGbricks",-32)
	alarm[0]=20
	blk=instance_create_depth(320,0,-1,oFlashFX) with blk
	{sprite_index=spr_block image_xscale=-9999 image_yscale=8888 hspeed=-32
	image_blend=c_black isDepth=0 depth=-8888 alarm[0]=100 image_speed=0
	}
}

isReady=(oControl.p1.isReady)+(oControl.p2.isReady)+(oControl.p3.isReady)+(oControl.p4.isReady)

if isReady!=0 oControl.characterSelReady=1
else oControl.characterSelReady=0

if charaddedbuffer!=0 charaddedbuffer-=1

if key_start or key_attack or keyboard_check_pressed(vk_enter)
if isReady!=0 and charbuffer=0 {PlaySound(snd_picked) oCharacterSelectPlayer.canControl=0
	oControl.alarm[4]=60	 ////PLAY GAME
	oCharacterSelectPlayer.hspeed=-16
layer_hspeed("BGbricks",-16) introtextaddspd=-16
	blk=instance_create_depth(320,0,-1,oFlashFX) with blk
	{sprite_index=spr_block image_xscale=9999 image_yscale=8888 hspeed=-16
	image_blend=c_black isDepth=0 depth=-8888 alarm[0]=100 image_speed=0
	}
	
	global.P1available=(oControl.p1.isReady)
	global.P2available=(oControl.p2.isReady)
	global.P3available=(oControl.p3.isReady)
	global.P4available=(oControl.p4.isReady)
	
 global.multiMode=(oControl.p1.isReady)+(oControl.p2.isReady)+(oControl.p3.isReady)+(oControl.p4.isReady)
	
	}

if charaddedbuffer=0
if key_jump if oControl.p1.isReady=0 and oControl.p1.charadded=0 {
if global.StageSelect=0 room=rm_menu else room=rm_map
}
}
else
{
if charadded=0
{isReady=0
if introbuffer=0
{
if key_attack or controlNO=1
{charadded=1 charaddedbuffer=20
	if controlNO!=1
PlaySoundNoStack(snd_picked)
}
}
}

if charaddedbuffer!=0 charaddedbuffer-=1

if charadded=1 and charaddedbuffer=0
{image_index=0 isReady=0

if key_jump
{
if controlNO=1
{
if global.StageSelect=0 room=rm_menu else room=rm_map
}
else
{
charadded=0 charaddedbuffer=20 oControl.p5.charaddedbuffer=2
PlaySoundNoStack(snd_steal)
}
}

if controlNO=1
{if -key_left_pressed {if global.P1Char=0 global.P1Char=3 else global.P1Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {if global.P1Char=3 global.P1Char=0 else global.P1Char+=1 PlaySoundNoStack(snd_select)}
if key_up_pressed if global.p1Pal=0 global.p1Pal=15 else global.p1Pal-=1
if -key_down_pressed if global.p1Pal=15 global.p1Pal=0 else global.p1Pal+=1
charno=global.P1Char}
if controlNO=2
{if -key_left_pressed {if global.P2Char=0 global.P2Char=3 else global.P2Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {if global.P2Char=3 global.P2Char=0 else global.P2Char+=1 PlaySoundNoStack(snd_select)}
if key_up_pressed if global.p2Pal=0 global.p2Pal=15 else global.p2Pal-=1
if -key_down_pressed if global.p2Pal=15 global.p2Pal=0 else global.p2Pal+=1
charno=global.P2Char}
if controlNO=3
{if -key_left_pressed {if global.P3Char=0 global.P3Char=3 else global.P3Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {if global.P3Char=3 global.P3Char=0 else global.P3Char+=1 PlaySoundNoStack(snd_select)}
if key_up_pressed if global.p3Pal=0 global.p3Pal=15 else global.p3Pal-=1
if -key_down_pressed if global.p3Pal=15 global.p3Pal=0 else global.p3Pal+=1
charno=global.P3Char}
if controlNO=4
{if -key_left_pressed {if global.P4Char=0 global.P4Char=3 else global.P4Char-=1 PlaySoundNoStack(snd_select)}
if key_right_pressed {if global.P4Char=3 global.P4Char=0 else global.P4Char+=1 PlaySoundNoStack(snd_select)}
if key_up_pressed if global.p4Pal=0 global.p4Pal=15 else global.p4Pal-=1
if -key_down_pressed if global.p4Pal=15 global.p4Pal=0 else global.p4Pal+=1
charno=global.P4Char}



if key_attack or key_start or keyboard_check_pressed(vk_enter)
{
if (playerNO=1 and keyboard_check_pressed(vk_enter))
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

if charadded=2
{

if image_index<4.5 image_index+=0.25 if image_index=2 PlaySound(picksound)

if charaddedbuffer=0
{
if key_jump { PlaySound(snd_steal) image_index=0 charadded=1  charaddedbuffer=10}
}
}

}
}