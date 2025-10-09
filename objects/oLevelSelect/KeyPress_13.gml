global.LevelSelectSave=level
global.Ending=0


ini_open("GAMEDATA/settings.ini");
ini_write_real("LEVELTEST","0",global.LevelSelectSave)
ini_close()

if level=92 global.Ending=1
if level=93 global.Ending=2

room_goto(roomGo)

