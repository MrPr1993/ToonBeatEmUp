if ContinueMode=0
{
if immune=0
{
if isGrabbed=0
{
if other.isPlayer!=isPlayer
and other.atk=1 and invincible=0 and recovery=0 and superThrown=0 and anim!=6
//if (z=clamp(z,other.z,other.z+other.height+8) or (z)=clamp((z),other.z-other.height-8,other.z+8))

if (z-height)<(other.z) and (z)>(other.z-other.height)
{if other.HitQuake!=0 oControl.quakeFXTime=other.HitQuake
	hpregister=hp
		other.comboHit=90 if global.Cheat[4] if global.NoCheat hp=0
hitresponse() if other.object_index!=oBossHazard other.selfsource.playerFrom=playerNO with other {if object_index!=oBossHazard with selfsource {hitCheck=1 hud_show() 

event_user(14)
if HitReactionScript!=-1
script_execute(HitReactionScript)

}if object_index=oBossHazard hitscript()}
super+=0.25*canSuper
}


}
else
if other.isPlayer=isPlayer and other.atk=1
{if other.HitQuake!=0 oControl.quakeFXTime=other.HitQuake
if (z-height)<(other.z) and (z)>(other.z-other.height)
and recovery=0 and superThrown=0 and anim!=6
{if global.Cheat[4] if global.NoCheat hp=0
	other.comboHit=90
	
	
hitresponse() if other.object_index!=oBossHazard other.selfsource.playerFrom=playerNO with other {if object_index!=oBossHazard with selfsource {hitCheck=1 hud_show() event_user(14) ///Special Hit for enemy hitting player

}if object_index=oBossHazard hitscript()}
super+=0.25*canSuper

if hpregister!=hp {global.PerfectRun=0; combo_stop()}

}
}
}

}
