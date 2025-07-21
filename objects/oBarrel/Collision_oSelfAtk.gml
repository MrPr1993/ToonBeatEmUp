if other.atk=1
if hit=0
if z<other.z+height-8
{
if z>other.z-1
or z+height-8<other.z+other.height-8
{
if x>other.SourceX sourceCheckX=-1 else sourceCheckX=1 
if other.hitSource.object_index=oPlayer
playerFrom=other.hitSource.playerNO
with other.hitSource
{if object_index=oPlayer
{comboScoreTime=oControl.ComboTime
if weaponAttack=1
weaponLife-=1-1*global.Cheat[10]*global.NoCheat
}
}
event_user(0)
}
}

