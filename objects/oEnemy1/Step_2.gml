enemy_endstep()
throw_step()



///Used if the above can't end the panic animation
if anim=595000 {panicbreaker++; if panicbreaker>50 {recovery=0 recoveryThrow=0 panicbreaker=0 canmove=1 anim=0 AnimFrame=0}}