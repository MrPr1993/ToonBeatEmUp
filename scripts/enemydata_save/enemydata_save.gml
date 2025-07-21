// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemydata_save(){

ini_open("GAMEDATA/hiscore.ini");

var repload=0;
repeat(200)
{
ini_write_real("EN", repload, global.UnlockEnemy[repload]);
repload+=1;
}
ini_write_real("ENB", 0, global.EnemyDeath);
ini_close()

}