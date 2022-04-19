/// @description Select Enemy & Item
if !keyboard_check(vk_control)
{
if spawnNo=1 spawnType="Item"
if spawnNo=3 spawnType="Spawn Area"
if spawnNo=0 spawnType="Enemy"
if spawnNo=2 spawnType="Obstacle"


if spawnType="Enemy"
{
if enemySpawn=0 {enemySpawnName="0 MS. DUMMY" spawnUnit=oMsDummy}
if enemySpawn=1 {enemySpawnName="1 Burglar" spawnUnit=oEnemy1}
if enemySpawn=2 {enemySpawnName="2 Fem Burglar" spawnUnit=oFemBurglar}
if enemySpawn=3 {enemySpawnName="3 Fat Burglar" spawnUnit=oFatBurglar}
if enemySpawn=4 {enemySpawnName="4 Robot" spawnUnit=oRobot}
if enemySpawn=5 {enemySpawnName="5 Sneak" spawnUnit=oSneak}
if enemySpawn=6 {enemySpawnName="6 Swing" spawnUnit=oSwing}
if enemySpawn=7 {enemySpawnName="7 Boxer" spawnUnit=oBoxer}
if enemySpawn=8 {enemySpawnName="8 Catman" spawnUnit=oCatman}
if enemySpawn=9 {enemySpawnName="9 Zombieman" spawnUnit=oZombieMan}
if enemySpawn=10 {enemySpawnName="10 Zombiewoman" spawnUnit=oZombieWoman}
if enemySpawn=11 {enemySpawnName="11 Ninja Bun" spawnUnit=oNinjaBun}
if enemySpawn=12 {enemySpawnName="12 S. Showgirl" spawnUnit=oSamurai}
if enemySpawn=13 {enemySpawnName="13 Robot, Burner" spawnUnit=oRobotBurn}
if enemySpawn=14 {enemySpawnName="14 Robot, Ice" spawnUnit=oRobotIce}
if enemySpawn=15 {enemySpawnName="15 Ghost Madame" spawnUnit=oGhostBoss}
if enemySpawn=16 {enemySpawnName="16 Mirror Diva" spawnUnit=oMirrorDiva}
if enemySpawn=17 {enemySpawnName="17 Wrestler" spawnUnit=oWrestler}
if enemySpawn=18 {enemySpawnName="18 Burglar B" spawnUnit=oEnemy1B}
if enemySpawn=19 {enemySpawnName="19 Skeleton" spawnUnit=oSkeleton}
if enemySpawn=20 {enemySpawnName="20 Slime" spawnUnit=oSlime}
if enemySpawn=21 {enemySpawnName="21 Martian" spawnUnit=oMartian}
if enemySpawn=22 {enemySpawnName="22 Merman" spawnUnit=oMerman}
if enemySpawn=23 {enemySpawnName="23 Siren" spawnUnit=oSiren}
if enemySpawn=24 {enemySpawnName="24 Goblin" spawnUnit=oGoblin}
if enemySpawn=25 {enemySpawnName="25 Alien Robot" spawnUnit=oAlienRobot}
if enemySpawn=26 {enemySpawnName="26 Cobra" spawnUnit=oCobra}
if enemySpawn=27 {enemySpawnName="27 Plant" spawnUnit=oPlant}
if enemySpawn=28 {enemySpawnName="28 Animated Object" spawnUnit=oAnimatedObject}
if enemySpawn=28 {enemySpawnName="29 Strong Burg" spawnUnit=oStrongBurg}
if enemySpawn=30 {enemySpawnName="30 Lady Wolf, Human" spawnUnit=oBoss1a}
if enemySpawn=31 {enemySpawnName="31 Lady Wolf" spawnUnit=oBoss1}
if enemySpawn=32 {enemySpawnName="32 Pharaoh" spawnUnit=oPharaoh}
if enemySpawn=33 {enemySpawnName="33 Franki" spawnUnit=oFranki}
if enemySpawn=34 {enemySpawnName="34 Oni" spawnUnit=oOni}
if enemySpawn=35 {enemySpawnName="35 Franki" spawnUnit=oPrince}
if enemySpawn=36 {enemySpawnName="36 Witch" spawnUnit=oWitch}
if enemySpawn=37 {enemySpawnName="37 P Princess" spawnUnit=oPlantPrincess}
if enemySpawn=38 {enemySpawnName="38 Heads" spawnUnit=oTwoHeads}
if enemySpawn=39 {enemySpawnName="39 Harpy" spawnUnit=oHarpy}
if enemySpawn=40 {enemySpawnName="40 Scientist" spawnUnit=oScientist}
if enemySpawn=49 {enemySpawnName="49 Dastardly" spawnUnit=oDastardly}
}
if spawnType="Item"
{
if enemySpawn=0 {enemySpawnName="1 Food" spawnUnit=oBurger}
if enemySpawn=1 {enemySpawnName="2 Throwing Cone" spawnUnit=oCone}
if enemySpawn=2 {enemySpawnName="3 Super Item" spawnUnit=oSuperItem}
if enemySpawn=3 {enemySpawnName="4 Bat" spawnUnit=oBat}
if enemySpawn=4 {enemySpawnName="5 Hammer" spawnUnit=oHammer}
if enemySpawn=5 {enemySpawnName="6 Bomb" spawnUnit=oBomb}
if enemySpawn=6 {enemySpawnName="7 Knife" spawnUnit=oKnife}
if enemySpawn=7 {enemySpawnName="8 Gun" spawnUnit=oGun}
if enemySpawn=8 {enemySpawnName="9 Tommy Gun" spawnUnit=oTommyGun}
if enemySpawn=9 {enemySpawnName="10 Shotgun" spawnUnit=oShotgun}
if enemySpawn=10 {enemySpawnName="11 Ice Gun" spawnUnit=oIceGun}
if enemySpawn=11 {enemySpawnName="12 Ice Gun" spawnUnit=oIceGun}
}

if spawnType="Obstacle"
{
if enemySpawn=0 {enemySpawnName="1 Elec Floor" spawnUnit=oElecFloor}
if enemySpawn=1 {enemySpawnName="2 Fire Floor" spawnUnit=oBurnFloor}
if enemySpawn=2 {enemySpawnName="3 Ice Floor" spawnUnit=oIceFloor}
if enemySpawn=3 {enemySpawnName="4 Crusher" spawnUnit=oCrusher}
if enemySpawn=4 {enemySpawnName="5 Treadmill" spawnUnit=oTreadmill}
if enemySpawn=5 {enemySpawnName="6 Bomb" spawnUnit=oBomb}
if enemySpawn=6 {enemySpawnName="7 Elec Floor" spawnUnit=oElecFloor}
if enemySpawn=7 {enemySpawnName="8 Barrel" spawnUnit=oBarrel}
if enemySpawn=8 {enemySpawnName="9 Elec Floor" spawnUnit=oElecFloor}
if enemySpawn=9 {enemySpawnName="10 Car" spawnUnit=oCar}
if enemySpawn=10 {enemySpawnName="9 Elec Floor" spawnUnit=oElecFloor}
}

if spawnType="Spawn Area"
{
if enemySpawn=0 {enemySpawnName="Spawn Area 1 - Random Test" spawnUnit=oAreaSpawner}
if enemySpawn=1 {enemySpawnName="Spawn Area 2 - Robot" spawnUnit=oAreaSpawner}
if enemySpawn=2 {enemySpawnName="Spawn Area 3 - Random Test 2" spawnUnit=oAreaSpawner}
if enemySpawn=3 {enemySpawnName="Spawn Area 4 - Door" spawnUnit=oAreaSpawner}
if enemySpawn=4 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
if enemySpawn=5 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
if enemySpawn=6 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
if enemySpawn=7 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
if enemySpawn=8 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
if enemySpawn=9 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
if enemySpawn=10 {enemySpawnName="Spawn Area - Random" spawnUnit=oAreaSpawner}
}
}

