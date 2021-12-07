/// @description charinfo_set(charNO,sprite,dataPalMax,enemyscript,chardraw,my_pal_sprite,current_pal,Portrait,PortraitIndex,name,description)
/// @param charNO
/// @param sprite
/// @param dataPalMax
/// @param enemyscript
/// @param chardraw
/// @param my_pal_sprite
/// @param current_al
/// @param Portrait
/// @param PortraitIndex
/// @param name
/// @param description
function charinfo_set(){
  charNO=argument0//1
  StandSpr=argument1
  dataPalMax=argument2//1
enemyscript=argument3//animsetup_viva
chardraw=argument4//draw_enemy;
my_pal_sprite=argument5//spr_playerpal
current_pal=argument6///0
enemyPortraitSpr=argument7//spr_playerface
enemyPortraitIndex=argument8//0
name=argument9//"VIVA"
//desc="ABCDEFGHIJKLMNOPQRSTU"
desc=argument10//"LOVELY, BUT\n"+
	// "TEMPERAMENTAL, VIVA'S\n"+
	// "SINGING IS\n"+
	// "ELECTRIFYING IN MORE.\n"+
	// "WAYS THAN ONE! THOUGH\n"+
	// "HER LUCK IS... SOUR..."
}

