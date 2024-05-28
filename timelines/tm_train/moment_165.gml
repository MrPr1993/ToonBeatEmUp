if oEnemy1.ground
with oEnemy1 {canmove=0 sprite_index=ThrownSpr hurt=1 HitForceReact=0 isIdle=0 AnimFrame=0 anim=4 targetHeightHit=24}
else {with oEnemy1 AnimFrame=0 timeline_position-=1}
