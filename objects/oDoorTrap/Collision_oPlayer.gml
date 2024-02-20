with (other) {
if  hurt=0 and invincible=0 and recovery=0 and superThrown=0 and anim!=6
and other.image_index=clamp(other.image_index,1,4.9) and z>other.z-other.height and other.active=1
{
PlaySoundNoStack(snd_hit)
hp-=0.1 flashFX(x,y,z-32,spr_hitflash4,0,1,0,1,1,c_white,1)
HitType=7 event_user(0)// zSpeed=-4
//if x>other.x {sentflying=4 if image_xscale=1 hitBack=1 else hitBack=0} else {sentflying=-4 if image_xscale=-1 hitBack=1 else hitBack=0}
}

}
