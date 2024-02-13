enemy_data()

name="FIONA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=56


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

StandSpr=spr_dragonmaiden_head
MoveSpr=spr_dragonmaiden_head
RunSpr=spr_dragonmaiden_head

AtkSpr=spr_octopus_stand
AtkSpr2=spr_octopus_stand
AtkSpr3=spr_octopus_stand
AtkSpr4=spr_octopus_stand
AtkSpr5=spr_octopus_stand
JumpAtkSpr=spr_octopus_stand
JumpAtkSpr2=spr_octopus_stand

JumpSpr=spr_dragonmaiden_head
JumpSpr2=spr_dragonmaiden_head
ThrownSpr=spr_dragonmaiden_headhit
FlatSpr=spr_dragonmaiden_headflat
ShockSpr=spr_dragonmaiden_headelec
BurnSpr=spr_dragonmaiden_headburned
FrozenSpr=spr_dragonmaiden_frozen


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

isBoss=1
specialBossState=1


if oControl.betatest=1 if keyboard_check(vk_shift)
{immune=1
anim=66 canmove=0
}


///Tail Script
body=instance_create_depth(__view_get( e__VW.XView, 0 )+160,176,-1,oCameoChar) body.sprite_index=spr_dragonmaiden_tail
body.isDepth=0 body.depth=0
////Body Script
body=instance_create_depth(__view_get( e__VW.XView, 0 )+160,176,-1,oCameoChar) body.sprite_index=spr_dragonmaiden_body
