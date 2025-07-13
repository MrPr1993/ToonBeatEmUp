// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemydeathcount(){
	if enemyID!=-1
	{
ini_open("GAMEDATA/hiscore.ini");
global.UnlockEnemy[enemyID]+=1;
global.EnemyDeath+=1;
ini_write_real("EN", enemyID, global.UnlockEnemy[enemyID]);
ini_write_real("ENB", 0, global.EnemyDeath);
feats_check(35) feats_check(36) feats_check(37)
ini_close()

	}

}