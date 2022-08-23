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



	if HiScoreCheck>=global.HiScore10 ///10th
	{if HiScoreCheck>=global.HiScore9 ///9th
	{global.HiScore10=global.HiScore9 
	global.HiScoreName10=global.HiScoreName9 
	global.HiScoreFace10=global.HiScoreFace9
	global.HiScoreStage10=global.HiScoreStage9

	global.HiScore9=HiScoreCheck
	if HiScoreCheck>=global.HiScore8 ///8th
	{
	global.HiScore9=global.HiScore8 
	global.HiScoreName9=global.HiScoreName8 
	global.HiScoreFace9=global.HiScoreFace8
	global.HiScoreStage9=global.HiScoreStage8

	global.HiScore8=HiScoreCheck
	if HiScoreCheck>=global.HiScore7 ///7th
	{global.HiScore8=global.HiScore7 
	global.HiScoreName8=global.HiScoreName7 
	global.HiScoreFace8=global.HiScoreFace7
	global.HiScoreStage8=global.HiScoreStage7
 
	   global.HiScore7=HiScoreCheck
	if HiScoreCheck>=global.HiScore6 ///6th
	{global.HiScore7=global.HiScore6 
	global.HiScoreName7=global.HiScoreName6 
	global.HiScoreFace7=global.HiScoreFace6
	global.HiScoreStage7=global.HiScoreStage6
 
	   global.HiScore6=HiScoreCheck
	if HiScoreCheck>=global.HiScore5 ///5th
	{global.HiScore6=global.HiScore5 
	global.HiScoreName6=global.HiScoreName5 
	global.HiScoreFace6=global.HiScoreFace5
	global.HiScoreStage6=global.HiScoreStage5
 
	   global.HiScore5=HiScoreCheck
	if HiScoreCheck>=global.HiScore4 ///4th
	{global.HiScore5=global.HiScore4 
	global.HiScoreName5=global.HiScoreName4 
	global.HiScoreFace5=global.HiScoreFace4
	global.HiScoreStage5=global.HiScoreStage4
 
	   global.HiScore4=HiScoreCheck
	if HiScoreCheck>=global.HiScore3 ///3rd
	{global.HiScore4=global.HiScore3 
	global.HiScoreName4=global.HiScoreName3 
	global.HiScoreFace4=global.HiScoreFace3
	global.HiScoreStage4=global.HiScoreStage3
 
	   global.HiScore3=HiScoreCheck
	if HiScoreCheck>=global.HiScore2 ///2nd
	{global.HiScore3=global.HiScore2 
	global.HiScoreName3=global.HiScoreName2 
	global.HiScoreFace3=global.HiScoreFace2
	global.HiScoreStage3=global.HiScoreStage2
 
	   global.HiScore2=HiScoreCheck
	if HiScoreCheck>=global.HiScore1 ///1st
	{global.HiScore2=global.HiScore1 
	global.HiScoreName2=global.HiScoreName1 
	global.HiScoreFace2=global.HiScoreFace1
	global.HiScoreStage2=global.HiScoreStage1
 
	global.HiScore1=HiScoreCheck
	global.HiScoreName1=HiInput1
	global.HiScoreFace1=global.P1Char
	global.HiScoreStage1=global.HiScoreLevel
   
	} else {/////The non-scored
	global.HiScore2=HiScoreCheck
	global.HiScoreName2=HiInput1
	global.HiScoreFace2=global.P1Char
	global.HiScoreStage2=global.HiScoreLevel
	}
	} else {
	global.HiScore3=HiScoreCheck
	global.HiScoreName3=HiInput1
	global.HiScoreFace3=global.P1Char
	global.HiScoreStage3=global.HiScoreLevel
	}
	} else {
	global.HiScore4=HiScoreCheck
	global.HiScoreName4=HiInput1
	global.HiScoreFace4=global.P1Char
	global.HiScoreStage4=global.HiScoreLevel
	}
	} else {
	global.HiScore5=HiScoreCheck
	global.HiScoreName5=HiInput1
	global.HiScoreFace5=global.P1Char
	global.HiScoreStage5=global.HiScoreLevel
	}
	} else {
	global.HiScore6=HiScoreCheck
	global.HiScoreName6=HiInput1
	global.HiScoreFace6=global.P1Char
	global.HiScoreStage6=global.HiScoreLevel
	}
	} else {
	global.HiScore7=HiScoreCheck
	global.HiScoreName7=HiInput1
	global.HiScoreFace7=global.P1Char
	global.HiScoreStage7=global.HiScoreLevel
	}
	} else {
	global.HiScore8=HiScoreCheck
	global.HiScoreName8=HiInput1
	global.HiScoreFace8=global.P1Char
	global.HiScoreStage8=global.HiScoreLevel
	}
	} else {
	global.HiScore9=HiScoreCheck
	global.HiScoreName9=HiInput1
	global.HiScoreFace9=global.P1Char
	global.HiScoreStage9=global.HiScoreLevel
	}
	} else {
	global.HiScore10=HiScoreCheck
	global.HiScoreName10=HiInput1
	global.HiScoreFace10=global.P1Char
	global.HiScoreStage10=global.HiScoreLevel
	}
	hiscore_save()
	}



}
