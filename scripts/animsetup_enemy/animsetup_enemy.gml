///Animation Setup - Enemy
function animsetup_enemy() {

	if atk=0 {hitFXreset() isThrow=0 throwing=0 atkAddX=24 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}

	/////Autmoatically Set Up if hit and has to recat fast
	if hurt=1 {alarm[1]=choose(5,7,10)}

	if charThrown=1
	{
	atkAddX=0 atkAddY=0 atkAddZ=0
	selfatk.image_xscale=5.5
	selfatk.image_yscale=5.5
	}

	if thrownAtk=1
	{
	recovery=90
	}

	if anim=0///Stand
	if overwriteStand=0
	{
	atk=0
	if isIdle=0 ///Normal Stand
	{
	sprite_index=StandSpr
	image_index+=0.2 if image_index>2.8 image_index=0
	}
	if isIdle=1 and hasIdle=1///idle
	{
	sprite_index=IdleSpr
	image_index+=0.25 if image_index>2 image_index=0
	}


	}

	if anim=1 ///Move
	if overwriteMove=0
	{
	{
	if !RunAnimRecharge>0
	{sprite_index=MoveSpr} ///Walk
	else
	{sprite_index=MoveSpr
	if HasRunAnim=1 
	if leaveMode=0
	{
	if (image_xscale=1 and key_right) 
	or (image_xscale=-1 and key_left) sprite_index=RunSpr 
	} else sprite_index=RunSpr 

	}
	

	if  x<xprevious {if image_xscale=1 image_index-=0.2 else image_index+=0.2}
	else {if image_xscale=1 image_index+=0.2 else image_index-=0.2}
	
	if image_index>5.8 image_index=0 
	if image_index<0 image_index=5.8
	
	
	
	atk=0}
	}

	if anim=2
	if overwriteJump=0
	{
	sprite_index=JumpSpr
	image_index+=0.1 if image_index>4 image_index=0
	}

	if anim=3
	if overwriteJump2=0
	{
	sprite_index=JumpSpr2
	image_index+=0.1 if image_index>4 image_index=4
	}





	///Take Item
	if anim=25
	{hit=0 MoveType=0
	weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor)


	sprite_index=ThrownSpr


	image_index=8 image_speed=0 atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}





	///Attacks
	if anim=10 ///Attack Stand
	if overwriteAttack=0
	{ hit=0  
	if sprite_index!=AtkSpr and sprite_index!=AtkSpr2
	{
	if OneAttack=0 {sprite_index=choose(AtkSpr,AtkSpr2)}
	if OneAttack=1 sprite_index=AtkSpr
	if OneAttack=2 sprite_index=AtkSpr2
	}
	if sprite_index=AtkSpr {MoveType=0 damage=0.1}
	if sprite_index=AtkSpr2 {MoveType=2 damage=0.15}
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	if anim=15 ///Attack Air
	if overwriteJumpAtk=0
	{
	hit=1 MoveType=1

	sprite_index=JumpAtkSpr
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	 animFrame+=0.1 animFrame=clamp(animFrame,0,1.5)
	 if ground {hurt=0 canmove=1}
	}

	if anim=20 ///Throw
	{
	Throw=1
	sprite_index=ThrownSpr
	image_index=animFrame+targetHeightHit image_speed=0
	targetID.hit=2
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if animFrame<0.5 {grabX=16*image_xscale grabY=0 grabZ=16}
	if animFrame=1 {grabX=32*image_xscale grabY=0 grabZ=8}
	if animFrame=2 {grabX=64*image_xscale grabY=0 grabZ=16}

	 if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.1 else animFrame+=0.1 if animFrame>2.5 {hurt=0 canmove=1 Throw=0
	grabX=0 grabY=0 grabZ=0 
	with targetID
	{

	hurt=1
	hit=1
	ground=0
	zSpeed=-8
	sentflying=-2
	anim=30
	}
	targetID=-1
	}


	}

	if anim=110 ///Entering Area
	{immune=1 canmove=0

	if hasFront=1
	sprite_index=FrontSpr 
	else
	sprite_index=MoveSpr
	image_index+=0.25
	y+=1 if image_alpha<1 image_alpha+=0.05 else image_alpha=1
	if y>FrontMax
	{
	immune=0
	animFrame=0 anim=0 canmove=1 alarm[1]=2
	if targetEnemy.x>x image_xscale=1 else image_xscale=-1
	if hasFront=0
	FrontSpr=MoveSpr

	}

	}


	///Stand
	///Move
	///Jump
	///Jump Forwards
	///Hit Stand
	///Hit Air
	///Ground-Get Up




}
