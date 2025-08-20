// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fish_choose(_fishtype){

var _fishnum=_fishtype;

fishingmode=0
fishtime=0
fishpull=0
fishspr=spr_fish0
fishind=0
fishname="JUNK"
fishscore=round(10)
fishstr=1

if _fishtype=1
{fishstr=1
fishspr=spr_fish1
fishname="BASS"
fishscore=round(100)
}

if _fishtype=2
{fishstr=1.5
fishspr=spr_fish2
fishname="BLUE GILL"
fishscore=round(100)
}

if _fishtype=3
{fishstr=2
fishspr=spr_fish3
fishname="PICKEREL"
fishscore=round(100)
}

if _fishtype=4
{fishstr=2.5
fishspr=spr_fish4
fishname="CATFISH"
fishscore=round(100)
}

if _fishtype=5
{fishstr=3
fishspr=spr_fish5
fishname="STURGEON"
fishscore=round(100)
}

if _fishtype=6
{fishstr=3.5
fishspr=spr_fish6
fishname="LONGNOSE GAR"
fishscore=round(100)
}

if _fishtype=7
{fishstr=4
fishspr=spr_fish7
fishname="SALMON"
fishscore=round(100)
}

if _fishtype=8
{fishstr=4.5
fishspr=spr_fish8
fishname="MUSKIE"
fishscore=round(100)
}

if _fishtype=9
{fishstr=5
fishspr=spr_fish9
fishname="BLOWFISH"
fishscore=round(100)
}

if _fishtype=10
{fishstr=5.5
fishspr=spr_fish10
fishname="SQUID"
fishscore=round(100)
}

return _fishnum;

}