// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arcade_save(_no){

if global.MenuGlobal=0 and global.SaveFileNO!=0
{
ini_open("GAMEDATA/arcade"+string(global.SaveFileNO)+".ini");

var stagenoset=_no//rm_opening;

switch(room)
{
case rm_opening: global.SaveText="STAGE 1";  break;
//Stage 1
case rm_stage1: global.SaveText="STAGE 2";  break;
//
case rm_stage2: global.SaveText="STAGE 3";  break;
case rm_stage2b: global.SaveText="STAGE 3";  break;
case rm_stage2c: global.SaveText="STAGE 3";  break;
//
case rm_stage4: global.SaveText="STAGE 4";  break;
case rm_stage3: global.SaveText="STAGE 4";  break;
case rm_stage5: global.SaveText="STAGE 4";  break;
//
case rm_stageswamp: global.SaveText="STAGE 5";  break;
case rm_stagecarnival: global.SaveText="STAGE 5";  break;
case rm_stagebeach: global.SaveText="STAGE 5";  break;
//
case rm_stageufo: global.SaveText="STAGE 6";  break;
case rm_stagemermaid: global.SaveText="STAGE 6";  break;
case rm_stagedesert: global.SaveText="STAGE 6";  break;
//
case rm_stagesnow: global.SaveText="STAGE 7";  break;
case rm_stagecave: global.SaveText="STAGE 7";  break;
case rm_stageclouds: global.SaveText="STAGE 7";  break;
//
case rm_stagelab: global.SaveText="STAGE 8";  break;
//
case rm_stagefinal: global.SaveText="END";  break;
}

if room=rm_stagefinal _no=rm_opening

var stagesave=stage_check(_no)
ini_write_string("SAVE","RMid", stagesave)

ini_write_real("SAVE", "ROOMID", stagenoset)
//global.SaveNumber=stagenoset

if room=rm_stagefinal global.SaveNumber=0

//var checkwinend=0; if instance_exists(oContinueScreen) checkwinend=continueStageScore

ini_write_real("SAVE", "ROOMID2", global.SaveNumber)
ini_write_real("SAVE", "P1L", global.P1LifeS)
ini_write_real("SAVE", "P2L", global.P2LifeS)
ini_write_real("SAVE", "P3L", global.P3LifeS)
ini_write_real("SAVE", "P4L", global.P4LifeS)
ini_write_real("SAVE", "P1S", global.P1ScoreS)
ini_write_real("SAVE", "P2S", global.P2ScoreS)
ini_write_real("SAVE", "P3S", global.P3ScoreS)
ini_write_real("SAVE", "P4S", global.P4ScoreS)

ini_write_real("SAVE", "P1LS", global.P1ScoreLife)
ini_write_real("SAVE", "P2LS", global.P2ScoreLife)
ini_write_real("SAVE", "P3LS", global.P3ScoreLife)
ini_write_real("SAVE", "P4LS", global.P4ScoreLife)

ini_write_real("SAVE", "CONT", global.Continues)
ini_write_real("SAVE", "DIF", global.Difficulty)
ini_write_string("SAVE", "STG", global.SaveText)



ini_close()
}

}

