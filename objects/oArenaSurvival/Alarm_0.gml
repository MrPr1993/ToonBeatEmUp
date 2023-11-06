/// @description Insert description here
// You can write your code in this editor


alarm[0]=200+choose(16,32,48,64,80,98,128)
var enemyset=choose(oEnemy1,oEnemy1B);

if enemiesdefeated>6 enemyset=choose(oEnemy1,oEnemy1B,oSneak)
if enemiesdefeated>12 enemyset=choose(oEnemy1,oEnemy1B,oSneak,oFemBurglar,oFatBurglar,oWrestler)
if enemiesdefeated>18 enemyset=choose(oEnemy1,oEnemy1B,oSneak,oFemBurglar,oFatBurglar,oWrestler)
if enemiesdefeated>24 enemyset=choose(oEnemy1,oEnemy1B,oSneak,oFemBurglar,oFatBurglar,oWrestler)
if enemiesdefeated>32 enemyset=choose(oEnemy1,oEnemy1B,oSneak,oFemBurglar,oFatBurglar,oWrestler,oNinjaBun,oSamurai,oZombieMan,oZombieWoman,oSkeleton,oCobra,oCatman,oPainting,oAnimatedObject)
if enemiesdefeated>52 enemyset=choose(oStrongBurg,oEnemy1,oEnemy1B,oSneak,oFemBurglar,oFatBurglar,oWrestler,oNinjaBun,oSamurai,oZombieMan,oZombieWoman,oSkeleton,oCobra,oCatman,oPainting,oAnimatedObject)


if enemiesdefeated>12 if useonce=0 {useonce=1 enemyset=oBoss1a alarm[0]+=100}
if enemiesdefeated>18 if useonce=1 {useonce=2 enemyset=oRobot alarm[0]+=100}
if enemiesdefeated>24 if useonce=2 if !instance_exists(oBoss1a) {useonce=3 enemyset=oBoss1 alarm[0]+=200}



instance_create_depth(choose(-96,320+96),176+choose(16,32,48,64,96,128),-1,enemyset)
with enemyset
{
isBoss=0
specialBossState=0
}