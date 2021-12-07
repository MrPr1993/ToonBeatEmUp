if immune=0
{
if isGrabbed=0
{
if other.isPlayer!=isPlayer
and other.atk=1 and invincible=0 and recovery=0 and superThrown=0 and anim!=6
//if (z=clamp(z,other.z,other.z+other.height+8) or (z)=clamp((z),other.z-other.height-8,other.z+8))

if (z-height)<(other.z) and (z)>(other.z-other.height)
{
hitresponse() with other {with selfsource {hitCheck=1 hud_show() 

event_user(14)
if HitReactionScript!=-1
script_execute(HitReactionScript)

}}
super+=0.25*canSuper
}


}
else
if other.isPlayer=isPlayer and other.atk=1
{
if (z-height)<(other.z) and (z)>(other.z-other.height)
and recovery=0 and superThrown=0 and anim!=6
{
hitresponse() with other {with selfsource {hitCheck=1 hud_show() event_user(14) ///Special Hit for enemy hitting player


}}
super+=0.25*canSuper
}
}
}


