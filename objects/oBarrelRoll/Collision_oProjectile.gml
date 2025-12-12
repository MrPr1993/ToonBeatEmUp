if other.atk=1
if hit=0
if z<other.z+height
{
if z>other.z-1
or z+height<other.z+other.height
{
if x>other.SourceX sourceCheckX=-1 else sourceCheckX=1 

with other.hitSource
{if object_index=oPlayer
if weaponAttack=1
weaponLife-=1-1*global.Cheat[11]*global.NoCheat
}
event_user(0)
}
}