function arcade_load(_no){
global.Difficulty=2	

global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart
global.P5Life=0
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0

global.P1ScoreLife=0
global.P2ScoreLife=0
global.P3ScoreLife=0
global.P4ScoreLife=0

global.SaveText="EMPTY";

if global.SaveFileNO=0
{
global.Difficulty=2

global.SaveNumber=0

global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart
global.P5Life=0
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0

global.P1ScoreLife=0
global.P2ScoreLife=0
global.P3ScoreLife=0
global.P4ScoreLife=0

global.SaveText="EMPTY";

if global.MenuGlobal=0 global.StageGoing=rm_opening
}
else
{
var defstage=rm_opening; var stagenoset=0;
global.Difficulty=2

global.SaveNumber=0

global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart
global.P5Life=0
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0

global.P1ScoreLife=0
global.P2ScoreLife=0
global.P3ScoreLife=0
global.P4ScoreLife=0

global.SaveText="EMPTY";


ini_open("GAMEDATA/arcade"+string(global.SaveFileNO)+".ini");

var stageload=ini_read_string("SAVE", "RMid", "0")
stagenoset=stage_checkload(stageload)

//stagenoset=ini_read_real("SAVE", "ROOMID", rm_opening)
//global.SaveNumber=ini_read_real("SAVE", "ROOMID2", 0)
global.P1Life=ini_read_real("SAVE", "P1L", 2)
global.P2Life=ini_read_real("SAVE", "P2L", 2)
global.P3Life=ini_read_real("SAVE", "P3L", 2)
global.P4Life=ini_read_real("SAVE", "P4L", 2)
global.P1Score=ini_read_real("SAVE", "P1S", 0)
global.P2Score=ini_read_real("SAVE", "P2S", 0)
global.P3Score=ini_read_real("SAVE", "P3S", 0)
global.P4Score=ini_read_real("SAVE", "P4S", 0)

global.P1ScoreLife=ini_read_real("SAVE", "P1LS", 0)
global.P2ScoreLife=ini_read_real("SAVE", "P2LS", 0)
global.P3ScoreLife=ini_read_real("SAVE", "P3LS", 0)
global.P4ScoreLife=ini_read_real("SAVE", "P4LS", 0)

global.Continues=ini_read_real("SAVE", "CONT", 3)
global.Difficulty=ini_read_real("SAVE", "DIF", 2)
global.SaveText=ini_read_string("SAVE", "STG", "EMPTY")

ini_close()

global.StageGoing=stagenoset;

if global.MenuGlobal=0
if global.SaveNumber=0 
{global.StageGoing=rm_opening
global.Difficulty=2
global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart
global.P5Life=0
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0

global.P1ScoreLife=0
global.P2ScoreLife=0
global.P3ScoreLife=0
global.P4ScoreLife=0

global.SaveText="EMPTY";
}


}

}

function stage_check(_no)
{var _findstage="0"; var _nocase=_no;
switch(_nocase)
{
case rm_opening: _findstage="0"; global.SaveNumber=0; break;
//Stage 1
case rm_stage1: _findstage="1"; global.SaveNumber=1;  break;
case rm_cutscene1: _findstage="1C"; global.SaveNumber=1;  break;
//
case rm_stage2: _findstage="2a"; global.SaveNumber=2;  break;
case rm_stage2b: _findstage="2b"; global.SaveNumber=2;  break;
case rm_stage2c: _findstage="2c"; global.SaveNumber=2;  break;

case cutscene2a: _findstage="2aC"; global.SaveNumber=2;  break;
case cutscene2b: _findstage="2bC"; global.SaveNumber=2;  break;
case cutscene2c: _findstage="2cC"; global.SaveNumber=2;  break;
//
case rm_stage3: _findstage="3a"; global.SaveNumber=3; break;
case rm_stage4: _findstage="3b"; global.SaveNumber=3;  break;
case rm_stage5: _findstage="3c"; global.SaveNumber=3;  break;

case cutscene3a: _findstage="3aC"; global.SaveNumber=3;  break;
case cutscene3b: _findstage="3bC"; global.SaveNumber=3;  break;
case cutscene3c: _findstage="3cC"; global.SaveNumber=3;  break;
//
case rm_stagecarnival: _findstage="4a"; global.SaveNumber=4;  break;
case rm_stageswamp: _findstage="4b"; global.SaveNumber=4;  break;
case rm_stagebeach: _findstage="4c"; global.SaveNumber=4;  break;

case cutscene4a: _findstage="4aC"; global.SaveNumber=4;  break;
case cutscene4b: _findstage="4bC"; global.SaveNumber=4;  break;
case cutscene4c: _findstage="4cC";  global.SaveNumber=4; break;
//
case rm_stagemermaid: _findstage="5a"; global.SaveNumber=5;  break;
case rm_stageufo: _findstage="5b"; global.SaveNumber=5;  break;
case rm_stagedesert: _findstage="5c"; global.SaveNumber=5;  break;

case cutscene5a: _findstage="5aC"; global.SaveNumber=5;  break;
case cutscene5b: _findstage="5bC"; global.SaveNumber=5;  break;
case cutscene5c: _findstage="5cC";  global.SaveNumber=5; break;
//
case rm_stagecave: _findstage="6a"; global.SaveNumber=6;  break;
case rm_stagesnow: _findstage="6b"; global.SaveNumber=6;  break;
case rm_stageclouds: _findstage="6c"; global.SaveNumber=6;  break;

case cutscene6a: _findstage="6aC"; global.SaveNumber=6;  break;
case cutscene6b: _findstage="6bC"; global.SaveNumber=6;  break;
case cutscene6c: _findstage="6cC"; global.SaveNumber=6;  break;
//
case rm_stagelab: _findstage="7"; global.SaveNumber=7;  break;
case rm_cutscene7: _findstage="7C"; global.SaveNumber=7;  break;
//
case rm_stagefinal: _findstage="0"; global.SaveNumber=0; break;
}
return _findstage
}

