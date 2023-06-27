//if specialhit!=-1 script_execute(specialhit) else hit_reaction()

wobbleX=1.2 wobbleY=0.8

shaketime=10

eyeHit=60

	if HitType=1///Shocked
	{
	hurt=1 anim=5
	}

	if HitType=3///Shocked
	{event_user(1)
	hurt=1 canBounce=0
	ground=0

	sentflying=HitForceReact
	zSpeed=HitForceReactZ

	image_index=9
	animFrame=0
	anim=8
	}

	if HitType=4///Flattened
	{hitBack=0 canBounce=0
	event_user(1)
	shaketime=10
	hurt=1
	sentflying=0
	image_index=0 sprite_index=FlatSpr
	animFrame=0
	anim=9
	specialDead=9
	}

	if HitType=5///Burned
	{canBounce=0
	recovery=30
	event_user(1)
	shaketime=10
	hurt=1
	sentflying=HitForceReact
	zSpeed=HitForceReactZ
	image_index=0
	animFrame=0
	anim=40
	}
	
	if hp=0 or hp<=0 {animFrame=0 anim=9999 canmove=0 dead=1 selfatk.atk=0}