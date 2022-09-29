if oControl.betatest=1
{
if keyboard_check_pressed(ord("Q"))
{
if keyboard_check(vk_shift)
enemydata_unlockall()
else
enemydata_setup()
}
}