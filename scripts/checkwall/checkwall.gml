function checkwall() {
	if !ground and hurt=1 and Throw=0 and HitForceReact=0 and fallHole=0
	{//if image_xscale=1 image_xscale=-1 else image_xscale=1

	if sentflying>0 sentflying=-2
	else sentflying=2

	flashFX(x,y+2,z-height/2,spr_hitwall,0,1,10,1,1,c_white,1)
	fx.isDepth=0 fx.depth=depth-1

	PlaySoundNoStack(snd_hitground)

	animFrame=3 canBounce=0

	senflying=-sentflying zSpeed-=4
	if hitBack=0 hitBack=1 else hitBack=0
	}



}
