if ContinueMode=0
{
if dead=0 and hp>=0.01
{
PlaySoundNoStackPitch(choose(DamageVoice1,DamageVoice2,DamageVoice3),1+choose(-random(0.1),random(0.1)))
}

}