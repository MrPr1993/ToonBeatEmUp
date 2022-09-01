/// @description 10000
///20000
///30000
///40000
///50000
///60000
///70000
///80000
///90000
///100000
function hiscore_check() {


if playerNO=1
HiScoreCheck=global.P1Score
if playerNO=2
HiScoreCheck=global.P2Score
if playerNO=3
HiScoreCheck=global.P3Score
if playerNO=4
HiScoreCheck=global.P4Score

	if HiScoreCheck>=global.HiScore10 ///10th
	{if HiScoreCheck>=global.HiScore9 ///9th
	{global.HiScore10=global.HiScore9 
	global.HiScoreName10=global.HiScoreName9 
	global.HiScoreFace10=global.HiScoreFace9
	global.HiScoreStage10=global.HiScoreStage9
	global.HiScorePalS10=global.HiScorePalS9
	global.HiScorePal10=global.HiScorePal9

	global.HiScore9=HiScoreCheck
	if HiScoreCheck>=global.HiScore8 ///8th
	{
	global.HiScore9=global.HiScore8 
	global.HiScoreName9=global.HiScoreName8 
	global.HiScoreFace9=global.HiScoreFace8
	global.HiScoreStage9=global.HiScoreStage8
	global.HiScorePalS9=global.HiScorePalS8
	global.HiScorePal9=global.HiScorePal8

	global.HiScore8=HiScoreCheck
	if HiScoreCheck>=global.HiScore7 ///7th
	{global.HiScore8=global.HiScore7 
	global.HiScoreName8=global.HiScoreName7 
	global.HiScoreFace8=global.HiScoreFace7
	global.HiScoreStage8=global.HiScoreStage7
	global.HiScorePalS8=global.HiScorePalS7
	global.HiScorePal8=global.HiScorePal7
 
	   global.HiScore7=HiScoreCheck
	if HiScoreCheck>=global.HiScore6 ///6th
	{global.HiScore7=global.HiScore6 
	global.HiScoreName7=global.HiScoreName6 
	global.HiScoreFace7=global.HiScoreFace6
	global.HiScoreStage7=global.HiScoreStage6
	global.HiScorePalS7=global.HiScorePalS6
	global.HiScorePal7=global.HiScorePal6
 
	   global.HiScore6=HiScoreCheck
	if HiScoreCheck>=global.HiScore5 ///5th
	{global.HiScore6=global.HiScore5 
	global.HiScoreName6=global.HiScoreName5 
	global.HiScoreFace6=global.HiScoreFace5
	global.HiScoreStage6=global.HiScoreStage5
	global.HiScorePalS6=global.HiScorePalS5
	global.HiScorePal6=global.HiScorePal5
 
	   global.HiScore5=HiScoreCheck
	if HiScoreCheck>=global.HiScore4 ///4th
	{global.HiScore5=global.HiScore4 
	global.HiScoreName5=global.HiScoreName4 
	global.HiScoreFace5=global.HiScoreFace4
	global.HiScoreStage5=global.HiScoreStage4
	global.HiScorePalS5=global.HiScorePalS4
	global.HiScorePal5=global.HiScorePal4
 
	   global.HiScore4=HiScoreCheck
	if HiScoreCheck>=global.HiScore3 ///3rd
	{global.HiScore4=global.HiScore3 
	global.HiScoreName4=global.HiScoreName3 
	global.HiScoreFace4=global.HiScoreFace3
	global.HiScoreStage4=global.HiScoreStage3
	global.HiScorePalS4=global.HiScorePalS3
	global.HiScorePal4=global.HiScorePal3
 
	   global.HiScore3=HiScoreCheck
	if HiScoreCheck>=global.HiScore2 ///2nd
	{global.HiScore3=global.HiScore2 
	global.HiScoreName3=global.HiScoreName2 
	global.HiScoreFace3=global.HiScoreFace2
	global.HiScoreStage3=global.HiScoreStage2
	global.HiScorePalS3=global.HiScorePalS2
	global.HiScorePal3=global.HiScorePal2
 
	   global.HiScore2=HiScoreCheck
	if HiScoreCheck>=global.HiScore1 ///1st
	{global.HiScore2=global.HiScore1 
	global.HiScoreName2=global.HiScoreName1 
	global.HiScoreFace2=global.HiScoreFace1
	global.HiScoreStage2=global.HiScoreStage1
	global.HiScorePalS2=global.HiScorePalS1
	global.HiScorePal2=global.HiScorePal1
 
	global.HiScore1=HiScoreCheck
	global.HiScoreName1=HiInput1
	global.HiScoreFace1=global.P1Char
	global.HiScoreStage1=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS1=global.p1Pals global.HiScorePal1=global.p1Pal}
if playerNO=2 {global.HiScorePalS1=global.p2Pals global.HiScorePal1=global.p2Pal}
if playerNO=3 {global.HiScorePalS1=global.p3Pals global.HiScorePal1=global.p3Pal}
if playerNO=4 {global.HiScorePalS1=global.p4Pals global.HiScorePal1=global.p4Pal}
   
	} else {/////The non-scored
	global.HiScore2=HiScoreCheck
	global.HiScoreName2=HiInput1
	global.HiScoreFace2=global.P1Char
	global.HiScoreStage2=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS2=global.p1Pals global.HiScorePal2=global.p1Pal}
if playerNO=2 {global.HiScorePalS2=global.p2Pals global.HiScorePal2=global.p2Pal}
if playerNO=3 {global.HiScorePalS2=global.p3Pals global.HiScorePal2=global.p3Pal}
if playerNO=4 {global.HiScorePalS2=global.p4Pals global.HiScorePal2=global.p4Pal}
	}
	} else {
	global.HiScore3=HiScoreCheck
	global.HiScoreName3=HiInput1
	global.HiScoreFace3=global.P1Char
	global.HiScoreStage3=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS3=global.p1Pals global.HiScorePal3=global.p1Pal}
if playerNO=2 {global.HiScorePalS3=global.p2Pals global.HiScorePal3=global.p2Pal}
if playerNO=3 {global.HiScorePalS3=global.p3Pals global.HiScorePal3=global.p3Pal}
if playerNO=4 {global.HiScorePalS3=global.p4Pals global.HiScorePal3=global.p4Pal}
	}
	} else {
	global.HiScore4=HiScoreCheck
	global.HiScoreName4=HiInput1
	global.HiScoreFace4=global.P1Char
	global.HiScoreStage4=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS4=global.p1Pals global.HiScorePal4=global.p1Pal}
if playerNO=2 {global.HiScorePalS4=global.p2Pals global.HiScorePal4=global.p2Pal}
if playerNO=3 {global.HiScorePalS4=global.p3Pals global.HiScorePal4=global.p3Pal}
if playerNO=4 {global.HiScorePalS4=global.p4Pals global.HiScorePal4=global.p4Pal}
	}
	} else {
	global.HiScore5=HiScoreCheck
	global.HiScoreName5=HiInput1
	global.HiScoreFace5=global.P1Char
	global.HiScoreStage5=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS5=global.p1Pals global.HiScorePal5=global.p1Pal}
if playerNO=2 {global.HiScorePalS5=global.p2Pals global.HiScorePal5=global.p2Pal}
if playerNO=3 {global.HiScorePalS5=global.p3Pals global.HiScorePal5=global.p3Pal}
if playerNO=4 {global.HiScorePalS5=global.p4Pals global.HiScorePal5=global.p4Pal}
	}
	} else {
	global.HiScore6=HiScoreCheck
	global.HiScoreName6=HiInput1
	global.HiScoreFace6=global.P1Char
	global.HiScoreStage6=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS6=global.p1Pals global.HiScorePal6=global.p1Pal}
if playerNO=2 {global.HiScorePalS6=global.p2Pals global.HiScorePal6=global.p2Pal}
if playerNO=3 {global.HiScorePalS6=global.p3Pals global.HiScorePal6=global.p3Pal}
if playerNO=4 {global.HiScorePalS6=global.p4Pals global.HiScorePal6=global.p4Pal}
	}
	} else {
	global.HiScore7=HiScoreCheck
	global.HiScoreName7=HiInput1
	global.HiScoreFace7=global.P1Char
	global.HiScoreStage7=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS7=global.p1Pals global.HiScorePal7=global.p1Pal}
