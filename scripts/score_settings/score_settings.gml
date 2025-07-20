// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function combo_points(){
if comboScoreTime!=0 comboScore+=10; comboScoreTime=oControl.ComboTime
}

function combo_stop() {PlayerScore+=comboScore; comboScore=0; comboScoreTime=0;}
