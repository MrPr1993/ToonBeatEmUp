// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function settings_load(){
ini_open("GAMEDATA/settings.ini");
global.BGMvolume=ini_read_real("SETTINGS", "BGM", 100);
global.SFXvolume=ini_read_real("SETTINGS", "VFX", 100);
global.CRTfx=ini_read_real("SETTINGS", "CRT", 0);

global.CRTcustomDistort=ini_read_real("SETTINGS", "CRTcustom1", true);
global.CRTcustomDistortAM=ini_read_real("SETTINGS", "CRTcustom2", 0.12);
global.CRTcustomBorder=ini_read_real("SETTINGS", "CRTcustom3", true);
global.ArcadeScreen=ini_read_real("SETTINGS", "CRTcustom4", 0);

global.ColorMode=ini_read_real("SETTINGS", "ColorMode", 0);

global.ScreenSize=ini_read_real("SETTINGS","SCREEN",0)
screen_size(-1)
global.Screenshake=ini_read_real("SETTINGS","SHAKE",1)
global.Screenflash=ini_read_real("SETTINGS","FLASH",1)
global.LifeStart=ini_read_real("SETTINGS","LIFE",2)
global.ContinueStart=ini_read_real("SETTINGS","CONTINUES",-1)
global.fpsMode=ini_read_real("SETTINGS","FPS",0)

global.enemytest=ini_read_real("ENEMYTEST","TEST",0)
global.enemytestB=ini_read_real("ENEMYTEST","TESTB",0)
global.LevelSelectSave=ini_read_real("LEVELTEST","0",0)
global.Continues=global.ContinueStart
ini_close()
}