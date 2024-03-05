if oControl.betatest=1
{
if keyboard_check_pressed(ord("Q"))
{
if keyboard_check(vk_shift)
enemydata_unlockall()
else
{
var repload=1; repeat(200) {global.UnlockEnemy[repload]=0 repload+=1;}
}
}
}