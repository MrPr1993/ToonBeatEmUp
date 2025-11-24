// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fish_choose(_fishtype){

var _fishnum=_fishtype;

var _sn0="JUNK"
var _sn1="BASS"
var _sn2="BLUE GILL"
var _sn3="PICKEREL"
var _sn4="CATFISH"
var _sn5="STURGEON"
var _sn6="LONGNOSE GAR"
var _sn7="SALMON"
var _sn8="MUSKIE"
var _sn9="BLOWFISH"
var _sn10="SQUID"


	switch(global.Language)
	{
case 2:///Portuguese
_sn0="LIXO"
_sn1="ROBALO"
_sn2="ANCHOVA"
_sn3="PICKEREL"
_sn4="PEIXE-GATO"
_sn5="ESTURJÃO"
_sn6="PEIXE-AGULHA"
_sn7="SALMÃO"
_sn8="MUSKIE"
_sn9="BAIACU"
_sn10="LULA"
break;	
	}	


fishingmode=0
fishtime=0
fishpull=0
fishspr=spr_fish0
fishind=0
fishname=_sn0
fishscore=round(10)
fishstr=1

if _fishtype=1
{fishstr=1
fishspr=spr_fish1
fishname=_sn1
fishscore=round(50)
}

if _fishtype=2
{fishstr=1.5
fishspr=spr_fish2
fishname=_sn2
fishscore=round(100)
}

if _fishtype=3
{fishstr=2
fishspr=spr_fish3
fishname=_sn3
fishscore=round(150)
}

if _fishtype=4
{fishstr=2.5
fishspr=spr_fish4
fishname=_sn4
fishscore=round(200)
}

if _fishtype=5
{fishstr=3
fishspr=spr_fish5
fishname=_sn5
fishscore=round(250)
}

if _fishtype=6
{fishstr=3.5
fishspr=spr_fish6
fishname=_sn6
fishscore=round(300)
}

if _fishtype=7
{fishstr=4
fishspr=spr_fish7
fishname=_sn7
fishscore=round(350)
}

if _fishtype=8
{fishstr=4.5
fishspr=spr_fish8
fishname=_sn8
fishscore=round(400)
}

if _fishtype=9
{fishstr=5
fishspr=spr_fish9
fishname=_sn9
fishscore=round(450)
}

if _fishtype=10
{fishstr=5.5
fishspr=spr_fish10
fishname=_sn10
fishscore=round(500)
}

oControl.fishscore=1000*fishscore

return _fishnum;

}