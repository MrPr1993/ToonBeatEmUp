/// @description If certain details like the Continue happens and it needs to freeze all enemies
function enemy_data() {
	character_setup()
	
	

	enemyscript=animsetup_enemy
	enemyai=enemy_ai
	enemycontrol=enemy_control
	specialhit=-1

	nameID="None"
	name="MR.BURG"
	enemyPortraitSpr=spr_enemyface
	enemyPortraitIndex=1

	targetEnemy=oPlayer
	defense=1

idlestyle=0

	///Characters affiliation tag
	isPlayer=0

	aff=instance_create_depth(x,y,0,oAffTag1)
	aff.aff=0 aff.affID=id

	GrabFrame=24
	alarm[1]=screenCheck

	walkSpeed=1
	walkSpeedY=1
	walkMulX=1
	walkMulY=1

	isEnemy=1

	enemy_setup()


	selfatk.isPlayer=0

	///Sprites to change the default with
	StandSpr=spr_burglar_stand
	overwriteStand=0
	overwriteMove=0
	MoveSpr=spr_burglar_move

	RunSpr=spr_burglar_run
	overwriteAttack=0
	OneAttack=0///Of only one animation of the attack's used
	AtkSpr=spr_burglar_attack
	overwriteAttack2=0
	AtkSpr2=spr_burglar_attack2
	overwriteAttack3=0
	AtkSpr3=spr_burglar_attack
	overwriteAttack4=0
	AtkSpr4=spr_burglar_attack
	overwriteAttack5=0
	AtkSpr5=spr_burglar_attack
	overwriteJumpAtk=0
	JumpAtkSpr=spr_burglar_airattack
	overwriteJumpAtk2=0
	JumpAtkSpr2=spr_burglar_attack
	overwriteRollBack=0
	overwriteHitGetup=0
	overwriteHitAir=0
	overwriteHitStand=0
	overwriteJump=0
	JumpSpr=spr_burglar_stand
	overwriteJump2=0
	JumpSpr2=JumpSpr
	overwriteThrown=0
	ThrownSpr=spr_burglar_hit
	GrabbedSpr=spr_burglar_hit
	overwriteFlat=0
	FlatSpr=spr_burglar_flat
	overwriteShock=0
	ShockSpr=spr_burglar_elec
	overwriteBurn=0
	BurnSpr=spr_burglar_burned
	overwriteFrozen=0
	FrozenSpr=spr_burglar_frozen
	DizzySpr=spr_burglar_dizzy
	hasDizzy=0
	overwriteDizzy=0
	FrontSpr=spr_burglar_front
	hasFront=0
	FrontMax=y+32
	ScreenHitSpr=spr_burglar_hit
	IdleSpr=spr_burglar_idle
	cutSpr1=spr_burglar_cut1
	cutSpr2=spr_burglar_cut2
	bikeSpr=spr_burglar_bike
	
	instantFall=0
	
	if place_meeting(x,y,oEnemyVisibleCheckLeft)
	{act=0 visible=0 activeCheck=1}
	if place_meeting(x,y,oEnemyVisibleCheckRight)
	{act=0 visible=0 activeCheck=2}

	///Palette
	current_pal=2;
	my_pal_sprite=spr_enemypal
	weapon_pal=0;
	weapon_pal_sprite=spr_weaponpal
	///Override stuff.
	override_surface=noone;
	override_pal_index=1;
	///
drawarms=0;
	///Throw Frame Setup
	///spritepos_setup(1,0,0,0)

if oControl.betatest=1 if keyboard_check(vk_space) and keyboard_check(ord("Z"))
itemID=choose(oPizza,oGemstone,o1up,oBomb)

}