function stage_checkload(_no)
{var _findstage=rm_opening; global.SaveNumber=0;
	var _nocase=_no;
switch(_nocase)
{
case "0": _findstage=rm_opening; global.SaveNumber=0 break;
//Stage 1
case "1": _findstage=rm_stage1; global.SaveNumber=1 break;
case "1C": _findstage=rm_cutscene1; global.SaveNumber=1 break;
//
case "2a": _findstage=rm_stage2; global.SaveNumber=2 break;
case "2b": _findstage=rm_stage2b; global.SaveNumber=2 break;
case "2c": _findstage=rm_stage2c; global.SaveNumber=2 break;

case "2aC": _findstage=cutscene2a; global.SaveNumber=2 break;
case "2bC": _findstage=cutscene2b; global.SaveNumber=2 break;
case "2cC": _findstage=cutscene2c; global.SaveNumber=2 break;
//
case "3a": _findstage=rm_stage3; global.SaveNumber=3 break;
case "3b": _findstage=rm_stage4; global.SaveNumber=3 break;
case "3c": _findstage=rm_stage5; global.SaveNumber=3 break;

case "3aC": _findstage=cutscene3a; global.SaveNumber=3 break;
case "3bC": _findstage=cutscene3b; global.SaveNumber=3 break;
case "3cC": _findstage=cutscene3c; global.SaveNumber=3 break;
//
case "4a": _findstage=rm_stagecarnival; global.SaveNumber=4 break;
case "4b": _findstage=rm_stageswamp; global.SaveNumber=4 break;
case "4c": _findstage=rm_stagebeach; global.SaveNumber=4 break;

case "4aC": _findstage=cutscene4a; global.SaveNumber=4 break;
case "4bC": _findstage=cutscene4b; global.SaveNumber=4 break;
case "4cC": _findstage=cutscene4c; global.SaveNumber=4 break;
//
case "5a": _findstage=rm_stagemermaid; global.SaveNumber=5 break;
case "5b": _findstage=rm_stageufo; global.SaveNumber=5 break;
case "5c": _findstage=rm_stagedesert; global.SaveNumber=5 break;

case "5aC": _findstage=cutscene3a; global.SaveNumber=5 break;
case "5bC": _findstage=cutscene3b; global.SaveNumber=5 break;
case "5cC": _findstage=cutscene3c; global.SaveNumber=5 break;
//
case "6a": _findstage=rm_stagecave; global.SaveNumber=6 break;
case "6b": _findstage=rm_stagesnow; global.SaveNumber=6 break;
case "6c": _findstage=rm_stageclouds; global.SaveNumber=6 break;

case "6aC": _findstage=cutscene3a; global.SaveNumber=6 break;
case "6bC": _findstage=cutscene3b; global.SaveNumber=6 break;
case "6cC": _findstage=cutscene3c; global.SaveNumber=6 break;
//
case "7": _findstage=rm_stagelab; global.SaveNumber=7 break;
case "7C": _findstage=rm_cutscene7; global.SaveNumber=7 break;
//
//case "6a": _findstage=rm_stagefinal: _findstage="0"; break;
}
return _findstage
}