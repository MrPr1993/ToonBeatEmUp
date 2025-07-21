if other.atk=1
if hit=0
if z<other.z+height
{
if z>other.z-1
or z+height<other.z+other.height
{
if x>other.SourceX sourceCheckX=-1 else sourceCheckX=1 
if other.hitSource.object_index=oPlayer
playerFrom=other.hitSource.playerNO
with other.hitSource
{if object_index=oPlayer
{
comboScoreTime=oControl.ComboTime
}
}
event_user(0)
}
}

