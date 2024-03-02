// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemydata_unlockall(){
var repload=0;
ini_open("GAMEDATA/hiscore.ini");

repeat(200)
{
if global.UnlockEnemy[repload]=0
global.UnlockEnemy[repload]=1
repload+=1;
}
ini_close()


}