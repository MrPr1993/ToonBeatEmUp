musicplaystart(msc_gallery)
global.GalleryUnlock[1]=1; ///Viva
global.GalleryUnlock[2]=1;//Hina
global.GalleryUnlock[3]=1;//Bahati
global.GalleryUnlock[4]=1;//Sofia


global.GalleryUnlock[13]=1; ///Misc Characters
global.GalleryUnlock[14]=1;//Concept Art
global.GalleryUnlock[15]=1;//Key Art
global.GalleryUnlock[16]=1;//Guest Art
///Check if all stages are unlocked

///
	
///Check if game was cleared once
if global.ClearGame
{
global.UnlockStageA[5]=1
global.UnlockStageA[6]=1
global.UnlockStageA[7]=1
global.UnlockStageA[8]=1
global.UnlockStageA[15]=1
}

if global.UnlockStage[1] and global.UnlockStage[2] and global.UnlockStage[3] and global.UnlockStage[4]
and global.UnlockStage[5] and global.UnlockStage[6] and global.UnlockStage[7]
and global.UnlockStage[8] and global.UnlockStage[9] and global.UnlockStage[10]
and global.UnlockStage[11] and global.UnlockStage[12] and global.UnlockStage[13]
and global.UnlockStage[14] and global.UnlockStage[15] and global.UnlockStage[16]
and global.UnlockStage[18] and global.UnlockStage[20]
global.UnlockStageA[16]=1
///Check if certain levels were cleared to unlock a gallery
///1-2
if global.UnlockStage[1] and global.UnlockStage[2] and global.UnlockStage[3] and global.UnlockStage[4]
{global.GalleryUnlock[5]=1; global.GalleryUnlock[9]=1;}
///3-4
if global.UnlockStage[5] and global.UnlockStage[6] and global.UnlockStage[7]
and global.UnlockStage[8] and global.UnlockStage[9] and global.UnlockStage[10]
{global.GalleryUnlock[6]=1; global.GalleryUnlock[10]=1;}
///5-6
if global.UnlockStage[11] and global.UnlockStage[12] and global.UnlockStage[13]
and global.UnlockStage[14] and global.UnlockStage[15] and global.UnlockStage[16]
{global.GalleryUnlock[7]=1; global.GalleryUnlock[11]=1;}
///7-8
if global.UnlockStage[18] and global.UnlockStage[20]
{global.GalleryUnlock[8]=1; global.GalleryUnlock[12]=1;}
///Misc-Automatic

///Concept Art - clear once

///Key art-automatic

///Guest art - automatic