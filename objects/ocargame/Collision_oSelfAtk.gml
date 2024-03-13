if other.atk=1 and destroyed=0
if recovery=0
if z<other.z+height
{
if z>other.z-1
or z+height<other.z+other.height
{
if x>other.SourceX sourceCheckX=-1 else sourceCheckX=1 
if y>other.y-8 sourceCheckY=-1 else sourceCheckY=1 

shakefrom=sourceCheckX

other.PlayerScore=10
with other {hitSource.PlayerScore+=PlayerScore}

if hpA=0 and hpB=0 and hpC=0
{hpAll-=other.damage*2 hpHit1+=other.damage*2}
if hpAll<0
{recovery=999999999999999
zSpeed=-8 //oControl.quakeFX=30

if destroyed=0
{destroyed=1 PlaySound(snd_explosion)
repeat(4)
{
part=instance_create_depth(x-37,y+11,depth,oDisappearPart)
//-37,11
//67,11
//-68,-21
//24,-21
if iceFX=1 {part.x=x+67}
if iceFX=2 {part.x=x-68 part.y=y-21}
if iceFX=3 {part.x=x+24 part.y=y-21}
oControl.quakeFXTime=30 oControl.alarm[0]=99999999
part.image_angle=random(360) part.sprite_index=spr_carwheel
if iceFX=0 or iceFX=2 {part.hspeed=choose(-1,-2,-1.5) part.image_xscale=-1}
else part.hspeed=choose(1,2,1.5) part.z=z-34
part.image_speed=0 part.spdZ=-6 part.image_blend=image_blend
part.disappeartime=random_range(24,32) iceFX+=1; part.zAdd=-32
oPlayer.playerGet=0
if instance_exists(oPlayerDisembodied) oPlayerDisembodied.playerGet=0
if instance_exists(oPlayerNoControl) oPlayerNoControl.playerGet=0
other.hitSource.playerGet=1
}

}

}
else
{recovery=other.recovery
if sourceCheckY=-1
{
if sourceCheckX=-1 hpA-=other.damage*1.5 else hpB-=other.damage*1.5 hpHit1+=other.damage*1.5
}
else
{hpC-=other.damage*1.5 hpHit1+=other.damage*1.5}

if hpA<0 {if destA=0 { destA=1 
	oControl.quakeFX=10
iceFX=0;
PlaySoundNoStack(snd_break)

		repeat(8)
{part=instance_create_depth(x-44,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x-50
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x-58
if iceFX=0 or iceFX=4 part.z=z-75
if iceFX=1 or iceFX=5 part.z=z-80
if iceFX=2 or iceFX=6 part.z=z-75
if iceFX=3 or iceFX=7 part.z=z-80
part.image_angle=random(360) part.sprite_index=spr_cargamepart
if iceFX <4 part.hspeed=choose(-1,-2,-1.5)
else part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2,3,4,5) part.image_speed=0 part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32) iceFX+=1; } iceFX=0;
	
	}hpA=0
	}
if hpB<0 {if destB=0 {hpB=0 destB=1 PlaySoundNoStack(snd_break)
	iceFX=0; oControl.quakeFXTime=10
			repeat(8)
{part=instance_create_depth(x+34,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x+39
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x+30
if iceFX=0 or iceFX=4 part.z=z-75
if iceFX=1 or iceFX=5 part.z=z-80
if iceFX=2 or iceFX=6 part.z=z-75
if iceFX=3 or iceFX=7 part.z=z-80
part.image_angle=random(360) part.sprite_index=spr_cargamepart
if iceFX <4 part.hspeed=choose(-1,-2,-1.5)
else part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2,3,4,5) part.image_speed=0 part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32) iceFX+=1; } iceFX=0;
	
	}hpB=0
	}
if hpC<0 {if destC=0 {hpC=0 destC=1 PlaySoundNoStack(snd_break)
	iceFX=0; oControl.quakeFXTime=10
				repeat(8)
{part=instance_create_depth(x+42,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x+42
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x+42
if iceFX=0 or iceFX=4 part.z=z-44
if iceFX=1 or iceFX=5 part.z=z-40
if iceFX=2 or iceFX=6 part.z=z-44
if iceFX=3 or iceFX=7 part.z=z-40
part.image_angle=random(360) part.sprite_index=spr_cargamepart
if iceFX <4 part.hspeed=choose(-1,-2,-1.5)
else part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2,3,4,5) part.image_speed=0 part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32) iceFX+=1; } iceFX=0;
	
	}hpC=0
	}
other.comboHit=90
}
PlaySoundNoStack(snd_metalhit) other.hitSource.altresult2+=round(other.damage*2500)
	PlaySound(other.HitSound)
	flashFX(other.x,other.y,other.z,other.spriteFX,other.indexFX,other.speedFX,other.spriteTime,other.xScaleFX,other.yScaleFX,other.blendFX,other.alphaFX)
	fx.isDepth=other.isDepth fx.speedFX=other.speedFX


with other.hitSource
{if object_index=oPlayer
if weaponAttack=1
weaponLife-=1-1*global.Cheat[10]
}
recovery=10
shaketime=10

}
}

