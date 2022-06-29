// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function settings_save(){
	

	
ini_open("GAMEDATA/settings.ini");
ini_write_real("SETTINGS", "BGM", global.BGMvolume)
ini_write_real("SETTINGS", "VFX", global.SFXvolume)
ini_write_real("SETTINGS", "CRT", global.CRTfx)
ini_write_real("SETTINGS", "CRTcustom1", global.CRTcustomDistort)
ini_write_real("SETTINGS", "CRTcustom2", global.CRTcustomDistortAM)
ini_write_real("SETTINGS", "CRTcustom3", global.CRTcustomBorder)

ini_write_real("SETTINGS", "ColorMode", global.ColorMode)

ini_write_real("SETTINGS", "SCREEN", global.ScreenSize)
ini_write_real("SETTINGS", "SHAKE", global.Screenshake)
ini_write_real("SETTINGS", "FLASH", global.Screenflash)
ini_write_real("SETTINGS", "LIFE", global.LifeStart)
ini_write_real("SETTINGS", "CONTINUES", global.ContinueStart)
ini_write_real("SETTINGS", "FPS", global.fpsMode)
ini_close()
}

