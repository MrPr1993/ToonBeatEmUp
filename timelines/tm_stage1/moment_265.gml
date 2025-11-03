/// @description /Miniboss
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(enA)
and !instance_exists(enB)
{spawner_followset("WaveSet1",1744,1744,1) oControl.camMove=1
with fakeenS {timer=0 x=__view_get( e__VW.XView, 0 )+320+16 hspeed=-4 isDepth=0 sprite_index=spr_shadow}
with fakeen {x=__view_get( e__VW.XView, 0 )+320+16 alarm[0]=0 hspeed=-4 visible=1 sprite_index=spr_hwolf_move isDepth=1 image_xscale=-1}
PlaySound(snd_hwolf8) timer_set(0)
		var _playerquote="DO I HAVE TO DO EVERYTHING MYSELF?"		
		gamedialogue_play(_playerquote,audio_sound_length(snd_hwolf8))

}
else
{
if oControl.tutorialTextX!=64
{
oControl.tutorialTextTime=250
with oControl
{
tutorialTextX=64
tutorialTextY=48
btnSep=16
btnT1="PRESS"
btnspr=spr_commandbutton
if global.ConsoleType="PC"
{
btnind=0
btnT2="H"
}
else
{
var commandMul=0;
if global.ConsoleType="XBOX" commandMul=0;
if global.ConsoleType="PS" commandMul=1;
if global.ConsoleType="SWITCH" commandMul=2;
btnind=7+6*commandMul btnT2=""
}

btnT3="FOR A SHOWTIME IF BAR'S FULL!"

switch(global.Language)
{
case 2: btnT1="PRESSIONE" btnT3="PARA O ESPETÁCULO SE A BARRA ESTIVER CHEIA!" break;
}

}
}
timeline_position-=1
}
