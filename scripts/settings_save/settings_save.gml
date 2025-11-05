// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function settings_save(){
	

	
ini_open("GAMEDATA/settings.ini");
ini_write_real("SETTINGS", "MASTER", global.Mastervolume);
ini_write_real("SETTINGS", "BGM", global.BGMvolume)
ini_write_real("SETTINGS", "VFX", global.SFXvolume)
ini_write_real("SETTINGS", "CRT", global.CRTfx)
ini_write_real("SETTINGS", "CRTcustom1", global.CRTcustomDistort)
ini_write_real("SETTINGS", "CRTcustom2", global.CRTcustomDistortAM)
ini_write_real("SETTINGS", "CRTcustom3", global.CRTcustomBorder)
ini_write_real("SETTINGS", "CRTcustom4", global.ArcadeScreen)

ini_write_real("SETTINGS", "ColorMode", global.ColorMode)

ini_write_real("SETTINGS", "SCREEN", global.ScreenSize)
ini_write_real("SETTINGS", "SHAKE", global.Screenshake)
ini_write_real("SETTINGS", "FLASH", global.Screenflash)

ini_write_real("SETTINGS", "SKIPSCENE", global.CutsceneSkipSpd)

ini_write_real("SETTINGS", "LIFE", global.LifeStart)
ini_write_real("SETTINGS", "CONTINUES", global.ContinueStart)
ini_write_real("SETTINGS", "FPS", global.fpsMode)

ini_write_real("LANGUAGE","0", global.Language)

ini_write_real("SETTINGS", "GOLDSHOW", global.GoldShow)
ini_write_real("SETTINGS", "FEATSHOW", global.DisplayFeats)

globalcontrols_save(0)
globalcontrols_save(1)
globalcontrols_save(2)
globalcontrols_save(3)
globalcontrols_save(4)
globalcontrols_save(5)
globalcontrols_save(6)
globalcontrols_save(7)
globalcontrols_save(8)
globalcontrols_save(9)
globalcontrols_save(10)
globalcontrols_save(11)
globalcontrols_save(12)


ini_close()


}

