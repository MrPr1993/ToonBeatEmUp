/// @description Insert description here
// You can write your code in this editor
image_speed=0
hitBack=0
act=1
targetEnemy=-1
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=40
immune=0
hplayer=0
trainz=0
side=0
ownBody=-1
targetX=0
targetY=0
hurt=0
z=0
ghostAlpha=1
ghostSet=100
hover=1
hoverZ=0
spdZ=0
disappeartime=0
my_pal_sprite=0
current_pal=0
sentflying=0
name="TENTACLE"
Throw=0 
isPlayer=0
superThrown=0
dead=0
anim=0
animFrame=0
maxhp=0.1
hp=0.1
shadow=spr_shadow
fallHole=0
atk=0
showhp=1

targetID=-1;

canBounce=0
isThrow=0
throwing=0
comboBreak=0

GrabFrame=24

height=96
recovery=0
shaketime=0

HitType=0

alarm[0]=160

 HitReactionScript=-1;
 
 byetime=0;

selfatk=instance_create_depth(x,y,-1,oSelfAtk)
selfatk.isPlayer=0
selfatk.hitSource=id selfatk.selfsource=id