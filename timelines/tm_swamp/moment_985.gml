if sandstorm.specialcheck[8]>104
{with sandstorm instance_destroy()
with oPlayer {x=9318 y=200+16*controlNO }
with oControl
{
stageEndFX=1  
}
}
else
timeline_position-=1
