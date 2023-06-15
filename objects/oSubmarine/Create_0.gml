enemy_data()

name="SEA BANDIT"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=57


enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=320

OneAttack=2

defense=1.5

hp=2.0
maxhp=2.0

height=128

specialFX=0

StandSpr=spr_submarine
MoveSpr=spr_submarine
RunSpr=spr_submarine

AtkSpr=spr_octopus_stand
AtkSpr2=spr_octopus_stand
AtkSpr3=spr_octopus_stand
AtkSpr4=spr_octopus_stand
AtkSpr5=spr_octopus_stand
JumpAtkSpr=spr_octopus_stand
JumpAtkSpr2=spr_octopus_stand

JumpSpr=spr_octopus_stand
JumpSpr2=spr_octopus_stand
ThrownSpr=spr_octopus_hit
FlatSpr=spr_octopus_flat
ShockSpr=spr_octopus_elec
BurnSpr=spr_octopus_burned
FrozenSpr=spr_octopus_frozen


lockPos=1;
lockX=x;
lockY=y;
lockZ=z;

shadow=mask_none


eyeX=0;
eyeY=0;
eyeReaction=1
eyeHit=0;

canbeGrabbed=0

spawntent[4]=0;
spawntent[0]=choose(120,140,160,180,200,220,240);
spawntent[1]=choose(120,140,160,180,200,220,240);
spawntent[2]=choose(120,140,160,180,200,220,240);
spawntent[3]=choose(120,140,160,180,200,220,240);
spawntent[4]=choose(120,140,160,180,200,220,240);
tent1=-1;
tent2=-1;
tent3=-1;
tent4=-1;


if oControl.betatest=1 if keyboard_check(vk_shift)
{immune=1
anim=66 canmove=0
}