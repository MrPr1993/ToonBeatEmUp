global.LevelSelectSave=level

ini_open("GAMEDATA/settings.ini");
ini_write_real("LEVELTEST","0",global.LevelSelectSave)
ini_close()

room_goto(roomGo)