if playerNO=2 {global.HiScorePalS7=global.p2Pals global.HiScorePal7=global.p2Pal}
if playerNO=3 {global.HiScorePalS7=global.p3Pals global.HiScorePal7=global.p3Pal}
if playerNO=4 {global.HiScorePalS7=global.p4Pals global.HiScorePal7=global.p4Pal}
	}
	} else {
	global.HiScore8=HiScoreCheck
	global.HiScoreName8=HiInput1
	global.HiScoreFace8=global.P1Char
	global.HiScoreStage8=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS8=global.p1Pals global.HiScorePal8=global.p1Pal}
if playerNO=2 {global.HiScorePalS8=global.p2Pals global.HiScorePal8=global.p2Pal}
if playerNO=3 {global.HiScorePalS8=global.p3Pals global.HiScorePal8=global.p3Pal}
if playerNO=4 {global.HiScorePalS8=global.p4Pals global.HiScorePal8=global.p4Pal}
	}
	} else {
	global.HiScore9=HiScoreCheck
	global.HiScoreName9=HiInput1
	global.HiScoreFace9=global.P1Char
	global.HiScoreStage9=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS9=global.p1Pals global.HiScorePal9=global.p1Pal}
if playerNO=2 {global.HiScorePalS9=global.p2Pals global.HiScorePal9=global.p2Pal}
if playerNO=3 {global.HiScorePalS9=global.p3Pals global.HiScorePal9=global.p3Pal}
if playerNO=4 {global.HiScorePalS9=global.p4Pals global.HiScorePal9=global.p4Pal}
	}
	} else {
	global.HiScore10=HiScoreCheck
	global.HiScoreName10=HiInput1
	global.HiScoreFace10=global.P1Char
	global.HiScoreStage10=global.HiScoreLevel
if playerNO=1 {global.HiScorePalS10=global.p1Pals global.HiScorePal10=global.p1Pal}
if playerNO=2 {global.HiScorePalS10=global.p2Pals global.HiScorePal10=global.p2Pal}
if playerNO=3 {global.HiScorePalS10=global.p3Pals global.HiScorePal10=global.p3Pal}
if playerNO=4 {global.HiScorePalS10=global.p4Pals global.HiScorePal10=global.p4Pal}
	}
	hiscore_save()
	if playerNO=1
	{global.P1Score=0 global.P1Life=0}
		if playerNO=2
	{global.P2Score=0 global.P2Life=0}
		if playerNO=3
	{global.P3Score=0 global.P3Life=0}
		if playerNO=4
	{global.P4Score=0 global.P4Life=0}

	}



}
