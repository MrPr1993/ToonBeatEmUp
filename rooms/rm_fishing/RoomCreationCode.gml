musicplaystart(-1)
oControl.showMap=0
global.HiScoreStage=-1

oPlayer.x=64 oPlayer.alarm[0]=30
oPlayer.y=192-16
with oPlayer
{
weapon_add("FISHING")
weaponspawn=oHammer
spawnID=oFishingRod
weaponspr=spr_fishingrod
weapontype=0
}

with oEnemySpawner
{MaxX=room_width GoBack=1
	GoBackY=1 canFollowY=1
	MaxY=240
		}


oControl.stagePause=1
oControl.showHUD=0
oControl.disableTimer=1
