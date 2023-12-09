/// @description Select Enemy & Item
if !keyboard_check(vk_control)
{

if spawnNo=0 spawnType="Enemy"
if spawnNo=1 spawnType="Bosses"
if spawnNo=2 spawnType="Item"
if spawnNo=3 spawnType="Obstacle"
if spawnNo=4 spawnType="Spawn Area"

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
if enemySpawn=8 {enemySpawnName="8 Harpy" spawnUnit=oHarpyE}
if enemySpawn=9 {enemySpawnName="9 Catman" spawnUnit=oCatman}
if enemySpawn=10 {enemySpawnName="10 Zombieman" spawnUnit=oZombieMan}
if enemySpawn=11 {enemySpawnName="11 Zombiewoman" spawnUnit=oZombieWoman}
if enemySpawn=12 {enemySpawnName="12 Ninja Bun" spawnUnit=oNinjaBun}
if enemySpawn=13 {enemySpawnName="13 S. Showgirl" spawnUnit=oSamurai}
if enemySpawn=14 {enemySpawnName="14 Mr Chip" spawnUnit=oStrongBurg}
if enemySpawn=15 {enemySpawnName="15 Robot, Ice" spawnUnit=oRobotIce}
if enemySpawn=16 {enemySpawnName="16 Robot, Fire" spawnUnit=oRobotBurn}
if enemySpawn=17 {enemySpawnName="17 Mirror Diva" spawnUnit=oMirrorDiva}
if enemySpawn=18 {enemySpawnName="18 Wrestler" spawnUnit=oWrestler}
if enemySpawn=19 {enemySpawnName="19 Burglar B" spawnUnit=oEnemy1B}
if enemySpawn=20 {enemySpawnName="20 Skeleton" spawnUnit=oSkeleton}
if enemySpawn=21 {enemySpawnName="21 Slime" spawnUnit=oSlime}
if enemySpawn=22 {enemySpawnName="22 Martian" spawnUnit=oMartian}
if enemySpawn=23 {enemySpawnName="23 Merman" spawnUnit=oMerman}
if enemySpawn=24 {enemySpawnName="24 Siren" spawnUnit=oSiren}
if enemySpawn=25 {enemySpawnName="25 Goblin" spawnUnit=oGoblin}
if enemySpawn=26 {enemySpawnName="26 Alien Robot" spawnUnit=oAlienRobot}
if enemySpawn=27 {enemySpawnName="27 Cobra" spawnUnit=oCobra}
if enemySpawn=28 {enemySpawnName="28 Plant" spawnUnit=oPlant}
if enemySpawn=29 {enemySpawnName="29 Animated Object" spawnUnit=oAnimatedObject}
if enemySpawn=30 {enemySpawnName="30 Painting" spawnUnit=oPainting}
if enemySpawn=31 {enemySpawnName="31 Monk" spawnUnit=oMonk}
if enemySpawn=32 {enemySpawnName="32 Lobster" spawnUnit=oLobster}
if enemySpawn=33 {enemySpawnName="33 Spacer" spawnUnit=oSpacer}
if enemySpawn=34 {enemySpawnName="34 Diver" spawnUnit=oDiver}
if enemySpawn=35 {enemySpawnName="35 Ladybot" spawnUnit=oLadybot}
if enemySpawn=36 {enemySpawnName="36 Nurse" spawnUnit=oNurse}
if enemySpawn=37 {enemySpawnName="37 Shroom" spawnUnit=oShroom}
if enemySpawn=38 {enemySpawnName="38 Dancer" spawnUnit=oDancer}
if enemySpawn=39 {enemySpawnName="39 Clown Puppet" spawnUnit=oClown}
if enemySpawn=40 {enemySpawnName="40 Teddy Bear" spawnUnit=oBear}
if enemySpawn=41 {enemySpawnName="41 Snow Girl" spawnUnit=oSnowGirl}
if enemySpawn=42 {enemySpawnName="42 Fairy" spawnUnit=oFairy}
}
if spawnType="Bosses"
{
if enemySpawn=0 {enemySpawnName="1 Lady Wolf, Human" spawnUnit=oBoss1a}
if enemySpawn=1 {enemySpawnName="1 Lady Wolf" spawnUnit=oBoss1}
if enemySpawn=2 {enemySpawnName="2-a Dolores" spawnUnit=oTwoHeads}
if enemySpawn=3 {enemySpawnName="2-b C.Rosy" spawnUnit=oFranki}
if enemySpawn=4 {enemySpawnName="2-c Harpilda" spawnUnit=oHarpy}
if enemySpawn=5 {enemySpawnName="3-a Annemari" spawnUnit=oGhostBoss}
if enemySpawn=6 {enemySpawnName="3-b Hathor" spawnUnit=oPharaoh}
if enemySpawn=7 {enemySpawnName="3-c Oni Sister" spawnUnit=oOni}
if enemySpawn=8 {enemySpawnName="4-a Swamp Witch" spawnUnit=oWitch}
if enemySpawn=9 {enemySpawnName="4-b Duck" spawnUnit=oDuckBoss}
if enemySpawn=10 {enemySpawnName="4-cb Octopus" spawnUnit=oOctopus}
if enemySpawn=11 {enemySpawnName="4-c Seaweed" spawnUnit=oSeaweed}
if enemySpawn=12 {enemySpawnName="5-a Martian Queen" spawnUnit=oMartianBoss} ////Alien
if enemySpawn=13 {enemySpawnName="4-c Submarine" spawnUnit=oSubmarine} ///Submarine
if enemySpawn=14 {enemySpawnName="5-b Merman Prince" spawnUnit=oPrince}
if enemySpawn=15 {enemySpawnName="5-c Genie" spawnUnit=oGenie}//?Genie
if enemySpawn=16 {enemySpawnName="6-a Mirror Lady" spawnUnit=oMirrorLady}//?Genie
if enemySpawn=17 {enemySpawnName="6-b Plant Princess" spawnUnit=oPlantPrincess}//Plant Princess
if enemySpawn=18 {enemySpawnName="6-c Dragon Maiden" spawnUnit=oDragonMaiden}//?Genie
if enemySpawn=19 {enemySpawnName="7- Scientist Boss" spawnUnit=oScientist}//?Genie
if enemySpawn=20 {enemySpawnName="Dastardly" spawnUnit=oDastardly}
if enemySpawn=21 {enemySpawnName="Dastardly?" spawnUnit=oDastardly2}
if enemySpawn=22 {enemySpawnName="???" spawnUnit=oPainter}
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
if enemySpawn=11 {enemySpawnName="12 Axe" spawnUnit=oAxe}
if enemySpawn=12 {enemySpawnName="13 Katana" spawnUnit=oKatana}
if enemySpawn=13 {enemySpawnName="14 Shovel" spawnUnit=oShovel}
if enemySpawn=14 {enemySpawnName="15 Pipe" spawnUnit=oPipe}
if enemySpawn=15 {enemySpawnName="16 Taser" spawnUnit=oTaser}
if enemySpawn=16 {enemySpawnName="17 Sword" spawnUnit=oSword}
if enemySpawn=17 {enemySpawnName="18 Pie" spawnUnit=oPie}
if enemySpawn=18 {enemySpawnName="19 Whip" spawnUnit=oWhip}
if enemySpawn=18 {enemySpawnName="20 Staff" spawnUnit=oStaff}
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
if enemySpawn=8 {enemySpawnName="9 Bull" spawnUnit=oBull}
if enemySpawn=9 {enemySpawnName="10 Car" spawnUnit=oCar}
if enemySpawn=10 {enemySpawnName="11 Gun Range" spawnUnit=oGunRange}
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

