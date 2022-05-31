/// @description Here it's for the Create. Here I put in the variables for the hi-score screen.
///Here I put the font for you to use for the screen.
function hiscore_setup() {
	//     global.scorefont=font_add_sprite_ext(spr_scorefont, '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ()_/"'+"'.✰", false, 0);
	//     Note that the font size I used is 8x8

	if !variable_global_exists("P1Score")///The score the player had. Doesn't have to be the built-in score, but I reccomend this one
	global.P1Score=0

	if !variable_global_exists("HiScoreStage")///Set to check which stage they were on when it's Game Over
	{global.HiScoreStage=1
	global.HiScoreLevel=1
	}
	HiInput1="AAA"///Default Input for the Name

	if !variable_global_exists("P1Char")
	global.P1Char=0


	if !variable_global_exists("HiScoreSet")
	{
	global.HiScoreSet=0 

	global.HiScoreName1="LOS"
	global.HiScoreName2="BRY"
	global.HiScoreName3="NEL"
	global.HiScoreName4="VIV"
	global.HiScoreName5="HIN"
	global.HiScoreName6="BTI"
	global.HiScoreName7="SOF"
	global.HiScoreName8="BRG"
	global.HiScoreName9="PR."
	global.HiScoreName10="DAN"

	global.HiScore1=100000
	global.HiScore2=90000
	global.HiScore3=80000
	global.HiScore4=70000
	global.HiScore5=60000
	global.HiScore6=50000
	global.HiScore7=40000
	global.HiScore8=30000
	global.HiScore9=20000
	global.HiScore10=10000

	global.HiScoreStage1=8
	global.HiScoreStage2=7
	global.HiScoreStage3=6
	global.HiScoreStage4=5
	global.HiScoreStage5=4
	global.HiScoreStage6=3
	global.HiScoreStage7=2
	global.HiScoreStage8=1
	global.HiScoreStage9=1
	global.HiScoreStage10=1

	global.HiScoreFace1=0
	global.HiScoreFace2=1
	global.HiScoreFace3=2
	global.HiScoreFace4=3
	global.HiScoreFace5=2
	global.HiScoreFace6=0
	global.HiScoreFace7=3
	global.HiScoreFace8=2
	global.HiScoreFace9=1
	global.HiScoreFace10=0
	}

	///These will be used for the scrolling screen
	hiScoreY=-8
	hiScoreYgo=0
	alarm[5]=2



}
