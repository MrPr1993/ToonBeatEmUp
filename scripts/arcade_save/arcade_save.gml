// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arcade_save(_no){

if global.MenuGlobal=0 and global.SaveFileNO!=0
{
ini_open("GAMEDATA/arcade.ini");

var stagenoset=_no//rm_opening;



if room=rm_stagefinal stagenoset=rm_opening

ini_write_real("SAVE"+string(global.SaveFileNO), "ROOMID", stagenoset)
global.SaveNumber=stagenoset

if room=rm_stagefinal global.SaveNumber=0

//var checkwinend=0; if instance_exists(oContinueScreen) checkwinend=continueStageScore

ini_write_real("SAVE"+string(global.SaveFileNO), "ROOMID2", global.SaveNumber)
ini_write_real("SAVE"+string(global.SaveFileNO), "P1L", global.P1Life)
ini_write_real("SAVE"+string(global.SaveFileNO), "P2L", global.P2Life)
ini_write_real("SAVE"+string(global.SaveFileNO), "P3L", global.P3Life)
ini_write_real("SAVE"+string(global.SaveFileNO), "P4L", global.P4Life)
ini_write_real("SAVE"+string(global.SaveFileNO), "P1S", global.P1Score)
ini_write_real("SAVE"+string(global.SaveFileNO), "P2S", global.P2Score)
ini_write_real("SAVE"+string(global.SaveFileNO), "P3S", global.P3Score)
ini_write_real("SAVE"+string(global.SaveFileNO), "P4S", global.P4Score)
ini_write_real("SAVE"+string(global.SaveFileNO), "CONT", global.Continues)
ini_write_real("SAVE"+string(global.SaveFileNO), "DIF", global.Difficulty)
ini_write_string("SAVE"+string(global.SaveFileNO), "STG", global.SaveText)



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


ini_open("GAMEDATA/arcade.ini");

stagenoset=ini_read_real("SAVE"+string(global.SaveFileNO), "ROOMID", rm_opening)
global.SaveNumber=ini_read_real("SAVE"+string(global.SaveFileNO), "ROOMID2", 0)
global.P1Life=ini_read_real("SAVE"+string(global.SaveFileNO), "P1L", 2)
global.P2Life=ini_read_real("SAVE"+string(global.SaveFileNO), "P2L", 2)
global.P3Life=ini_read_real("SAVE"+string(global.SaveFileNO), "P3L", 2)
global.P4Life=ini_read_real("SAVE"+string(global.SaveFileNO), "P4L", 2)
global.P1Score=ini_read_real("SAVE"+string(global.SaveFileNO), "P1S", 0)
global.P2Score=ini_read_real("SAVE"+string(global.SaveFileNO), "P2S", 0)
global.P3Score=ini_read_real("SAVE"+string(global.SaveFileNO), "P3S", 0)
global.P4Score=ini_read_real("SAVE"+string(global.SaveFileNO), "P4S", 0)
global.Continues=ini_read_real("SAVE"+string(global.SaveFileNO), "CONT", 3)
global.Difficulty=ini_read_real("SAVE"+string(global.SaveFileNO), "DIF", 2)
global.SaveText=ini_read_string("SAVE"+string(global.SaveFileNO), "STG", "EMPTY")

ini_close()

global.StageGoing=stagenoset;

if global.MenuGlobal=0
if global.SaveNumber=0 global.StageGoing=rm_opening


}

}

