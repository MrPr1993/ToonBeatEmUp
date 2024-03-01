// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_switch(_name,_isweak){

switch(_name)
{
///Mr. Burg
case "MR.LAR": enemy_modify(my_pal_sprite,4,_name,0,0.24,0.24) break;	
case "MR.ROB": enemy_modify(my_pal_sprite,6,_name,0,0.35,0.35) break;	

///Mr. Teef
case "MR.LAD": enemy_modify(my_pal_sprite,4,_name,0,0.24,0.24) break;	
case "MR.RON": enemy_modify(my_pal_sprite,6,_name,0,0.35,0.35) break;	

///Mr. Sneak
case "MR.SLIP": enemy_modify(my_pal_sprite,1,_name,0,0.35,0.24) break;	
case "MR.SLINK": enemy_modify(my_pal_sprite,2,_name,0,0.40,0.40) break;	
case "MR.SIDLE": enemy_modify(my_pal_sprite,3,_name,0,0.40,0.40) break;	
case "MR.PROWL": enemy_modify(my_pal_sprite,4,_name,0,0.45,0.45) break;	

///Mr. Large
case "MR.WIDE": enemy_modify(my_pal_sprite,4,_name,0,0.4,0.4) break;	



}

////This will be used for spawners such as the ambushers
if _isweak {hp=0.00001 maxhp=0.00001}

}