// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function treasure_set(_treasureno,_x,_y,_z){
	
global.TreasureSet=_treasureno;
global.TreasureSet=clamp(global.TreasureSet,0,12)
treasureset=instance_create_depth(_x,_y,-1,oGemstone) treasureset.z=_z
}


function treasure_setup()
{
switch(global.TreasureSet)
{
case 0: name="COIN" points=100 sprite_index=spr_itemcoin break;
case 1: name="MIRROR" points=1000 sprite_index=spr_itemmirror break;
case 2: name="PURSE" points=1000 sprite_index=spr_itempurse break;
case 3: name="CASH" points=1000 sprite_index=spr_itemcash break;
case 4: name="NECKLACE" points=3000 sprite_index=spr_itemnecklace break;
case 5: name="RADIO" points=3000 sprite_index=spr_itemradio break;
case 6: name="MONEYBAG" points=3000 sprite_index=spr_itemmoneybag break;
case 7: name="WATCH" points=3000 sprite_index=spr_itemwatch break;
case 8: name="ROSE" points=5000 sprite_index=spr_itemrose break;
case 9: name="PEARL" points=5000 sprite_index=spr_itempearl break;
case 10: name="RING" points=5000 sprite_index=spr_itemring break;
case 11: name="BRIEFCASE" points=10000 sprite_index=spr_itemcashcase break;
case 12: name="GOLD BAR" points=10000 sprite_index=spr_itemgoldbar break;
}


}