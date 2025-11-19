// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_enemies(){

var _ageT="AGE";
var _likesT="LIKES";
var _dislikesT="DISLIKES";
var _hobbyT="HOBBY";
var _heightT="H";
var _weightT="W";
var _abilitiesT="ABILITIES"

switch(global.Language)
{
case 1:
_ageT="EDAD";
_likesT="GUSTOS";
_dislikesT="DISGUSTOS";
_hobbyT="PASATIEMPOS";
_heightT="A";
_weightT="P";
_abilitiesT="ABILIDADES"
break;
case 2: ///Portuguese
_ageT="IDADE";
_likesT="GOSTA";
_dislikesT="DESGOSTA";
_hobbyT="PASSATIEMPOS";
_heightT="A";
_weightT="P";
_abilitiesT="HABILIDADES"
break;
}

dataabilitiesB=_abilitiesT;

switch (dataSelect) 
{
  case 1:
  hp=0.2 enemyID=1
//global.Language

descT[0]="Just your run of the mill small fry burglar, but stay sharp! They come in groups!"   
descleftT[0]=string(_ageT)+":37\nNAT.:USA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":CHICKENS,STEALING\n"+string(_dislikesT)+":DOGS\n"+string(_hobbyT)+":Biking"
descabsT[0]="Bruising,Kicking,Biking"

descT[1]="Just your run of the mill small fry burglar, but stay sharp! They come in groups!"   
descleftT[1]=string(_ageT)+":37\nNAT.:USA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":GALLINAS,ROBANDO\n"+string(_dislikesT)+":PERROS\n"+string(_hobbyT)+":Motocicleta"
descabsT[1]="Moretones,Patadas,Motociclismo"

descT[2]="Só um trombadinha qualquer, mas fique atento! Eles vêm em grupos!"
descleftT[2]=string(_ageT)+":37\nNAT.:USA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":GALINHAS,ROUBANDO\n"+string(_dislikesT)+":CÃES\n"+string(_hobbyT)+":Motocicleta"
descabsT[2]="Hematomas,Chutar,Andar de moto"

  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
descT[global.Language])

if dataPal=2
{

descT[0]="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"
descleftT[0]=string(_ageT)+":38\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
descrightT[0]=string(_likesT)+":FRIES,STEALING\n"+string(_dislikesT)+":CATS\n"+string(_hobbyT)+":RIDING"
descabsT[0]="Bruising,Kicking,Biking"

descT[1]="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"
descleftT[1]=string(_ageT)+":38\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
descrightT[1]=string(_likesT)+":PAPAS FRITAS,ROBANDO\n"+string(_dislikesT)+":GATOS\n"+string(_hobbyT)+":MONTANDO"
descabsT[1]="Moretones,Patadas,Motociclismo"

descT[2]="Parente de alto escalão do Burg. Não muito mais forte em comparação, mas tem um chute bem doído!"
descleftT[2]=string(_ageT)+":38\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
descrightT[2]=string(_likesT)+":BATATAS FRITAS,ROUBANDO\n"+string(_dislikesT)+":GATOS\n"+string(_hobbyT)+":MONTANDO"
descabsT[2]="Hematomas,Chutar,Andar de moto"

enemy_switch("MR.LAR",0) 
}
if dataPal=3
{
enemy_switch("MR.ROB",0)

descT[0]="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"
descleftT[0]=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
descrightT[0]=string(_likesT)+":ROLLS,STEALING\n"+string(_dislikesT)+":RATS\n"+string(_hobbyT)+":HIKING"
descabsT[0]="Bruising,Kicking,Biking"

descT[1]="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"
descleftT[1]=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
descrightT[1]=string(_likesT)+":ROLLITOS,ROBANDO\n"+string(_dislikesT)+":RATAS\n"+string(_hobbyT)+":SENDERISMO"
descabsT[1]="Moretones,Patadas,Motociclismo"

descT[2]="O auge da Brigada Burg! Fique atento, ele pode atacar com uma voadora perigosa!"
descleftT[2]=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
descrightT[2]=string(_likesT)+":ROLINHOS,ROUBANDO\n"+string(_dislikesT)+":RATOS\n"+string(_hobbyT)+":CAMINHADA"
descabsT[2]="Hematomas,Chutar,Andar de moto"

desc=descT[global.Language]

}
charNO=1

break;
  case 2:
    hp=0.2 enemyID=5
	

descT[0]="ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP."
descleftT[0]=string(_ageT)+":41\nNAT.:FRANCE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":MILK,STEALING\n"+string(_dislikesT)+":GOATS\n"+string(_hobbyT)+":BASEBALL"
descabsT[0]="Bruising,Kicking,Biking"

descT[1]="ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP."
descleftT[1]=string(_ageT)+":41\nNAT.:FRANCIA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":LECHE,ROBANDO\n"+string(_dislikesT)+":CABRAS\n"+string(_hobbyT)+":BÉISBOL"
descabsT[1]="Moretones,Patadas,Motociclismo"

descT[2]="OUTRO LADRÃO, OUTRO PALERMA. MAS ELE PODE APARECER ARMADO PARA TE ATACAR! PALERMA MESMO ASSIM."
descleftT[2]=string(_ageT)+":41\nNAT.:FRANÇA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":LEITE,ROUBANDO\n"+string(_dislikesT)+":CABRAS\n"+string(_hobbyT)+":BEISEBOL"
descabsT[2]="Hematomas,Chutar,Andar de moto"

	
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
descT[global.Language])



charNO=2

if dataPal=2
{
enemy_switch("MR.LAD",0)

descT[0]="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"
descleftT[0]=string(_ageT)+":42\nNAT.:FRANCE\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
descrightT[0]=string(_likesT)+":WINE,STEALING\n"+string(_dislikesT)+":SODA\n"+string(_hobbyT)+":WINE TASTING"
descabsT[0]="Bruising,Kicking,Biking"

descT[1]="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"
descleftT[1]=string(_ageT)+":42\nNAT.:FRANCIA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
descrightT[1]=string(_likesT)+":VINO,ROBANDO\n"+string(_dislikesT)+":REFRESCO\n"+string(_hobbyT)+":CATA DE VINOS"
descabsT[1]="Moretones,Patadas,Motociclismo"

descT[2]="Parente de alto escalão do Rob. Até que são fortinhos e sabem dar pontapés!"
descleftT[2]=string(_ageT)+":42\nNAT.:FRANÇA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"
descrightT[2]=string(_likesT)+":VINHO,ROUBANDO\n"+string(_dislikesT)+":REFRIGERANTE\n"+string(_hobbyT)+":DEGUSTAÇÃO DE VINHOS"
descabsT[2]="Hematomas,Chutar,Andar de moto"

}
if dataPal=3
{
enemy_switch("MR.RON",0)

descT[0]="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"
descleftT[0]=string(_ageT)+":43\nNAT.:FRANCE\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
descrightT[0]=string(_likesT)+":GAMBLING,STEALING\n"+string(_dislikesT)+":LOW PAY\n"+string(_hobbyT)+":ROULETTES"
descabsT[0]="Bruising,Kicking,Biking"

descT[1]="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"
descleftT[1]=string(_ageT)+":43\nNAT.:FRANCIA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
descrightT[1]=string(_likesT)+":JUEGO DE AZAR,ROBANDO\n"+string(_dislikesT)+":BAJO SALARIO\n"+string(_hobbyT)+":RULETAS"
descabsT[1]="Moretones,Patadas,Motociclismo"

descT[2]="O mais cascudo de todos! Tão mal-humorados como os capangas de casta baixa."
descleftT[2]=string(_ageT)+":43\nNAT.:FRANÇA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"
descrightT[2]=string(_likesT)+":JOGOS DE AZAR,ROUBANDO\n"+string(_dislikesT)+":REMUNERAÇÃO BAIXA\n"+string(_hobbyT)+":ROLETES"
descabsT[2]="Hematomas,Chutar,Andar de moto"

desc=descT[global.Language]


}


break;
 case 3:
   hp=0.4 enemyID=10
   

descT[0]="This jerk slides around to try and trip you up! Some even have tommy guns!"
descleftT[0]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":CHEESE,BIRDS\n"+string(_dislikesT)+":RATS\n"+string(_hobbyT)+":PHOTOGRAPHY"
descabsT[0]="Sneaking,Sliding,Scent"

descT[1]="This jerk slides around to try and trip you up! Some even have tommy guns!"
descleftT[1]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":QUESO,AVES\n"+string(_dislikesT)+":TRAIDORES\n"+string(_hobbyT)+":FOTOGRAFÍA"
descabsT[1]="Acechando,Deslizándose,\nAroma"

descT[2]="Esse otário te dá um carrinho para te derrubar! Alguns até têm metralhadoras!"
descleftT[2]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":QUEIJO, PÁSSAROS\n"+string(_dislikesT)+":TRAIDORES\n"+string(_hobbyT)+":FOTOGRAFIA"
descabsT[2]="Furtividade,Deslizamento,\nOlfato"
   
   charinfo_set(7,spr_sneak_stand,5,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
descT[global.Language])

charNO=3


if dataPal=2
{
enemy_switch("MR.SLIP",0)

descT[0]="These crazy turncoats run around with bombs in their pockets!…How do they hide them?"
descleftT[0]=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":SPICES,MICE\n"+string(_dislikesT)+":COLD FOOD\n"+string(_hobbyT)+":EXPLOSIVES"
descabsT[0]="Sneaking,Sliding,\nBombing"

descT[1]="These crazy turncoats run around with bombs in their pockets!…How do they hide them?"
descleftT[1]=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":ESPECIAS, RATONES\n"+string(_dislikesT)+":COMIDA FRÍA\n"+string(_hobbyT)+":EXPLOSIVOS"
descabsT[1]="Acechando,Deslizándose,\nBombardeo"

descT[2]="Esses vira-casacas sem noção correm por aí com bombas nos bolsos!… Como eles as escondem?"
descleftT[2]=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":ESPECIAS,CAMUNDONGOS\n"+string(_dislikesT)+":COMIDA FRIA\n"+string(_hobbyT)+":EXPLOSIVOS"
descabsT[2]="Furtividade,Deslizamento,\nBombardeio" 

desc=descT[global.Language]

}
if dataPal=3
{
enemy_switch("MR.SLINK",0)


descT[0]="Lanky though they may be, they’ll grab and throw you around if you’re not careful!"
descleftT[0]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":SNAKES,EGGS\n"+string(_dislikesT)+":JOCKS\n"+string(_hobbyT)+":DISK THROWING"
descabsT[0]="Sneaking,Sliding,\nThrowing"

descT[1]="Lanky though they may be, they’ll grab and throw you around if you’re not careful!"
descleftT[1]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":SERPIENTES,HUEVOS\n"+string(_dislikesT)+":DEPORTISTAS\n"+string(_hobbyT)+":LANZAMIENTO DE DISCO"
descabsT[1]="Acechando,Deslizándose,\nLANZANDO"

descT[2]="Mesmo magros, eles podem te agarrar e te derrubar se você não tomar cuidado!"
descleftT[2]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":COBRAS,OVOS\n"+string(_dislikesT)+":ATLETAS\n"+string(_hobbyT)+":LANÇAMENTO DE DISCO"
descabsT[2]="Furtividade,Deslizamento\nJOGANDO"

desc=descT[global.Language]

}
if dataPal=4
{
enemy_switch("MR.SIDLE",0)

descT[0]="With a nasty spring in their step, they’ll leap into the air to kick you in the face!"
descleftT[0]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":MONKEYS,ORANGES\n"+string(_dislikesT)+":LATENESS\n"+string(_hobbyT)+":BOWLING"
descabsT[0]="Sneaking,Sliding,\nKicking"

descT[1]="With a nasty spring in their step, they’ll leap into the air to kick you in the face!"
descleftT[1]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":MONOS,NARANJAS\n"+string(_dislikesT)+":TARDANZAS\n"+string(_hobbyT)+":BOLICHE"
descabsT[1]="Acechando,Deslizándose,\nPatadas"

descT[2]="Com um incomodo salto, eles irão pular no ar e aterrissar no seu rosto com um chute!"
descleftT[2]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":MACACOS,LARANJAS\n"+string(_dislikesT)+":ATRASOS\n"+string(_hobbyT)+":BOLICHE"
descabsT[2]="Furtividade,Deslizamento,\nChutar"

desc=descT[global.Language]
}
if dataPal=5
{
enemy_switch("MR.PROWL",0)

descT[0]="Sliding, bombing, grappling and kicking are all things this creep’s got up his sleeves!"
descleftT[0]=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":BANANAS,CRYSTALS\n"+string(_dislikesT)+":LOW RANKS\n"+string(_hobbyT)+":CHESS"
descabsT[0]="Sneaking,Sliding,\nSpy"

descT[1]="Sliding, bombing, grappling and kicking are all things this creep’s got up his sleeves!"
descleftT[1]=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":PLÁTANOS,CRISTALES\n"+string(_dislikesT)+":BAJOS RANGOS\n"+string(_hobbyT)+":AJEDREZ"
descabsT[1]="Acechando,Deslizándose,\nESPÍA"

descT[2]="Deslizar, bombardear, agarrar e chutar são as cartas que esse cretino tem na manga!"
descleftT[2]=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":BANANAS,CRISTAIS\n"+string(_dislikesT)+":BAIXAS PATENTES\n"+string(_hobbyT)+":XADREZ"
descabsT[2]="Furtividade,Deslizamento,\nESPIÃO"

desc=descT[global.Language]


}
break;
  case 4:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MS.CHILL",
   "")
     hp=0.2 enemyID=15
if dataPal=1
{


name="MS.CHILL" current_pal=2

descT[0]="Usually coming in pairs, they’ll pester you with their deadly legs and can block your attacks!"
descleftT[0]=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":SPICE,APPLES\n"+string(_dislikesT)+":CORN\n"+string(_hobbyT)+":GYMNASTICS"
descabsT[0]="Acrobatics,Kicking"

descT[1]="Usually coming in pairs, they’ll pester you with their deadly legs and can block your attacks!"
descleftT[1]=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":SPICE,MANZANAS\n"+string(_dislikesT)+":MAÍZ\n"+string(_hobbyT)+":GIMNASIAS"
descabsT[1]="Acrobacias,Patadas"

descT[2]="Geralmente vêm em pares, elas irão te pertubar com suas pernas mortais e podem bloquear seus ataques!"
descleftT[2]=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":SPICE,MAÇÃS\n"+string(_dislikesT)+":MILHO\n"+string(_hobbyT)+":GINÁSTICAS"
descabsT[2]="Acrobacias,Chutes"

desc=descT[global.Language]

}
if dataPal=2
{enemyID=16
	
name="MS.SPICE" current_pal=4

descT[0]="This lady gets a leg up on her chill counterpart with a dastardly spinning kick!"
descleftT[0]=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":CHILL,APPLES\n"+string(_dislikesT)+":MAÍZ\n"+string(_hobbyT)+":GYMNASTICS"
descabsT[0]="Acrobatics,Kicking"

descT[1]="This lady gets a leg up on her chill counterpart with a dastardly spinning kick!"
descleftT[1]=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":CHILL,MANZANAS\n"+string(_dislikesT)+":MAÍZ\n"+string(_hobbyT)+":GIMNASIAS"
descabsT[1]="Acrobacias,Patadas"

descT[2]="Esta dama leva vantagem sobre sua calma contraparte com um chute giratório covarde!"
descleftT[2]=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":CHILL,MAÇÃS\n"+string(_dislikesT)+":MILHO\n"+string(_hobbyT)+":GINÁSTICAS"
descabsT[2]="Acrobacias,Chutes"

desc=descT[global.Language]

}
charNO=4
break;
  case 5:
   charinfo_set(9,spr_robot_stand,3,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
     hp=1
descleftT[global.Language]=string(_heightT)+":7'6"+" "+string(_weightT)+":1000LBS"		
 if dataPal=1
{current_pal=0
	robotArmRsprite=spr_robot_arm
	name="MR.BOLTS"
	
descT[0]="This fancy robot comes equipped with a shocking laser and strong, but detachable arms."
descrightT[0]=string(_likesT)+":SERVING,BREAKING\n"+string(_dislikesT)+":RUST\n"+string(_hobbyT)+":BARTENDING"
descabsT[0]="Electricity,Bruising,\nBrewing"

descT[1]="This fancy robot comes equipped with a shocking laser and strong, but detachable arms."
descrightT[1]=string(_likesT)+":SIRVIENDO,ROMPIENDO\n"+string(_dislikesT)+":ÓXIDO\n"+string(_hobbyT)+":BARTENDERÍA"
descabsT[1]="Electricidad,Moretones,\nCerveza"

descT[2]="Este robô sofisticado vem equipado com um laser chocante e fortes, mas destraváveis braços"
descrightT[2]=string(_likesT)+":SERVINDO,QUEBRANDO\n"+string(_dislikesT)+":FERRO\n"+string(_hobbyT)+":BARTENDER"
descabsT[2]="Eletricidade,hematomas,\nCERVEJA"

desc=descT[global.Language]

	 charNO=5 enemyID=17



}
if dataPal=2
{current_pal=2
	robotArmRsprite=spr_robot_flame
	name="MR.HEAT"
	
descT[0]="This temperamental bot has a flamethrower on one arm, don’t get burned to ashes!"
descrightT[0]=string(_likesT)+":SERVING,BURNING\n"+string(_dislikesT)+":WATER\n"+string(_hobbyT)+":CHEF"
descabsT[0]="Fire,Bruising,Cooking"

descT[1]="This temperamental bot has a flamethrower on one arm, don’t get burned to ashes!"
descrightT[1]=string(_likesT)+":SIRVIENDO,QUEMANDO\n"+string(_dislikesT)+":AGUA\n"+string(_hobbyT)+":CHEF"
descabsT[1]="Fuego,Moretones,Cocinar"

descT[2]="Este robô temperamental tem um lança-chamas em um dos braços, não seja queimado até os ossos!"
descrightT[2]=string(_likesT)+":SERVINDO,QUEIMANDO\n"+string(_dislikesT)+":ÁGUA\n"+string(_hobbyT)+":CHEF"
descabsT[2]="Fogo,Contusão,\nCozinhando"

desc=descT[global.Language]

enemyID=18

}
if dataPal=3
{current_pal=1
	name="MR.COLD"
	robotArmRsprite=spr_robot_freezer
	
descT[0]="A cold machine with an even colder ice gun that’ll send more than a chill down your spine! Brrrr…"
descrightT[0]=string(_likesT)+":SERVING,FREEZING\n"+string(_dislikesT)+":HEAT\n"+string(_hobbyT)+":PRESERVING"
descabsT[0]="Cold,Bruising,Freezing"

descT[1]="A cold machine with an even colder ice gun that’ll send more than a chill down your spine! Brrrr…"
descrightT[1]=string(_likesT)+":SERVICIO,CONGELACIÓN\n"+string(_dislikesT)+":CALOR\n"+string(_hobbyT)+":PRESERVANDO"
descabsT[1]="Frío,Moretones,Congelación"

descT[2]="Uma máquina fria com uma arma de gelo ainda mais fria que vai causar mais do que um arrepio na espinha! Brrrr..."
descrightT[2]=string(_likesT)+":SERVIÇO,CONGELAMENTO\n"+string(_dislikesT)+":CALOR\n"+string(_hobbyT)+":PRESERVANDO"
descabsT[2]="Frio, Contusões,Congelamento"

desc=descT[global.Language]

enemyID=19

}  
   
break;
  case 6:
  weapon_add("HAMMER") enemyID=20
  
descT[0]="This giggly ditz will swing any nearby weapon at you, but disarm her and she’ll crumple like paper!"
descleftT[0]=string(_ageT)+":21\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":SMASHING,SMOKING\n"+string(_dislikesT)+":MILK\n"+string(_hobbyT)+":BASEBALL"
descabsT[0]="Swinging,Dancing"

descT[1]="This giggly ditz will swing any nearby weapon at you, but disarm her and she’ll crumple like paper!"
descleftT[1]=string(_ageT)+":21\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":ROMPER,FUMAR\n"+string(_dislikesT)+":LECHE\n"+string(_hobbyT)+":BEISBOL"
descabsT[1]="Golpear,Bailar"

descT[2]="Essa abobada risonha vai balançar qualquer arma próxima em você, mas é uma moleca de vidro quando desarmada!"
descleftT[2]=string(_ageT)+":21\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":QUEBRA,FUMO\n"+string(_dislikesT)+":LEITE\n"+string(_hobbyT)+":BEISEBOL"
descabsT[2]="Batendo,Dançando"
  
  
   charinfo_set(10,spr_swing_stand,4,animsetup_swing,draw_swing,spr_swingpal,2,spr_enemyface,7,"MS.SWING",
   descT[global.Language])

 
if dataPal=2 {weapon_add("KNIFE") enemy_switch("MS.BRAN",0)

descT[0]="A devious woman who knows many tricks with her knives, namely piercing her foes from afar!"
descleftT[0]=string(_ageT)+":20\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":108LBS"
descrightT[0]=string(_likesT)+":CUTTING,PIGS\n"+string(_dislikesT)+":MEAT\n"+string(_hobbyT)+":WOOD CARVING"
descabsT[0]="Slicing,Knife Throwing"

descT[1]="A devious woman who knows many tricks with her knives, namely piercing her foes from afar!"
descleftT[1]=string(_ageT)+":20\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":108LBS"
descrightT[1]=string(_likesT)+":CORTANDO,CERDOS\n"+string(_dislikesT)+":CARNE\n"+string(_hobbyT)+":TALLADO DE MADERA"
descabsT[1]="Cortar,Lanzamiento de cuchillos"

descT[2]="Uma mulher astuta que conhece muitos truques com suas facas, principalmente perfurar seus inimigos à distância!"
descleftT[2]=string(_ageT)+":20\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":108LBS"
descrightT[2]=string(_likesT)+":CORTANDO,PORCOS\n"+string(_dislikesT)+":CARNE\n"+string(_hobbyT)+":ENTALHE EM MADEIRA"
descabsT[2]="Fatiar,Lançamento de Faca"


desc=descT[global.Language]

	
	}
	
if dataPal=3 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)
 
 descT[0]="DANGER! This lady throws dynamite around like it’s candy! Don’t get caught in the blast!"
descleftT[0]=string(_ageT)+":28\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":112LBS"
descrightT[0]=string(_likesT)+":EXPLOSIONS,VULTURES\n"+string(_dislikesT)+":QUIET\n"+string(_hobbyT)+":CHECKERS"
descabsT[0]="Throwing Explosives"

 descT[1]="DANGER! This lady throws dynamite around like it’s candy! Don’t get caught in the blast!"
descleftT[1]=string(_ageT)+":28\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":112LBS"
descrightT[1]=string(_likesT)+":EXPLOSIONES,BUITRES\n"+string(_dislikesT)+":SILENCIO\n"+string(_hobbyT)+":DAMAS"
descabsT[1]="Lanzar explosivos"

descT[2]="PERIGO! Essa dama joga dinamite como se fosse doce! Não seja pego pela explosão!"
descleftT[2]=string(_ageT)+":28\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":112LBS"
descrightT[2]=string(_likesT)+":EXPLOSÕES,URUBUSS\n"+string(_dislikesT)+":SILENCIOSO\n"+string(_hobbyT)+":DAMA"
descabsT[2]="Arremessando Explosivos"

desc=descT[global.Language]

}

if dataPal=4 {weapon_add("WHIP") enemy_switch("MS.DOMI",0)

descT[0]="This sadist will crack her whip at you, laughing with every lash you get."
descleftT[0]=string(_ageT)+":27\nNAT.:RUSSIA\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
descrightT[0]=string(_likesT)+":WHIPPING,SPICES\n"+string(_dislikesT)+"CATS:\n"+string(_hobbyT)+":TAMING"
descabsT[0]="Whips,Riding"

descT[1]="This sadist will crack her whip at you, laughing with every lash you get."
descleftT[1]=string(_ageT)+":27\nNAT.:RUSIA\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
descrightT[1]=string(_likesT)+":AZOTAR,ESPECIAS\n"+string(_dislikesT)+"GATOS:\n"+string(_hobbyT)+":DOMAR"
descabsT[1]="Látigos,Montar"

descT[2]="Essa sádica vai chicotear você, rindo a cada golpe que você receber."
descleftT[2]=string(_ageT)+":27\nNAT.:RÚSSIA\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
descrightT[2]=string(_likesT)+":CHICOTE,ESPECIARIAS\n"+string(_dislikesT)+"GATOS:\n"+string(_hobbyT)+":DOMAR"
descabsT[2]="Chicotes, Montaria"


desc=descT[global.Language]

	
	}
  
if dataPal=5 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",0) ///UNUSED
desc="A gun-toting loony who’ll make swiss cheese out of you if you’re not careful. RATATAT-TAT!"
 descleft=string(_ageT)+":23\nNAT.:FRANCE\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":115LBS"	
	
 descright=string(_likesT)+":SHOOTING,HOTDOGS\n"+string(_dislikesT)+":DUCKS\n"+string(_hobbyT)+":CLAY SHOOTING"
dataabilities="Shooting,Skiing"
	
	}




if image_index<1
weaponanim(weaponspr,weaponIndex,14,-65,180*image_xscale,weaponcolor)
else if image_index<2
weaponanim(weaponspr,weaponIndex,14+1,-65+2,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14+1,-65+1,180*image_xscale,weaponcolor)

if dataPal=2 or dataPal=4 or dataPal=5 weaponangle-=90*image_xscale

break;
  case 7:  enemyID=25 hp=0.8
  
descT[0]="Don’t mistake his size for weakness! One good shoulder charge or butt stomp will flatten you!"
descleftT[0]=string(_ageT)+":41\nNAT.:RUSSIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":500LBS"
descrightT[0]=string(_likesT)+":BURGERS,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":BOWLING"
descabsT[0]="Crushing,Ramming"

descT[1]="Don’t mistake his size for weakness! One good shoulder charge or butt stomp will flatten you!"
descleftT[1]=string(_ageT)+":41\nNAT.:RUSIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":500LBS"
descrightT[1]=string(_likesT)+":HAMBURGUESAS,OSOS\n"+string(_dislikesT)+":Ratones\n"+string(_hobbyT)+":BOLICHE"
descabsT[1]="Triturando,Embistiendo"

descT[2]="Não confunda o tamanho dele com fraqueza! Uma ombrada ou uma bundada bem dada vão te derrubar!"
descleftT[2]=string(_ageT)+":41\nNAT.:RÚSSIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":500LBS"
descrightT[2]=string(_likesT)+":HAMBÚRGUERES,URSOS\n"+string(_dislikesT)+":Ratos\n"+string(_hobbyT)+":BOLICHE"
descabsT[2]="Esmagando,Investindo"  


desc=descT[global.Language]
  
 charinfo_set(11,spr_fatburglar_stand,3,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"MR.LARGE",
 desc
)
 
if dataPal=2
{
enemy_switch("MR.WIDE",0)
 
 
descT[0]="This big lug hasn’t worked out as much as his peers, but he can still hurt so watch out!"
descleftT[0]=string(_ageT)+":39\nNAT.:RUSSIA\n"+string(_heightT)+":6'1"+" "+string(_weightT)+":480LBS"
descrightT[0]=string(_likesT)+":HAM,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":FOOTBALL"
descabsT[0]="Crushing,Ramming"
 
 descT[1]="This big lug hasn’t worked out as much as his peers, but he can still hurt so watch out!"
descleftT[1]=string(_ageT)+":39\nNAT.:RUSIA\n"+string(_heightT)+":6'1"+" "+string(_weightT)+":480LBS"
descrightT[1]=string(_likesT)+":JAMÓN,OSOS\n"+string(_dislikesT)+":Ratones\n"+string(_hobbyT)+":FÚTBOL"
descabsT[1]="Triturando,Embistiendo"

descT[2]="Esse grandalhão não treinou tanto quanto seus colegas, mas ainda assim pode machucar, então fique atento!"
descleftT[2]=string(_ageT)+":39\nNAT.:RÚSSIA\n"+string(_heightT)+":6'1"+" "+string(_weightT)+":480LBS"
descrightT[2]=string(_likesT)+":FIAMBRE,URSOS\n"+string(_dislikesT)+":Ratos\n"+string(_hobbyT)+":FUTEBOL"
descabsT[2]="Esmagando,Investindo"    

desc=descT[global.Language]


}
if dataPal=3
{
enemy_switch("MR.HUGE",0)
 
descT[0]="Most of his “fat” is actually muscle waiting to flex! His charge is faster, too!"
descleftT[0]=string(_ageT)+":45\nNAT.:RUSSIA\n"+string(_heightT)+":6'3"+" "+string(_weightT)+":550LBS"
descrightT[0]=string(_likesT)+":BEEF,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":BARFIGHTS"
descabsT[0]="Crushing,Ramming"

descT[1]="Most of his “fat” is actually muscle waiting to flex! His charge is faster, too!"
descleftT[1]=string(_ageT)+":45\nNAT.:RUSIA\n"+string(_heightT)+":6'3"+" "+string(_weightT)+":550LBS"
descrightT[1]=string(_likesT)+":CARNE,OSOS\n"+string(_dislikesT)+":Ratones\n"+string(_hobbyT)+":Peleas de bar"
descabsT[1]="Triturando,Embistiendo"

descT[2]="A maioria da sua gordura são na verdade músculos esperando para ser flexionado! Sua investida também é mais rápida!"
descleftT[2]=string(_ageT)+":45\nNAT.:RÚSSIA\n"+string(_heightT)+":6'3"+" "+string(_weightT)+":550LBS"
descrightT[2]=string(_likesT)+":CARNE,URSOS\n"+string(_dislikesT)+":Ratos\n"+string(_hobbyT)+":Brigas de bar"
descabsT[2]="Esmagando,Investindo"


desc=descT[global.Language] 


}

break;
  case 8:  enemyID=28 hp=0.8
  
descT[0]= "Quick on her twig legs, her charged punches, uppercuts and combos will have you reeling!"
descleftT[0]=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
descrightT[0]=string(_likesT)+":KNOCKOUTS,BEANS\n"+string(_dislikesT)+":FLYING THINGS\n"+string(_hobbyT)+":FASHION"
descabsT[0]="Boxing,Charging"

descT[1]= "Quick on her twig legs, her charged punches, uppercuts and combos will have you reeling!"
descleftT[1]=string(_ageT)+":38\nNAT.:ALEMANIA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
descrightT[1]=string(_likesT)+":NOQUEOS,FRIJOLES\n"+string(_dislikesT)+":COSAS VOLADORAS\n"+string(_hobbyT)+":MODA"
descabsT[1]="Boxeo,Carga"

descT[2]= "Rápida com suas delicadas pernas, seus socos, ganchos e combos irão te nocautear!"
descleftT[2]=string(_ageT)+":38\nNAT.:ALEMANHA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
descrightT[2]=string(_likesT)+":NOCAS,FEIJÕES\n"+string(_dislikesT)+":COISAS VOADORAS\n"+string(_hobbyT)+":MODA"
descabsT[2]="Boxe,Cobrançag"

desc=descT[global.Language] 
  
 charinfo_set(13,spr_boxer_stand,2,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
desc)
 
if dataPal=2
{
enemy_switch("MS.JAB",0)
descleft=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'1"+" "+string(_weightT)+":300LBS"

descT[0]= "These pugilists are still in training, improving thanks to their boxing mentors."
descleftT[0]=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
descrightT[0]=string(_likesT)+":KNOCKOUTS,CORN\n"+string(_dislikesT)+":CROWS\n"+string(_hobbyT)+":BAR HOPPING"
descabsT[0]="Boxing,Charging"

descT[1]= "These pugilists are still in training, improving thanks to their boxing mentors."
descleftT[1]=string(_ageT)+":38\nNAT.:ALEMANIA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
descrightT[1]=string(_likesT)+":NOQUEOS,MAÍZ\n"+string(_dislikesT)+":CUERVOS\n"+string(_hobbyT)+":BALADA DE BAR EM BAR"
descabsT[1]="Boxeo,Carga"

descT[2]= "Essas pugilistas ainda estão em processo de treinamento, evoluindo graças a seus mentores de boxe."
descleftT[2]=string(_ageT)+":38\nNAT.:ALEMANHA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
descrightT[2]=string(_likesT)+":Nocaute,Milho\n"+string(_dislikesT)+":CORVOS\n"+string(_hobbyT)+":Ir de bares"
descabsT[2]="Boxe,Cobrançag"


desc=descT[global.Language] 

}
break;
  case 9: hp=0.8
  idlestyle=1  enemyID=30 
  
  
 descT[0]="Don’t underestimate these round crooks, they’ll grab, slam and roll you into a floor stain!"
descleftT[0]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
descrightT[0]=string(_likesT)+":DOMINATING,TEA\n"+string(_dislikesT)+":TOMATOES\n"+string(_hobbyT)+":PIE BAKING"
descabsT[0]="Wrestling,Rolling"
 
  descT[1]="Don’t underestimate these round crooks, they’ll grab, slam and roll you into a floor stain!"
descleftT[1]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
descrightT[1]=string(_likesT)+":DOMINANDO,TÉ\n"+string(_dislikesT)+":TOMATES\n"+string(_hobbyT)+":HORNEADO DE PASTEL"
descabsT[1]="Lucha,Rodando"

descT[2]= "Não subestime essas bandidas balofas, elas irão te agarrar, derrubar e te fazer de tapete!"
descleftT[2]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
descrightT[2]=string(_likesT)+":DOMINANDO,CHÁ\n"+string(_dislikesT)+":TOMATES\n"+string(_hobbyT)+":ASSAR TORTA"
descabsT[2]="Luta,Rolando"


desc=descT[global.Language] 
  
 charinfo_set(14,spr_wrestler_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,19,"MS.SLAMS",
desc)

if dataPal=2
{
enemy_switch("MS.CRUSH",0)


descT[0]= "These girls are surprisingly more athletic, and can pancake you with a flying belly flop!"
descleftT[0]=string(_ageT)+":33\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
descrightT[0]=string(_likesT)+":CRUSHING,CARAMEL\n"+string(_dislikesT)+":GRAPES\n"+string(_hobbyT)+":CUPCAKE BAKING"
descabsT[0]="Wrestling,Bellyflop"

descT[1]= "These girls are surprisingly more athletic, and can pancake you with a flying belly flop!"
descleftT[1]=string(_ageT)+":33\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
descrightT[1]=string(_likesT)+":APLASTANDO,CARAMELO\n"+string(_dislikesT)+":UVAS\n"+string(_hobbyT)+":ASSANDO CUPCAKES"
descabsT[1]="Lucha,caídas de barriga"

descT[2]= "Essas garotas são surpreendentemente atléticas e podem te sanduichar com uma barrigada voadora!"
descleftT[2]=string(_ageT)+":33\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 
descrightT[2]=string(_likesT)+":ESMAGA,CARAMELO\n"+string(_dislikesT)+":UVAS\n"+string(_hobbyT)+":CUPCAKE BAKING"
descabsT[2]="Luta,Mergulhos de barriga"

desc=descT[global.Language] 

}
break;
  case 10:  enemyID=32 hp=1
 idlestyle=1
 
 descT[0]="A former lumberjack with gains, deadly bearhugs and whirling punches to show it!"
descleftT[0]=string(_ageT)+":38\nNAT.:CANADA\n"+string(_heightT)+":8'3"+" "+string(_weightT)+":400LBS" 
descrightT[0]=string(_likesT)+":TREES,MOOSES\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HOUSE BUILDING"
descabsT[0]="Wrestling,Spinning"
 
 descT[1]="A former lumberjack with gains, deadly bearhugs and whirling punches to show it!"
descleftT[1]=string(_ageT)+":38\nNAT.:CANADÁ\n"+string(_heightT)+":8'3"+" "+string(_weightT)+":400LBS" 
descrightT[1]=string(_likesT)+":ÁRBOLES,ALCES\n"+string(_dislikesT)+":GROSERÍA\n"+string(_hobbyT)+":CONSTRUIR CASAS"
descabsT[1]="Lucha,Girando"

descT[2]= "Um ex-lenhador com doces, abraços mortais e socos giratórios para provar isso!"
descleftT[2]=string(_ageT)+":38\nNAT.:CANADÁ\n"+string(_heightT)+":8'3"+" "+string(_weightT)+":400LBS" 
descrightT[2]=string(_likesT)+":ÁRVORES,ALCES\n"+string(_dislikesT)+":GROSSEIRO\n"+string(_hobbyT)+":CONSTRUIR CASAS"
descabsT[2]="Luta,Ciclismo"

desc=descT[global.Language] 
 
 charinfo_set(15,spr_strongburg_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,37,"MR.CHIP",
desc)

if dataPal=2
{
enemy_switch("MR.DALE",0)

descT[0]="This massive man will jump and kick you back before coming in for a crushing hug!"
descleftT[0]=string(_ageT)+":37\nNAT.:CANADA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":380LBS" 
descrightT[0]=string(_likesT)+":TREES,MOOSES\n"+string(_dislikesT)+":RUSHING\n"+string(_hobbyT)+":WOOD CUTTING"
descabsT[0]="Wrestling,Kicking"

descT[1]="This massive man will jump and kick you back before coming in for a crushing hug!"
descleftT[1]=string(_ageT)+":37\nNAT.:CANADÁ\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":380LBS" 
descrightT[1]=string(_likesT)+":ÁRBOLES,ALCES\n"+string(_dislikesT)+":APURADO\n"+string(_hobbyT)+":CORTE DE MADERA"
descabsT[1]="Lucha,Patadas"

descT[2]= "Este brutamonte vai saltar e dar uma voadora antes de te dar um abraço esmagador!"
descleftT[2]=string(_ageT)+":37\nNAT.:CANADÁ\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":380LBS" 
descrightT[2]=string(_likesT)+":ÁRVORES,ALCES\n"+string(_dislikesT)+":APRESSSADO\n"+string(_hobbyT)+":Corte de madeira"
descabsT[2]="Luta,Chutar"


desc=descT[global.Language] 

}
break;
  case 11: hp=0.35
 idlestyle=1  enemyID=34 
 

descT[0]="A well trained martial artist who closes the distance with a thick hip check before unleashing her aura on you!"
descleftT[0]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":100LBS" 
descrightT[0]=string(_likesT)+":BROCCOLI,FISH\n"+string(_dislikesT)+":PANTS\n"+string(_hobbyT)+":FITNESS"
descabsT[0]="Martial Arts,Knitting"

descT[1]="A well trained martial artist who closes the distance with a thick hip check before unleashing her aura on you!"
descleftT[1]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":100LBS" 
descrightT[1]=string(_likesT)+":BRÓCOLI,PESCADO\n"+string(_dislikesT)+":PANTALONES\n"+string(_hobbyT)+":ENTRENAMIENTOS"
descabsT[1]="Artes Marciales,Tejer"

descT[2]= "Uma artista marcial bem treinada que encurta a distância com uma forte bundada antes de libertar a sua aura em você!"
descleftT[2]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":100LBS" 
descrightT[2]=string(_likesT)+":BRÓCOLIS,PEIXE\n"+string(_dislikesT)+":CALÇAS\n"+string(_hobbyT)+":TREINOS"
descabsT[2]="Artes Marciais,Tricô"

desc=descT[global.Language] 
 
 charinfo_set(16,spr_monk_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,2,spr_enemyface,44,"MS.KI",
desc)

if dataPal=2
{
enemy_switch("MS.CHI",0)

 descT[0]="This girl channels her ki into her punches, assaulting you with a flurry of fists!"
descleftT[0]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'6"+" "+string(_weightT)+":110LBS" 
descrightT[0]=string(_likesT)+":SOUP,BUTTERFLIES\n"+string(_dislikesT)+":SKIRTS\n"+string(_hobbyT)+":EXERCISE"
descabsT[0]="Martial Arts,Rapid Fists"

 descT[1]="This girl channels her ki into her punches, assaulting you with a flurry of fists!"
descleftT[1]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'6"+" "+string(_weightT)+":110LBS" 
descrightT[1]=string(_likesT)+":SOPA,MARIPOSAS\n"+string(_dislikesT)+":FALDAS\n"+string(_hobbyT)+":EJERCICIO"
descabsT[1]="Artes Marciales,Puños Rápidos"

descT[2]= "Essa garota canaliza seu ki em seus socos, atacando você com um sobrecarga de socos!"
descleftT[2]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'6"+" "+string(_weightT)+":110LBS" 
descrightT[2]=string(_likesT)+":SOPA,BORBOLETAS\n"+string(_dislikesT)+":SAIAS\n"+string(_hobbyT)+":EXERCÍCIO"
descabsT[2]="Artes Marciais,Punhos Rápidos"

desc=descT[global.Language] 

descleft=string(_ageT)+":29\nNAT.:CHINA\n"

}
if dataPal=3
{
enemy_switch("MS.MANA",0)

 descT[0]="A natural ki master, she has both Ki and Chi’s techniques down and then some!"
descleftT[0]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS" 
descrightT[0]=string(_likesT)+":NOVELS,TIGERS\n"+string(_dislikesT)+":DRESSES\n"+string(_hobbyT)+":MEDITATION"
descabsT[0]="Martial Arts,Rapid Fists"

 descT[1]="A natural ki master, she has both Ki and Chi’s techniques down and then some!"
descleftT[1]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS" 
descrightT[1]=string(_likesT)+":NOVELAS,TIGRES\n"+string(_dislikesT)+":VESTIDOS\n"+string(_hobbyT)+":MEDITACIÓN"
descabsT[1]="Artes Marciales,Puños Rápidos"

descT[2]= "Uma mestra natural do ki, ela domina as técnicas da Ki, da Chi e muito mais!"
descleftT[2]=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS" 
descrightT[2]=string(_likesT)+":ROMANCES,TIGRES\n"+string(_dislikesT)+":VESTIDOS\n"+string(_hobbyT)+":MEDITAÇÃO"
descabsT[2]="Artes Marciais,Punhos Rápidos"


desc=descT[global.Language] 

}

break;
  case 12: hp=0.3
 idlestyle=3 enemyID=37
 
 descT[0]="They take to the skies with style, mercilessly tackling their prey."
descleftT[0]=string(_ageT)+":21\nNAT.:GREECE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":100LBS" 
descrightT[0]=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":INTERRUPTIONS\n"+string(_hobbyT)+":EXPLORING"
descabsT[0]="Flying,Charging"

 descT[1]="They take to the skies with style, mercilessly tackling their prey."
descleftT[1]=string(_ageT)+":21\nNAT.:GRECIA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":100LBS" 
descrightT[1]=string(_likesT)+":PECES,PAISAJE\n"+string(_dislikesT)+":INTERRUPCIONES\n"+string(_hobbyT)+":EXPLORANDO"
descabsT[1]="Volando,Cargando"

descT[2]= "Eles voam pelos céus com estilo, atacando suas presas sem piedade."
descleftT[2]=string(_ageT)+":21\nNAT.:GRÉCIA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":100LBS" 
descrightT[2]=string(_likesT)+":PEIXE,CENÁRIO\n"+string(_dislikesT)+":INTERROMPÇÕES\n"+string(_hobbyT)+":EXPLORANDO"
descabsT[2]="Voador,Carregando"

desc=descT[global.Language] 
 
 charinfo_set(16,spr_harpye_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,61,"WINGY",
desc)

if dataPal=2
{
enemy_switch("ICARA",0)

descT[0]="Protect your ears! These songbirds have a special song to lull you to instant sleep!"
descleftT[0]=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":105LBS" 
descrightT[0]=string(_likesT)+":FISH,MUSIC\n"+string(_dislikesT)+":DISRUPTIONS\n"+string(_hobbyT)+":SONGWRITING"
descabsT[0]="Flying,Charging"

descT[1]="Protect your ears! These songbirds have a special song to lull you to instant sleep!"
descleftT[1]=string(_ageT)+":23\nNAT.:GRECIA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":105LBS" 
descrightT[1]=string(_likesT)+":PESCADO,MÚSICA\n"+string(_dislikesT)+":INTERRUPCIONES\n"+string(_hobbyT)+":ESCRIBIENDO CANCIONES"
descabsT[1]="Volando,Cargando"

descT[2]= "Proteja seus ouvidos! Essas aves cantoras têm uma canção especial para prender você em um sono instantâneo!"
descleftT[2]=string(_ageT)+":23\nNAT.:GRÉCIA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":105LBS" 
descrightT[2]=string(_likesT)+":PEIXE,MÚSICA\n"+string(_dislikesT)+":INTERRUPÇÕES\n"+string(_hobbyT)+":ESCREVENDO MÚSICAS"
descabsT[2]="Voador,Carregando"

desc=descT[global.Language] 

}
break;

  case 13: ////Cowboy
 hp=0.3 enemyID=130 idlestyle=1
 
 
descT[0]="A western gunman who's more of a vigilante than an outlaw. Watch out for the big iron on his hip!"
descleftT[0]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":105LBS" 
descrightT[0]=string(_likesT)+":HORSES,BACON\n"+string(_dislikesT)+":BANDITS\n"+string(_hobbyT)+":CAN SHOOTING"
descabsT[0]="Shooting,Horse Riding"

descT[1]="A western gunman who's more of a vigilante than an outlaw. Watch out for the big iron on his hip!"
descleftT[1]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":105LBS" 
descrightT[1]=string(_likesT)+":CABALLOS,TOCINO\n"+string(_dislikesT)+":BANDIDOS\n"+string(_hobbyT)+":DISPARO DE LATA"
descabsT[1]="Tiro,Equitación"

descT[2]= "Um pistoleiro do oeste que é mais um justiceiro do que fora-da-lei. Cuidado com o ferro quente no cinto dele!"
descleftT[2]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":105LBS" 
descrightT[2]=string(_likesT)+":CAVALOS,TOCINHO\n"+string(_dislikesT)+":BANDIDOS\n"+string(_hobbyT)+":DISPARO DE LATA"
descabsT[2]="Tiro,Hipismo"

desc=descT[global.Language]
 
 charinfo_set(12,spr_cowboy_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,64,"BILL",
desc)

if dataPal=2
{
enemy_switch("BUCK",0)

descT[0]="This gunner's a bit more trigger happy than his colleague. Don't get filled with holes!"
descleftT[0]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":107LBS"  
descrightT[0]=string(_likesT)+":HORSES,STEAK\n"+string(_dislikesT)+":OUTLAWS\n"+string(_hobbyT)+":PIANO PLAYING"
descabsT[0]="Shooting,Horse Riding,Piano"

descT[1]="This gunner's a bit more trigger happy than his colleague. Don't get filled with holes!"
descleftT[1]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":107LBS"  
descrightT[1]=string(_likesT)+":CABALLOS,FILETE\n"+string(_dislikesT)+":FORAJIDOS\n"+string(_hobbyT)+":TOCANDO PIANO"
descabsT[1]="Tiro,Equitación,Piano"

descT[2]= "Este atirador é um pouco mais rápido no gatilho do que seu colega. Evite virar uma peneira!"
descleftT[2]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":107LBS"  
descrightT[2]=string(_likesT)+":CAVALOS,BIFE\n"+string(_dislikesT)+":FORSAS\n"+string(_hobbyT)+":TOCANDO PIANO"
descabsT[2]="Tiro,Hipismo,Piano"
  
desc=descT[global.Language]

}
if dataPal=3
enemy_switch("PESO",0) ///Unused

break;

  case 14:
  hp=0.25 enemyID=39
  
  
descT[0]= "A clumsy zombie who rushes his foes, but is prone to tripping and accidentally tackling them."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:BRITAIN\n"+string(_heightT)+":5'12"+" "+string(_weightT)+":85LBS"  
descrightT[0]=string(_likesT)+":PAINTINGS,DECOR\n"+string(_dislikesT)+":STIFFNESS\n"+string(_hobbyT)+":BALL DANCING"
descabsT[0]="Ramming,Tripping"

descT[1]= "A clumsy zombie who rushes his foes, but is prone to tripping and accidentally tackling them."
descleftT[1]=string(_ageT)+":MUERTO\nNAT.:G.BRETAÑA\n"+string(_heightT)+":5'12"+" "+string(_weightT)+":85LBS"  
descrightT[1]=string(_likesT)+":PINTURAS,DECORACIÓN\n"+string(_dislikesT)+":RIGIDEZ\n"+string(_hobbyT)+":BAILAR ELEGANTE"
descabsT[1]="Empujón,Tropiezo"

descT[2]= "Um zumbi desajeitado que corre atrás de seus inimigos, mas tende a tropeçar e atacar acidentalmente."
descleftT[2]=string(_ageT)+":MORTO\nNAT.:G.BRETANHA\n"+string(_heightT)+":5'12"+" "+string(_weightT)+":85LBS"  
descrightT[2]=string(_likesT)+":PINTURAS,DECORAÇÃO\n"+string(_dislikesT)+":RIGIDEZ\n"+string(_hobbyT)+":DANÇAR ELEGANTE"
descabsT[2]="Atropelamento,Derrubada"    

desc=descT[global.Language]
  
 charinfo_set(17,spr_zombiem_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
desc)

if dataPal=2
{
enemy_switch("ZOMBOBBY",0)

descT[0]= "This cadaver’s got more sure footing, and will grab you for a nasty bite!"
descleftT[0]=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":5'13"+" "+string(_weightT)+":87LBS" 
descrightT[0]=string(_likesT)+":PAINTINGS,WINE\n"+string(_dislikesT)+":BAD BREATH\n"+string(_hobbyT)+":VIOLIN PLAYING"
descabsT[0]="Ramming,Biting"

descT[1]= "This cadaver’s got more sure footing, and will grab you for a nasty bite!"
descleftT[1]=string(_ageT)+":MUERTO\nNAT.:FRANCIA\n"+string(_heightT)+":5'13"+" "+string(_weightT)+":87LBS" 
descrightT[1]=string(_likesT)+":CUADROS,VINO\n"+string(_dislikesT)+":MAL ALIENTO\n"+string(_hobbyT)+":TOCAR EL VIOLÍN"
descabsT[1]="Embistiendo,mordiendo"

descT[2]= "Este cadáver tem passos firmes e vai agarrar você para dar uma mordida nada gostosa!"
descleftT[2]=string(_ageT)+":MORTO\nNAT.:FRANÇA\n"+string(_heightT)+":5'13"+" "+string(_weightT)+":87LBS" 
descrightT[2]=string(_likesT)+":PINTURAS,VINHO\n"+string(_dislikesT)+":MAU HÁLITO\n"+string(_hobbyT)+":TOCANDO VIOLINO"
descabsT[2]="Investida,Mordida"  

desc=descT[global.Language]

}
if dataPal=3
{
enemy_switch("MORTI",0)


descT[0]= "This bog shambler is a lot more bitey compared to his cousins. Surprisingly cleaner, though."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":83LBS" 
descrightT[0]=string(_likesT)+":NATURE,MUSHROOMS\n"+string(_dislikesT)+":ROT\n"+string(_hobbyT)+":BANJO PLAYING"
descabsT[0]="Ramming,Biting"

descT[1]= "This bog shambler is a lot more bitey compared to his cousins. Surprisingly cleaner, though."
descleftT[1]=string(_ageT)+":DEAD\nNAT.:CAJÚN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":83LBS" 
descrightT[1]=string(_likesT)+":NATURALEZA,HONGOS\n"+string(_dislikesT)+":PUDRIDAS\n"+string(_hobbyT)+":TOCANDO BANJO"
descabsT[1]="Embistiendo,mordiendo"

descT[2]= "Esse monstro do pântano é muito mais agressivo que seus primos. Surpreendentemente mais limpo, quem diria."
descleftT[2]=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":83LBS" 
descrightT[2]=string(_likesT)+":NATUREZA,COGUMELOS\n"+string(_dislikesT)+":PODRIDÃO\n"+string(_hobbyT)+":TOCANDO BANJO"
descabsT[2]="Investida,Mordida"  
   

desc=descT[global.Language]

}

break;
  case 15:
    hp=0.25 enemyID=42
	
   descT[0]=  "She calls herself a beauty, despite a missing jaw. Those who are rude will be the subject of her acidic spits!"
descleftT[0]=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":83LBS" 
descrightT[0]=string(_likesT)+":MAKEUP,BRUSHES\n"+string(_dislikesT)+":JAWBREAKERS\n"+string(_hobbyT)+":HAIR GROOMING"
descabsT[0]="Acid Spit"

   descT[1]=  "She calls herself a beauty, despite a missing jaw. Those who are rude will be the subject of her acidic spits!"
descleftT[1]=string(_ageT)+":MUERTA\nNAT.:FRANCIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":83LBS" 
descrightT[1]=string(_likesT)+":MAQUILLAJE,PEINADOS\n"+string(_dislikesT)+":CHICLES DUROS\n"+string(_hobbyT)+":CUIDADO DEL CABELLO"
descabsT[1]="Escupitajo ácido"

descT[2]= "Ela se considera uma beldade, apesar da mandíbula faltando. Aqueles que forem rudes serão alvo de seus cuspes ácidos!"
descleftT[2]=string(_ageT)+":MORTA\nNAT.:FRANÇA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":83LBS" 
descrightT[2]=string(_likesT)+":MAQUIAGEM,PENTEADOS\n"+string(_dislikesT)+":QUEBRA-QUEIXOS\n"+string(_hobbyT)+":CUIDADOS COM O CABELO"
descabsT[2]="Baba Ácida"
	


desc=descT[global.Language]
	
 charinfo_set(12,spr_zombiew_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
desc)

if dataPal=2
{
enemy_switch("ZOMBELLE",0)

descT[0]= "This undead primadonna takes pride in her nails… Because they’re sharp as blades."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 
descrightT[0]=string(_likesT)+":PLAYS,ART\n"+string(_dislikesT)+":NAIL BREAKING\n"+string(_hobbyT)+":NAIL CARE"
descabsT[0]="Sharp Nails"

descT[1]= "This undead primadonna takes pride in her nails… Because they’re sharp as blades."
descleftT[1]=string(_ageT)+":MUERTA\nNAT.:G.BRETAÑA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 
descrightT[1]=string(_likesT)+":OBRAS,ARTE\n"+string(_dislikesT)+":UÑA ROTA\n"+string(_hobbyT)+":CUIDADO DE UÑAS"
descabsT[1]="Uñas afiladas"

descT[2]= "Essa primadonna zumbificada se orgulha de suas unhas... Por serem afiadas como lâminas."
descleftT[2]=string(_ageT)+":MORTA\nNAT.:G.BRETANHA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 
descrightT[2]=string(_likesT)+":OBRAS,ARTE\n"+string(_dislikesT)+":UNHA QUEBRANDO\n"+string(_hobbyT)+":CUIDADOS COM AS UNHAS"
descabsT[2]="Unhas Afiadas"


desc=descT[global.Language]

}
if dataPal=3
{
enemy_switch("RIGORA",0)

descT[0]= "Acid spit and sharp claws are the telltale sign for this jawless shambler! Is she just lonely?"
descleftT[0]=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 
descrightT[0]=string(_likesT)+":NATURE,LETTUCE\n"+string(_dislikesT)+":WORMS\n"+string(_hobbyT)+":HARVESTING"
descabsT[0]="Acid Spit, Sharp Nails"

descT[1]= "Acid spit and sharp claws are the telltale sign for this jawless shambler! Is she just lonely?"
descleftT[1]=string(_ageT)+":MUERTA\nNAT.:CAJÚN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 
descrightT[1]=string(_likesT)+":NATURALEZA,LECHUGA\n"+string(_dislikesT)+":GUSANOS\n"+string(_hobbyT)+":COSECHA"
descabsT[1]="Escupitajo ácido, Uñas afiladas"

descT[2]= "Cuspes ácidos e garras afiadas são as boas-vindas desta andarilha sem mandíbula! Será que ela está apenas solitária?"
descleftT[2]=string(_ageT)+":MORTA\nNAT.:CAJUN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 
descrightT[2]=string(_likesT)+":NATUREZA,ALFACE\n"+string(_dislikesT)+":MINHOCAS\n"+string(_hobbyT)+":COLHEITA"
descabsT[2]="Baba Ácida, Unhas Afiadas"

desc=descT[global.Language]


}

break;
  case 16:
  hp=0.25 enemyID=45  idlestyle=1
   if dataPal=1
{current_pal=0
	
	
descT[0]= "Skeletal former ballerinas with the kicks to prove it. They’re quite sassy, too!"
descleftT[0]=string(_ageT)+":DEAD\nNAT.:FRENCH\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":22LBS" 
descrightT[0]=string(_likesT)+":THEATER,ACTS\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":BALLET"
descabsT[0]="Ballerina,Kicking"

descT[1]= "Skeletal former ballerinas with the kicks to prove it. They’re quite sassy, too!"
descleftT[1]=string(_ageT)+":MUERTA\nNAT.:FRANCIA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":22LBS" 
descrightT[1]=string(_likesT)+":TEATRO,ACTOS\n"+string(_dislikesT)+":PERRTURBADORES\n"+string(_hobbyT)+":BALLET"
descabsT[1]="Bailarina,Pateando"

descT[2]= "Ex-bailarinas esqueléticas que se provam aos chutes. Elas também são bastante atrevidas!"
descleftT[2]=string(_ageT)+":MORTA\nNAT.:FRANÇA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":22LBS" 
descrightT[2]=string(_likesT)+":TEATRO,ATO\n"+string(_dislikesT)+":INTERROMPEDORES\n"+string(_hobbyT)+":BALÉ"
descabsT[2]="Bailarina,Chutando"


desc=descT[global.Language]
	
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,21,"SKELLA", 
desc)
 
 }
    if dataPal=2
{current_pal=1 enemyID=46 hp=0.3
	
descT[0]="Once jolly jugglers, now bony bombardiers who can chuck pieces of themselves at you!"
descleftT[0]=string(_ageT)+":DEAD\nNAT.:FRENCH\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":26LBS" 
descrightT[0]=string(_likesT)+":THEATER,JOKES\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":JUGGLING"
descabsT[0]="Juggling, Bone Tossing"

descT[1]="Once jolly jugglers, now bony bombardiers who can chuck pieces of themselves at you!"
descleftT[1]=string(_ageT)+":MUERTO\nNAT.:FRANCIA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":26LBS" 
descrightT[1]=string(_likesT)+":TEATRO,CHISTES\n"+string(_dislikesT)+":PERRTURBADORES\n"+string(_hobbyT)+":MALABARISMOS"
descabsT[1]="Malabares, Lanzamiento de Huesos"

descT[2]= "Outrora malabaristas alegres, agora são bombardeiros ossudos que podem jogar pedaços de si mesmos em você!"
descleftT[2]=string(_ageT)+":MORTO\nNAT.:FRANÇA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":26LBS" 
descrightT[2]=string(_likesT)+":TEATRO,PIADAS\n"+string(_dislikesT)+":INTERROMPEDORES\n"+string(_hobbyT)+":MALABARISMOS"
descabsT[2]="Malabarismo, Lançamento de Ossos"

desc=descT[global.Language]
	
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,1,spr_enemyface,21,"SKELIE", 
desc)
 
 } 
break;

  case 17: ////Knight
 hp=1.0 enemyID=133 idlestyle=1
 
 descT[0]=  "Once respected knights, but now chivalry is dead to these fellows! And by their sword, you may be too!"
descleftT[0]=string(_ageT)+":32\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
descrightT[0]=string(_likesT)+":TALES,LIONS\n"+string(_dislikesT)+":SCOUNDRELS\n"+string(_hobbyT)+":JOUSTING"
descabsT[0]="Sword Fighting"

 descT[1]=  "Once respected knights, but now chivalry is dead to these fellows! And by their sword, you may be too!"
descleftT[1]=string(_ageT)+":32\nNAT.:G.BRETAÑA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
descrightT[1]=string(_likesT)+":CUENTOS,LEONES\n"+string(_dislikesT)+":CANALLAS\n"+string(_hobbyT)+":JUSTA"
descabsT[1]="Duelo de espadas"
 
descT[2]= "Antes cavaleiros respeitados, agora a cavalheirismo tá morto pra esses caras! E pela espada deles, você também pode ser!"
descleftT[2]=string(_ageT)+":32\nNAT.:G.BRETANHA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
descrightT[2]=string(_likesT)+":CONTOS,LEÕES\n"+string(_dislikesT)+":CANALHAS\n"+string(_hobbyT)+":JUSTA"
descabsT[2]="Luta de espadas"


desc=descT[global.Language]
 
 charinfo_set(12,spr_knight_stand,2,animsetup_enemy,draw_swing,spr_robotpal,0,spr_enemyface,65,"GARETH",
desc)
 
if dataPal=2
{
enemy_switch("DANIEL",0)

 descT[0]=  "Skilled with blunt weaponry, they'll bonk you good! Apparently has bad history with arrows."
descleftT[0]=string(_ageT)+":33\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
descrightT[0]=string(_likesT)+":CUENTOS,ESTATUAS\n"+string(_dislikesT)+":POINTY THINGS\n"+string(_hobbyT)+":BOOK WRITING"
descabsT[0]="Club Battling"

 descT[0]=  "Skilled with blunt weaponry, they'll bonk you good! Apparently has bad history with arrows."
descleftT[0]=string(_ageT)+":33\nNAT.:G.BRETAÑA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
descrightT[0]=string(_likesT)+":CUENTOS,ESTATUAS\n"+string(_dislikesT)+":COSAS PUNTIGUDAS\n"+string(_hobbyT)+":ESCRITURA DE LIBROS"
descabsT[0]="Combate de garrote"

descT[2]= "Habilidosos com armas contundentes, vão te dar uma boa pancada! Aparentemente, têm um histórico ruim com flechas."
descleftT[2]=string(_ageT)+":33\nNAT.:G.BRETANHA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
descrightT[2]=string(_likesT)+":HISTÓRIAS,ESTÁTUAS\n"+string(_dislikesT)+":COISAS PONTIAGUDAS\n"+string(_hobbyT)+":ESCRITA DE LIVRO"
descabsT[2]="Combate com Garrote"

//
desc=descT[global.Language]


}
if dataPal=3
enemy_switch("ARTIE",0) ///Unused

weapon_add("SWORD")

if dataPal=2 weapon_add("CLUB")
//if dataPal=3 weapon_add("CLUB")
	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,21,-36,90,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,22,-37,90,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,23,-36,90,weaponcolor)

break;

  case 18: enemyID=47 hp=0.3
  weapon_add("AXE") 
 weaponX=14
weaponY=-69-4
  weaponanim(weaponspr,weaponIndex,lerp(weaponX,0,1),lerp(weaponY,0,1),lerp(weaponangle,90,1),weaponcolor)
  
descT[0]= "This cursed axe belongs to a ghostly executioner. Beware, as it still longs for heads to cut off!"
descleftT[0]="NAT.:BRITAIN\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":6LBS" 
descrightT[0]=string(_likesT)+":CUTTING\n"+string(_dislikesT)+":DULLING\n"+string(_hobbyT)+":HEDGE CUTTING"
descabsT[0]="Axe Possession"
 
descT[1]= "This cursed axe belongs to a ghostly executioner. Beware, as it still longs for heads to cut off!"
descleftT[1]="NAT.:G.BRETAÑA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":6LBS" 
descrightT[1]=string(_likesT)+":CORTANDO\n"+string(_dislikesT)+":EMBOTE\n"+string(_hobbyT)+":CORTAR SETOS"
descabsT[1]="Posesión de hacha"

descT[2]= "Este machado amaldiçoado pertence a um carrasco fantasmagórico. Cuidado, pois ele ainda deseja cortar cabeças!"
descleftT[2]="NAT.:G.BRETANHA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":6LBS" 
descrightT[2]=string(_likesT)+":CORTANDO\n"+string(_dislikesT)+":EMBARBAMENTO\n"+string(_hobbyT)+":CORTA-SEBOS"
descabsT[2]="Posse de Machado"


desc=descT[global.Language]
  
 charinfo_set(12,mask_none,1,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_miscface,0,"AXE",
desc)

//sword "An ancient blade possessed by a vengeful spirit of royal bloodline... Approach with caution!"
//scimitar "These enchanted swords follow their mistress’s will. Take out their source and they will crumble!"
//“SWORD”
//“Uma lâmina antiga possuída por um espírito vingativo de linhagem real... Aproxime-se com cautela!”

//”SCIMITAR”
//“Estas espadas encantadas seguem a vontade de sua dona. Destrua sua fonte e elas irão virar pó!”
break;

  case 19:
 
  ////Paintings
  hp=0.5 enemyID=48
  
 descT[0]= "This painting houses the spirit of a renowned auteur, forever angry about an unfinished story."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:ITALY\n" 
descrightT[0]=string(_likesT)+":HORROR,NOVELS\n"+string(_dislikesT)+":NEW MEDIA\n"+string(_hobbyT)+":FILM MAKING"
descabsT[0]="Possession,Story Making"
  
  descT[1]= "This painting houses the spirit of a renowned auteur, forever angry about an unfinished story."
descleftT[1]=string(_ageT)+":MUERTO\nNAT.:ITALIA\n" 
descrightT[1]=string(_likesT)+":TERROR,NOVELAS\n"+string(_dislikesT)+":NUEVOS MEDIOS\n"+string(_hobbyT)+":ESCRITURA"
descabsT[1]="Posesión, Creación de Historias"

descT[2]= "Esta pintura abriga o espírito de um renomado autor, eternamente irritado com uma história inacabada."
descleftT[2]=string(_ageT)+":MORTO\nNAT.:ITÁLIAn" 
descrightT[2]=string(_likesT)+":HORROR,ROMANCES\n"+string(_dislikesT)+":NOVOS MEIOS\n"+string(_hobbyT)+":ESCRITA"
descabsT[2]="Posse, Criação de Histórias"


desc=descT[global.Language]
  
  paintingSpr=spr_painting1 frameSpr=spr_painting_base
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ALBUS",
desc)


    if dataPal=2
	{paintingSpr=spr_painting2 enemyID=49
		
 descT[0]= "A high class socialite haunts this painting, hoping to make spirits of the living join her."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:BRITAIN\n" 
descrightT[0]=string(_likesT)+":FANCINESS,BALLS\n"+string(_dislikesT)+":LOUD COLORS\n"+string(_hobbyT)+":COSTUME MAKING"
descabsT[0]="Possession,Dress Making"
	
 descT[1]= "A high class socialite haunts this painting, hoping to make spirits of the living join her."
descleftT[1]=string(_ageT)+":MUERTA\nNAT.:G.BRETAÑA\n" 
descrightT[1]=string(_likesT)+":ELEGANCIA,BAILES\n"+string(_dislikesT)+":COLORES LLAMATIVOS\n"+string(_hobbyT)+":CONFECCIÓN DE VESTUARIOS"
descabsT[1]="Posesión, Confección de Ropa"

descT[2]= "Uma socialite de alta classe assombra esta pintura, na esperança de fazer com que os espíritos dos vivos se juntem a ela."
descleftT[2]=string(_ageT)+":MORTA\nNAT.:G.BRETANHA\n" 
descrightT[2]=string(_likesT)+":ELEGÂNCIA,DANÇAS\n"+string(_dislikesT)+":CORES VIBRANTES\n"+string(_hobbyT)+":Confecção de Fantasias"
descabsT[2]="Posse, Confecção de Roupas"


desc=descT[global.Language]
		
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANNIE",
desc)	

}
	    if dataPal=3
		{paintingSpr=spr_painting3 enemyID=50
			
 descT[0]= "The ghost of a renaissance man commands this portrait, unable to let go of a past war."
descleftT[0]=string(_ageT)+":DEAD\nNAT.:GERMANY\n" 
descrightT[0]=string(_likesT)+":WARS,EXPLOSIONS\n"+string(_dislikesT)+":WAR REMINDER\n"+string(_hobbyT)+":WEAPON COLLECTING"
descabsT[0]="Possession,Marksman"		

 descT[1]= "The ghost of a renaissance man commands this portrait, unable to let go of a past war."
descleftT[1]=string(_ageT)+":MUERTO\nNAT.:ALEMANIA\n" 
descrightT[1]=string(_likesT)+":GUERRAS,EXPLOSIONES\n"+string(_dislikesT)+":RECORDATORIO DE GUERRA\n"+string(_hobbyT)+":COLECCIÓN DE ARMAS"
descabsT[1]="Posesión,Tirador"	

descT[2]= "O fantasma de um homem renascentista domina este retrato, incapaz de esquecer uma guerra passada."
descleftT[2]=string(_ageT)+":MORTO\nNAT.:ALEMANHA\n" 
descrightT[2]=string(_likesT)+":GUERRAS,EXPLOSÕESS\n"+string(_dislikesT)+":LEMBRETE DE GUERRA\n"+string(_hobbyT)+":COLECIONAR ARMAS"
descabsT[2]="Posse,Atirador"	


desc=descT[global.Language]
			
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"FREDERICK",
desc)

}

///Hieroglyphs
if dataPal>=4 
{
descleft="NAT.:EGYPT" 

descright=""
dataabilities=""

descleftT[0]="NAT.:EGYPT" 
descleftT[1]="NAT.:EGIPTO"
descleftT[2]="NAT.:EGITO" 

descrightT[global.Language]=""
descabsT[global.Language]=""	

}
		if dataPal=4
		{
descT[0]= "A living hieroglyph of an eye of Horus. It's gaze is harsh, judgemental and utterly soul-piercing."	
descT[1]= "A living hieroglyph of an eye of Horus. It's gaze is harsh, judgemental and utterly soul-piercing."	
descT[2]= "Um hieróglifo vivo do olho de Hórus. Seu olhar é severo, julgador e penetra até a alma."
desc=descT[global.Language]
			
paintingSpr=spr_heye enemyID=125 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"HORUS",
desc)
}
	    if dataPal=5
		{paintingSpr=spr_heys enemyID=126 frameSpr=spr_hieroglyph_base 
descT[0]= "A living hieroglyph of a scarab. A single one of them carries the fury of an entire swarm."
descT[1]= "A living hieroglyph of a scarab. A single one of them carries the fury of an entire swarm."
descT[2]= "Um hieróglifo vivo de um escaravelho. Um único deles carrega a fúria de um enxame inteiro."
desc=descT[global.Language]
			
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"SCARAB",
desc)}
	    if dataPal=6 
		{paintingSpr=spr_heyankh enemyID=127 frameSpr=spr_hieroglyph_base
			
 descT[0]="A living hieroglyph of an ankh. Normally a symbol of life, but this one will try to bring you death."
  descT[1]="A living hieroglyph of an ankh. Normally a symbol of life, but this one will try to bring you death."
descT[2]= "Um hieróglifo vivo de um ankh. Normalmente um símbolo de vida, mas este tentará trazer a morte."
desc=descT[global.Language]
			
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANKH",
desc)}
	    if dataPal=7
		{paintingSpr=spr_heya enemyID=128 frameSpr=spr_hieroglyph_base
			
 descT[0]="A living hieroglyph of Anubis. Thinks it's the real deal and angrily strikes those who deny it."
  descT[1]="A living hieroglyph of Anubis. Thinks it's the real deal and angrily strikes those who deny it."
descT[2]= "Um hieróglifo vivo de Anubis. Acha que é o verdadeiro e ataca com raiva aqueles que o negam."
desc=descT[global.Language]			
			
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANUBIS",
desc)}

break;


  case 20:
  hp=0.2 enemyID=51
  
 descT[0]="A cranky old cat whose claws haven’t dulled with time. Don’t become his new scratching post!"
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":3'10"+" "+string(_weightT)+":80LBS" 
descrightT[0]=string(_likesT)+":STRING,MICE\n"+string(_dislikesT)+":ROBBERS\n"+string(_hobbyT)+":HARP PLAYING"
descabsT[0]="Cat Powers,Scratching"
  
  descT[1]="A cranky old cat whose claws haven’t dulled with time. Don’t become his new scratching post!"
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:EGIPTO\n"+string(_heightT)+":3'10"+" "+string(_weightT)+":80LBS" 
descrightT[1]=string(_likesT)+":HILO,RATONES\n"+string(_dislikesT)+":LADRONES\n"+string(_hobbyT)+":TOCANDO EL ARPA"
descabsT[1]="Cat Powers,Rascándose"

descT[2]= "Um gato velho e rabugento cujas garras não se segaram com o tempo. Não se torne seu novo poste arranhador!"
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:EGITO\n"+string(_heightT)+":3'10"+" "+string(_weightT)+":80LBS" 
descrightT[2]=string(_likesT)+":FIO,Ratos\n"+string(_dislikesT)+":LADRÕES\n"+string(_hobbyT)+":TOCANDO HARP"
descabsT[2]="Cat Powers,Arranhando"

desc=descT[global.Language]		
  
 charinfo_set(12,spr_catman_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,12,"MAU",
desc)

if dataPal=2
{
enemy_switch("BASTET",0)

 descT[0]="Not as cranky as Mau, but more devious as she can turn you into her yarn with her wraps!"
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":3'9"+" "+string(_weightT)+":78LBS" 
descrightT[0]=string(_likesT)+":WRAPS,MICE\n"+string(_dislikesT)+":RAIDERS\n"+string(_hobbyT)+":YARN WRAPPING"
descabsT[0]="Cat Powers, Scratching, Wrapping"

 descT[1]="Not as cranky as Mau, but more devious as she can turn you into her yarn with her wraps!"
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:EGIPTO\n"+string(_heightT)+":3'9"+" "+string(_weightT)+":78LBS" 
descrightT[1]=string(_likesT)+":ENVOLTURAS,RATONES\n"+string(_dislikesT)+":SAQUEADORES\n"+string(_hobbyT)+":ENVOLTURA DE HILO"
descabsT[1]="Gatos,Arañando,Envolver"

descT[2]= "Não é tão rabugenta quanto Mau, mas é mais traiçoeira, pois ela pode te enrolar com seu novelo de linho!"
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:EGITO\n"+string(_heightT)+":3'9"+" "+string(_weightT)+":78LBS" 
descrightT[2]=string(_likesT)+":ENROLADOS,RATOS\n"+string(_dislikesT)+":SAQUEADORES\n"+string(_hobbyT)+":ENROLAMENTO DE FIO"
descabsT[2]="Poderes de Gato,Arranhando,Embrulhando"

desc=descT[global.Language]	


}

break;
  case 21:
  idlestyle= hp=0.5 enemyID=53 idlestyle=1
 
descT[0]="A snake lady with snake arms that can stretch long distances to take a bite out of you!"
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'2"+" "+string(_weightT)+":160LBS" 
descrightT[0]=string(_likesT)+":MUSIC,ARTS\n"+string(_dislikesT)+":ROBBERS\n"+string(_hobbyT)+":FLUTE PLAYING"
descabsT[0]="Snake Hands, Kicking"

descT[1]="A snake lady with snake arms that can stretch long distances to take a bite out of you!"
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:EGIPTO\n"+string(_heightT)+":7'2"+" "+string(_weightT)+":160LBS" 
descrightT[1]=string(_likesT)+":MÚSICA,ARTES\n"+string(_dislikesT)+":LADRONES\n"+string(_hobbyT)+":TOCANDO LA FLAUTA"
descabsT[1]="Manos de serpiente, pateando"

descT[2]= "Uma mulher cobra com braços de cobra que podem se esticar por longas distâncias para dar uma mordida em você!"
descleftT[0]=string(_ageT)+":ANTIGA\nNAT.:EGITO\n"+string(_heightT)+":7'2"+" "+string(_weightT)+":160LBS" 
descrightT[0]=string(_likesT)+":MÚSICA,ARTES\n"+string(_dislikesT)+":LADRÕES\n"+string(_hobbyT)+":TOCANDO FLUTE"
descabsT[0]="Mãos de Cobra, Chutando"


desc=descT[global.Language]	
  
 charinfo_set(12,spr_cobra_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,24,"ASPA",
desc)

if dataPal=2
{
enemy_switch("VIPERA",0)

descT[0]="This snake’s arms spew poisonous, paralyzing gas! Hold your breath!"
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'3"+" "+string(_weightT)+":170LBS" 
descrightT[0]=string(_likesT)+":MUSIC,SCENERY\n"+string(_dislikesT)+":RAIDERS\n"+string(_hobbyT)+":SMOKE TRICKS"
descabsT[0]="Snake Hands,Poison,Kicking"

descT[1]="This snake’s arms spew poisonous, paralyzing gas! Hold your breath!"
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:EGIPTO\n"+string(_heightT)+":7'3"+" "+string(_weightT)+":170LBS" 
descrightT[1]=string(_likesT)+":MÚSICA,PAISAJE\n"+string(_dislikesT)+":SAQUEADORES\n"+string(_hobbyT)+":TRUCOS DE HUMO"
descabsT[1]="Manos de serpiente,veneno,patadas"

descT[2]= "Os braços dessa víbora expelem um gás venenoso e paralisante! Prenda a respiração!"
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:EGITO\n"+string(_heightT)+":7'3"+" "+string(_weightT)+":170LBS" 
descrightT[2]=string(_likesT)+":MÚSICA,CENÁRIO\n"+string(_dislikesT)+":SAQUEADORES\n"+string(_hobbyT)+":TRUQUES DE FUMAÇA"
descabsT[2]="Mãos de Cobra,Veneno,Chutes"

desc=descT[global.Language]	


}
break;
  case 22: enemyID=55
  hp=0.3
  
descT[0]="Simultaneously disciplined ninjas and casino bunny girls. Watch for their card tricks!"
descleftT[0]=string(_ageT)+":27\nNAT.:JAPAN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":150LBS" 
descrightT[0]=string(_likesT)+":GOOD PAY,CARROTS\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":CARD PLAYING"
descabsT[0]="Ninjutsu,Gambling"

descT[1]="Simultaneously disciplined ninjas and casino bunny girls. Watch for their card tricks!"
descleftT[1]=string(_ageT)+":27\nNAT.:JAPÓN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":150LBS" 
descrightT[1]=string(_likesT)+":BUEN PAGO,ZANAHORIAS\n"+string(_dislikesT)+":TRAMPOSOS\n"+string(_hobbyT)+":JUGAR CARTAS"
descabsT[1]="Ninjutsu,Apuestas"

descT[2]= "Ninjas disciplinadas e coelhinhas de cassino ao mesmo tempo. Cuidado com seus truques de cartas!"
descleftT[2]=string(_ageT)+":27\nNAT.:JAPÃO\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":150LBS" 
descrightT[2]=string(_likesT)+":BOM PAGAMENTO,CENOURAS\n"+string(_dislikesT)+":TRAPACEIRAS\n"+string(_hobbyT)+":JOGAR CARTAS"
descabsT[2]="Ninjutsu,Jogos de Azar"
      
desc=descT[global.Language]
  
 charinfo_set(12,spr_ninjabun_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
desc)

if dataPal=2
enemy_switch("NOUSAGI",0)
{

descT[0]="These bunnies carry lucky fuzzy dice bolas, but you’ll feel unlucky when they catch you!"
descleftT[0]=string(_ageT)+":22\nNAT.:JAPAN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":140LBS" 
descrightT[0]=string(_likesT)+":GOOD TIPS,CARROTS\n"+string(_dislikesT)+":CHEAPSTAKES\n"+string(_hobbyT)+":DICE PLAYING"
descabsT[0]="Ninjutsu,Gambling"	

descT[1]="These bunnies carry lucky fuzzy dice bolas, but you’ll feel unlucky when they catch you!"
descleftT[1]=string(_ageT)+":22\nNAT.:JAPÓN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":140LBS" 
descrightT[1]=string(_likesT)+":PROPINAS,ZANAHORIAS\n"+string(_dislikesT)+":SORTEO\n"+string(_hobbyT)+":JUGANDO A LOS DADOS"
descabsT[1]="Ninjutsu,Apuestas"

descT[2]="Essas coelhinhas carregam dados felpudos da sorte, mas você vai se sentir azarado quando elas te pegarem."
descleftT[2]=string(_ageT)+":22\nNAT.:JAPÃO\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":140LBS" 
descrightT[2]=string(_likesT)+":GORJETAS,CENOURAS\n"+string(_dislikesT)+":SORTEIOS\n"+string(_hobbyT)+":JOGO DE DADOS"
descabsT[2]="Ninjutsu,Jogos de Azar"


desc=descT[global.Language]


}
if dataPal=3
{
enemy_switch("KONI",0)

 descT[0]="The bouncers of the casino, they’ll grab their targets for a devastating ninja suplex!"
descleftT[0]=string(_ageT)+":30\nNAT.:JAPAN\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS" 
descrightT[0]=string(_likesT)+":PROMOTIONS,CARROTS\n"+string(_dislikesT)+":BAD CONDUCTS\n"+string(_hobbyT)+":BARTENDING"
descabsT[0]="Ninjutsu,Gambling,\nBrewing"

 descT[1]="The bouncers of the casino, they’ll grab their targets for a devastating ninja suplex!"
descleftT[1]=string(_ageT)+":30\nNAT.:JAPÓN\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS" 
descrightT[1]=string(_likesT)+":PROMOCIONES,ZANAHORIAS\n"+string(_dislikesT)+":MALAS CONDUCTAS\n"+string(_hobbyT)+":BARTENDERÍA"
descabsT[1]="Ninjutsu,Juegos de azar,\nCerverza"

descT[2]= "As guardas do cassino, eles agarram seus alvos para um suplex ninja devastador!"
descleftT[2]=string(_ageT)+":30\nNAT.:JAPÃO\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS" 
descrightT[2]=string(_likesT)+":PROMOÇÕES,CENOURAS\n"+string(_dislikesT)+":MÁ CONDUTA\n"+string(_hobbyT)+":BARTENDER"
descabsT[2]="Ninjutsu,Jogos de azar,\nCervejaria"

desc=descT[global.Language]


}
break;
  case 23:
  hp=0.4 enemyID=58 idlestyle=1
  
descT[0]="Domino themed samurai with a swift guard and an even swifter charging slice!"
descleftT[0]=string(_ageT)+":32\nNAT.:JAPAN\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":140LBS"
descrightT[0]=string(_likesT)+":GOOD DRINKS,MEAT\n"+string(_dislikesT)+":BEETLES\n"+string(_hobbyT)+":DOMINOS"
descabsT[0]="Katana,Gambling" 
 
 descT[1]="Domino themed samurai with a swift guard and an even swifter charging slice!"
descleftT[1]=string(_ageT)+":32\nNAT.:JAPÓN\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":140LBS"
descrightT[1]=string(_likesT)+":BUENAS BEBIDAS,CARNE\n"+string(_dislikesT)+":ESCARABAJOS\n"+string(_hobbyT)+":DOMINOS"
descabsT[1]="Katana,Juegos de azar" 

descT[2]= "Samurai com temática de dominó com uma defesa veloz e ataque mais veloz ainda!"
descleftT[2]=string(_ageT)+":32\nNAT.:JAPÃO\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":140LBS"
descrightT[2]=string(_likesT)+":BONS DRINKS,CARNE\n"+string(_dislikesT)+":ESCORES\n"+string(_hobbyT)+":DOMINÓS"
descabsT[2]="Katana,Jogos de azar" 
   

desc=descT[global.Language]
  
 charinfo_set(12,spr_samurai_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,16,"SAKE",
desc)

if dataPal=2
{
enemy_switch("MUGI",0)

descT[0]="These samurai are still in training, but they can still knock you down like a row of dominos!"
descleftT[0]=string(_ageT)+":25\nNAT.:JAPAN\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
descrightT[0]=string(_likesT)+":NICE DRINKS,MEAT\n"+string(_dislikesT)+":BEES\n"+string(_hobbyT)+":PRACTICING"
descabsT[0]="Katana,Gambling" 

descT[1]="These samurai are still in training, but they can still knock you down like a row of dominos!"
descleftT[1]=string(_ageT)+":25\nNAT.:JAPÓN\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
descrightT[1]=string(_likesT)+":BUENAS BEBIDAS,CARNE\n"+string(_dislikesT)+":ABEJAS\n"+string(_hobbyT)+":PRACTICANDO"
descabsT[1]="Katana,Juegos de azar"
   
descT[2]= "Essas samurais ainda então em treinamento, mas elas ainda são capazes de te derrubar como uma fila de dominós!"
descleftT[2]=string(_ageT)+":25\nNAT.:JAPÃO\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"
descrightT[2]=string(_likesT)+":BONS DRINKS,CARNE\n"+string(_dislikesT)+":ABELHAS\n"+string(_hobbyT)+":PRATICANDO"
descabsT[2]="Katana,Jogos de azar" 

desc=descT[global.Language]

}
break;
  case 24: enemyID=60
  idlestyle=1
  hp=0.3

weapon_add_double("JUGGLE")
if dataPal=2 weapon_add_double("TWIRL")
  
  if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,33,-88,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-27,-68,86,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,34,-87,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-26,-69,86,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,35,-86,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-25,-70,86,weaponcolor)}
  
descT[0]="Silly marionette clowns who put on a good show for the crowd while kicking around foes."
descleftT[0]=string(_ageT)+":20\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[0]=string(_likesT)+":GOOFING,PIES\n"+string(_dislikesT)+":FROWNS\n"+string(_hobbyT)+":Entertaining"
descabsT[0]="Puppetry,Juggling"
  
 descT[1]="Silly marionette clowns who put on a good show for the crowd while kicking around foes."
descleftT[1]=string(_ageT)+":20\nNAT.:ITALIA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[1]=string(_likesT)+":TONTERÍAS,PASTELES\n"+string(_dislikesT)+":CEÑOS FRUNCIDOS\n"+string(_hobbyT)+":Entretenimiento"
descabsT[1]="Títeres,Malabarismo"

descT[2]= "Travessas marionetes palhaças que fazem bons shows para a plateia enquanto chutam os inimigos."
descleftT[2]=string(_ageT)+":20\nNAT.:ITÁLIA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[2]=string(_likesT)+":BRINCANDO,TORTAS\n"+string(_dislikesT)+":CARETES\n"+string(_hobbyT)+":Entretenimento"
descabsT[2]="Marionetes,Malabarismo"    

desc=descT[global.Language]
  
 charinfo_set(12,spr_clown_stand,3,animsetup_enemy,draw_swing_2,spr_bearpal,0,spr_enemyface,38,"ANETTE",
desc)

 if dataPal=2
 {
	enemy_switch("MARI",0)
	
 descT[0]="These mischievous marionettes love carousels so much they even spin like one at times!"
descleftT[0]=string(_ageT)+":22\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[0]=string(_likesT)+":CAROUSELS,Candy\n"+string(_dislikesT)+":GRUMPS\n"+string(_hobbyT)+":Parading"
descabsT[0]="Puppetry,Juggling"
	
 descT[1]="These mischievous marionettes love carousels so much they even spin like one at times!"
descleftT[1]=string(_ageT)+":22\nNAT.:ITALIA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[1]=string(_likesT)+":CARRUSELES,DULCES\n"+string(_dislikesT)+":GRUÑONES\n"+string(_hobbyT)+":Desfilando"
descabsT[1]="Títeres,Malabarismo"

descT[2]= "Essas marionetes travessas amam tanto carrosséis que às vezes até giram como um!"
descleftT[2]=string(_ageT)+":22\nNAT.:ITÁLIA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[2]=string(_likesT)+":CARROS-SELAS,DOCES\n"+string(_dislikesT)+":rabugice\n"+string(_hobbyT)+":Desfilando"
descabsT[2]="Marionetes,Malabarismo"  

desc=descT[global.Language]

 }
  if dataPal=3
 {
	enemy_switch("POPPI",0)
	

 descT[0]="Talented jugglers, they can also toss their sticks at you and still have more at the ready."
descleftT[0]=string(_ageT)+":25\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[0]=string(_likesT)+":JOKING,ELEPHANTS\n"+string(_dislikesT)+":SADNESS\n"+string(_hobbyT)+":Animal Taming"
descabsT[0]="Puppetry,Juggling"
	
 descT[1]="Talented jugglers, they can also toss their sticks at you and still have more at the ready."
descleftT[1]=string(_ageT)+":25\nNAT.:ITALIA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[1]=string(_likesT)+":COMEDIA,ELEFANTES\n"+string(_dislikesT)+":TRISTEZA\n"+string(_hobbyT)+":Domar animales"
descabsT[1]="Títeres,Malabarismo"

descT[2]= "Malabaristas talentosas, elas também podem jogar seus bastões em você e ainda ter mais à disposição."
descleftT[2]=string(_ageT)+":25\nNAT.:ITÁLIA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 
descrightT[2]=string(_likesT)+":COMEDIA,ELEFANTES\n"+string(_dislikesT)+":TRISTEZA\n"+string(_hobbyT)+":Domesticação de Animais"
descabsT[2]="Marionetes,Malabarismo"  

desc=descT[global.Language]
 }
 
 break;
   case 25: enemyID=63
  idlestyle=1 hp=0.2
  
var _tedage=23;



descabsT[0]="Plush Combat"
descabsT[1]="Combate de peluche"
descabsT[2]="Combate de Pelúcia"

descleftT[0]=string(_ageT)+":"+string(_tedage)+"\nNAT.:ITALY\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":40LBS"  
descleftT[1]=string(_ageT)+":"+string(_tedage)+"\nNAT.:ITALIA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":40LBS"  
descleftT[2]=string(_ageT)+":"+string(_tedage)+"\nNAT.:ITÁLIA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":40LBS"  

descT[0]="Adorable plush bears with a tendency to deck naughty people until they behave."
descrightT[0]=string(_likesT)+":CHEERS,GAMES\n"+string(_dislikesT)+":NAUGHTIES\n"+string(_hobbyT)+":FISHING"
  
descT[1]="Adorable plush bears with a tendency to deck naughty people until they behave."
descrightT[1]=string(_likesT)+":APLAUSOS,JUEGOS\n"+string(_dislikesT)+":TRAVIESOS\n"+string(_hobbyT)+":PESCA"

descT[2]= "Ursos de pelúcia adoráveis com tendência a perserguir pessoas malcriadas até que elas se comportem."
descrightT[2]=string(_likesT)+":APLAUSOS,JOGOS\n"+string(_dislikesT)+":ARTESANHOSOS\n"+string(_hobbyT)+":PESCA"


desc=descT[global.Language]
 charinfo_set(12,spr_bear_stand,6,animsetup_enemy,draw_enemy,spr_bearpal,0,spr_enemyface,49,"ROOSEVELT",
desc)






 if dataPal=2 {enemy_switch("TEDDIE",0) _tedage=21


desc=descT[global.Language]
 
 descT[0]="This bear is a bit shy around crowds, but he seeks friendship… And to punish baddies."
descrightT[0]=string(_likesT)+":FRIENDSHIP,HUGS\n"+string(_dislikesT)+":CROWDS\n"+string(_hobbyT)+":KNITTING"
 
  descT[1]="This bear is a bit shy around crowds, but he seeks friendship… And to punish baddies."
descrightT[1]=string(_likesT)+":AMISTAD,ABRAZOS\n"+string(_dislikesT)+":MULTITUD\n"+string(_hobbyT)+":TEJIDO"
  
descT[2]= "Esse urso é um pouco tímido perto de multidões, mas ele busca amizade... E punição aos maus."
descrightT[2]=string(_likesT)+":AMIZADE,ABRAÇOS\n"+string(_dislikesT)+":MULTIDÕES\n"+string(_hobbyT)+":TRICÔ"
  
 }
  if dataPal=3 {enemy_switch("YOGI",0) _tedage=25
  

desc=descT[global.Language]

descT[0]="Often seen giving out snacks to visitors. He also insists he’s smarter than most bears."
descrightT[0]=string(_likesT)+":SNACKS,PICNICS\n"+string(_dislikesT)+":CAVES\n"+string(_hobbyT)+":EXPLORING"
 
descT[1]="Often seen giving out snacks to visitors. He also insists he’s smarter than most bears."
descrightT[1]=string(_likesT)+":Bocadillos,picnics\n"+string(_dislikesT)+":CUEVAS\n"+string(_hobbyT)+":EXPLORANDO"

descT[2]= "Frequentemente visto dando lanches aos visitantes. Ele insiste que é mais inteligente do que a maioria dos ursos."
descrightT[2]=string(_likesT)+":Lanches,piqueniques\n"+string(_dislikesT)+":CAVERNAS\n"+string(_hobbyT)+":EXPLORANDOG"
 
 }
  if dataPal=4 {enemy_switch("FOZZI",0) _tedage=32
 
descT[0]="Having watched many comedians, he does his own stand-up. Jury’s out on the joke quality."
descrightT[0]=string(_likesT)+":COMEDIES,JOKES\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":WRITING" 
 
 descT[1]="Having watched many comedians, he does his own stand-up. Jury’s out on the joke quality."
descrightT[1]=string(_likesT)+":COMEDIAS,CHISTES\n"+string(_dislikesT)+":PERRTURBADORES\n"+string(_hobbyT)+":ESCRITURA" 
 
descT[2]= "Ao assistir muitos comediantes, ele fez seu próprio show de comédia. Piadas no entanto são questionáveis."
descrightT[2]=string(_likesT)+":COMÉDIAS,PIADAS\n"+string(_dislikesT)+":INTERROMPEDORES\n"+string(_hobbyT)+":ESCRITA" 
  

desc=descT[global.Language]

 
 }
  if dataPal=5 {enemy_switch("PADDY",0) _tedage=28
 


desc=descT[global.Language]
 
 
descT[0]="A kind and polite bear who’s popular with kids. Bad people are greeted with a hard stare."
descrightT[0]=string(_likesT)+":MARMALADE,BALLOONS\n"+string(_dislikesT)+":BAD PEOPLE\n"+string(_hobbyT)+":BOOK READING"
 
 descT[1]="A kind and polite bear who’s popular with kids. Bad people are greeted with a hard stare."
descrightT[1]=string(_likesT)+":MERMELADA,GLOBOS\n"+string(_dislikesT)+":MALAS PERSONAS\n"+string(_hobbyT)+":LECTURA DE LIBROS"
  
descT[2]= "Um urso gentil e educado, popular entre crianças. Delinquentes são recebidos com um olhar severo."
descrightT[2]=string(_likesT)+":GELEIA,BALÕES\n"+string(_dislikesT)+":PESSOAS MÁS\n"+string(_hobbyT)+":LEITURA DE LIVROS"
 
 
 }
  if dataPal=6 {enemy_switch("MONO",0) _tedage=19

descT[0]="Underneath its monotone exterior, it enjoys watching others’ misfortune and despair."
descrightT[0]=string(_likesT)+":PAIN,DESPAIR\n"+string(_dislikesT)+":DISOBEDIENCE\n"+string(_hobbyT)+":TEACHING"

descT[1]="Underneath its monotone exterior, it enjoys watching others’ misfortune and despair."
descrightT[1]=string(_likesT)+":DOLOR,DESESPERACIÓN\n"+string(_dislikesT)+":DESOBEDIENCIA\n"+string(_hobbyT)+":ENSEÑANZA"

descT[2]= "Por baixo de sua aparência monótona, ele gosta de ver o azar e o desespero dos outros."
descrightT[2]=string(_likesT)+":DOR,DESESPERO\n"+string(_dislikesT)+":DESOBEDIÊNCIA\n"+string(_hobbyT)+":ENSINAR"

desc=descT[global.Language]


 
 }
 
  descleft=string(_ageT)+":"+string(_tedage)+"\nNAT.:ITALY\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":40LBS"  
 
 break;
 case 26: hp=0.25 enemyID=69
 
descT[0]="With strong legs, elegant ballet moves and magical heart bullets, this fairy is not your friend."
descleftT[0]=string(_ageT)+":25\nNAT.:FRANCE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS" 
descrightT[0]=string(_likesT)+":MUSIC,ARTS\n"+string(_dislikesT)+":SALT\n"+string(_hobbyT)+":BALLET"
descabsT[0]="Fairy Magic,Ballerina"
 
descT[1]="With strong legs, elegant ballet moves and magical heart bullets, this fairy is not your friend."
descleftT[1]=string(_ageT)+":25\nNAT.:FRANCIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS"
descrightT[1]=string(_likesT)+":MÚSICA,ARTES\n"+string(_dislikesT)+":SAL\n"+string(_hobbyT)+":BALLET"
descabsT[1]="Magia de hadas,Bailarina"

descT[2]= "Com pernas fortes, movimentos elegantes de balé e balas mágicas de coração, esta fada não é sua amiga."
descleftT[2]=string(_ageT)+":25\nNAT.:FRANÇA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS"
descrightT[2]=string(_likesT)+":MÚSICA,ARTES\n"+string(_dislikesT)+":SAL\n"+string(_hobbyT)+":BALÉ"
descabsT[2]="Magia de Fada,Bailarina"
      

desc=descT[global.Language]
 
 charinfo_set(12,spr_fairy_stand,3,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,53,"BELLE",
desc)

  if dataPal=2 {enemy_switch("WENDY",0)
	  
descT[0]="Obsessed with flying, she’ll often spin before leaping through the air with a fierce kick."
descleftT[0]=string(_ageT)+":26\nNAT.:BRITAIN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS" 
descrightT[0]=string(_likesT)+":MUSIC,NOVELS\n"+string(_dislikesT)+":PIRATES\n"+string(_hobbyT)+":BOOK READING"
descabsT[0]="Fairy Magic,Ballerina"

descT[1]="Obsessed with flying, she’ll often spin before leaping through the air with a fierce kick."
descleftT[1]=string(_ageT)+":26\nNAT.:G.BRETAÑA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS"
descrightT[1]=string(_likesT)+":MÚSICA,NOVELAS\n"+string(_dislikesT)+":PIRATAS\n"+string(_hobbyT)+":LECTURA DE LIBROS"
descabsT[1]="Magia de Hadas,Bailarina"

//G.BRETAÑA
descT[2]= "Obcecada por voar, ela costuma girar antes de saltitar pelo ar com um chute feroz."
descleftT[2]=string(_ageT)+":26\nNAT.:G.BRETANHA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS"
descrightT[2]=string(_likesT)+":MÚSICA,ROMANCES\n"+string(_dislikesT)+":PIRATAS\n"+string(_hobbyT)+":LEITURA DE LIVROS"
descabsT[2]="Magia de Fadas,Bailarina"      

desc=descT[global.Language]  


	
	  }
  if dataPal=3 {enemy_switch("LUSH",0)
	  
descT[0]="An ice fairy whose heart bullets are just as cold to the touch as her personality."
descleftT[0]=string(_ageT)+":28\nNAT.:RUSSIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS" 
descrightT[0]=string(_likesT)+":MUSIC,SNOW\n"+string(_dislikesT)+":SPICE\n"+string(_hobbyT)+":ICE SCULPTING"
descabsT[0]="Fairy Magic,Ballerina,Cold"   

descT[1]="An ice fairy whose heart bullets are just as cold to the touch as her personality."
descleftT[1]=string(_ageT)+":28\nNAT.:RUSIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"
descrightT[1]=string(_likesT)+":MÚSICA,NIEVE\n"+string(_dislikesT)+":PICANTE\n"+string(_hobbyT)+":ESCULTURA EN HIELO"
descabsT[1]="Magia de Hadas,Bailarina,Frío"

descT[2]= "Uma fada da neve com balas de coração tão frias ao toque quanto sua personalidade."
descleftT[2]=string(_ageT)+":28\nNAT.:RÚSSIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"
descrightT[2]=string(_likesT)+":MÚSICA,NEVE\n"+string(_dislikesT)+":TEMPEROS\n"+string(_hobbyT)+":ESCULTURA EM GELO"
descabsT[2]="Magia de Fadas,Bailarina,Frio"
	      

desc=descT[global.Language]

	 
	  }

 break;
   case 27: enemyID=72
   idlestyle=1 hp=0.6
   

descT[0]="A dangerous carnivorous plant known for chomping people into pieces and swallowing them."
descleftT[0]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":CHEAP MEAT\n"+string(_hobbyT)+":GARDENING"
descabsT[0]="Carnivore Plant Powers"
 
descT[1]="A dangerous carnivorous plant known for chomping people into pieces and swallowing them."
descleftT[1]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":NATURALEZA, CARNE\n"+string(_dislikesT)+":CARNE BARATA\n"+string(_hobbyT)+":JARDINERÍA"
descabsT[1]="Poderes de planta carnívora"

descT[2]= "Uma planta carnívora perigosa, conhecida por mastigar pessoas em pedaços e devora-las."
descleftT[0]=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":NATUREZA,CARNE\n"+string(_dislikesT)+":CARNE BARATA\n"+string(_hobbyT)+":JARDINAGEM"
descabsT[0]="Poderes de Planta Carnívora"			  

desc=descT[global.Language] 
   
 charinfo_set(12,spr_plant_stand,3,animsetup_enemy,draw_enemy,spr_plantpal,0,spr_enemyface,29,"FLORA",
desc)


  if dataPal=2 {enemy_switch("PETI",0)

descT[0]="These crafty predators catch their prey by spraying a stunning toxin at them." 
descleftT[0]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":185LBS"
descrightT[0]=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":POLLUTION\n"+string(_hobbyT)+":DECORATING"
descabsT[0]="Carnivore Plant Powers,Toxin"	  

descT[1]="These crafty predators catch their prey by spraying a stunning toxin at them." 
descleftT[1]=string(_ageT)+":32\nNAT.USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":185LBS"
descrightT[1]=string(_likesT)+":NATURALEZA, CARNE\n"+string(_dislikesT)+":CONTAMINACIÓN\n"+string(_hobbyT)+":DECORAR"
descabsT[1]="Carnívoro, Poderes de Plantas, Tóxicos"

descT[2]= "Esses predadores astutos capturam suas presas borrifando uma toxina atordoante nelas."
descleftT[2]=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":185LBS"
descrightT[2]=string(_likesT)+":NATUREZA,CARNE\n"+string(_dislikesT)+":POLUIÇÃO\n"+string(_hobbyT)+":DECORAÇÃO"
descabsT[2]="Carnívoro, Poderes de Planta, Toxina"
  	      

desc=descT[global.Language] 

	 }
  if dataPal=3 {enemy_switch("FOLI",0)
	  
	  
descT[0]="Conniving plants that prefer to knock their prey out with spitting seeds as hard as bullets!"
descleftT[0]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":190LBS"
descrightT[0]=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":COLD\n"+string(_hobbyT)+":HARVESTING"
descabsT[0]="Carnivore Plant Powers,Seed Shooting"	  
	
descT[1]="Conniving plants that prefer to knock their prey out with spitting seeds as hard as bullets!"
descleftT[1]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":190LBS"
descrightT[1]=string(_likesT)+":NATURALEZA, CARNE\n"+string(_dislikesT)+":FRÍO\n"+string(_hobbyT)+":COSECHAR"
descabsT[1]="Poderes de planta carnívora, Disparo de semillas" 

descT[2]= "Plantas coniventes que preferem derrubar suas presas cuspindo sementes tão duras quanto balas!"
descleftT[2]=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":190LBS"
descrightT[2]=string(_likesT)+":NATUREZA,CARNE\n"+string(_dislikesT)+":FRIO\n"+string(_hobbyT)+":COLHEITA"
descabsT[2]="Poderes de Planta Carnívora, Disparo de Sementes"	 
  	      

desc=descT[global.Language] 
 

		  
		  }

break;

  case 28: enemyID=117
  idlestyle=1 hp=0.4
  
descT[0]="A bee lady with style and honey to spare. But provoke her and you’ll face her stinger."
descleftT[0]=string(_ageT)+":25\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":BEARS\n"+string(_hobbyT)+":GARDENING"
descabsT[0]="Bee Stinger, Acidic Honey"	
  
descT[1]="A bee lady with style and honey to spare. But provoke her and you’ll face her stinger."
descleftT[1]=string(_ageT)+":25\nNAT.:ÁFRICAn"+string(_heightT)+":6'10"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":MODA,NECTAR\n"+string(_dislikesT)+":OSOS\n"+string(_hobbyT)+":JARDINERÍA"
descabsT[1]="Aguijón de abeja, Miel ácida"

descT[2]= "Uma estilosa dama abelha e cheia de mel. Mas provoque-a e você enfrentará seu ferrão."
descleftT[2]=string(_ageT)+":25\nNAT.:ÁFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":MODA,NÉCTAR\n"+string(_dislikesT)+":URSOS\n"+string(_hobbyT)+":JARDINAGEM"
descabsT[2]="Ferrão de Abelha, Mel Ácido"

desc=descT[global.Language] 
  
 charinfo_set(12,spr_beelady_stand,3,animsetup_enemy,draw_enemy,spr_dancerpal,0,spr_enemyface,63,"BEEATRICE",
desc)

  if dataPal=2 {enemy_switch("HONEYDEW",0)
	  
descT[0]="These buzzing beauties are hardened fighters. Though they may have a hidden sweet side."
descleftT[0]=string(_ageT)+":30\nNAT.:AFRICA\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":NEST BREAKERS\n"+string(_hobbyT)+":DECORATING"
descabsT[0]="Bee Stinger, Acidic Honey"	
	
descT[1]="These buzzing beauties are hardened fighters. Though they may have a hidden sweet side."
descleftT[1]=string(_ageT)+":30\nNAT.:ÁFRICA\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":MODA,NECTAR\n"+string(_dislikesT)+":ROMPEDORES DE NIDOS\n"+string(_hobbyT)+":DECORANDO"
descabsT[1]="Aguijón de abeja, Miel ácida"

descT[2]= "Essas belas zumbideiras são lutadoras casca grossa. Mas talvez elas tenham um doce lado oculto."
descleftT[2]=string(_ageT)+":30\nNAT.:ÁFRICA\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":MODA,NECTAR\n"+string(_dislikesT)+":QUEBRADORES DE NINHOS\n"+string(_hobbyT)+":DECORANDO"
descabsT[2]="Ferrão de Abelha, Mel Ácido"
    

desc=descT[global.Language]   

	  }
  if dataPal=3 {enemy_switch("WASPELLA",0)
	  
descT[0]="Her stinger is much nastier than others. The venom makes you blimp up like a balloon!"
descleftT[0]=string(_ageT)+":35\nNAT.:AFRICA\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":BALL DANCING"
descabsT[0]="Nasty Bee Stinger, Acidic Honey"
  
 descT[1]="Her stinger is much nastier than others. The venom makes you blimp up like a balloon!"
descleftT[1]=string(_ageT)+":35\nNAT.:ÁFRICA\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":MODA,NECTAR\n"+string(_dislikesT)+":GROSERÍA\n"+string(_hobbyT)+":BAILE CON BALÓN"
descabsT[1]="Aguijón de abeja desagradable, miel ácida"

descT[2]= "Seu ferrão é o menos convidativo entres elas. O veneno te fará inflar como um balão!"
descleftT[2]=string(_ageT)+":35\nNAT.:ÁFRICA\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":MODA, NÉCTAR\n"+string(_dislikesT)+":GROSERIA\n"+string(_hobbyT)+":DANÇA DE BOLA"
descabsT[2]="Ferrão de Abelha Maligna, Mel Ácido"


desc=descT[global.Language] 

	  
	  }
///PINCHER

break;

  case 29: enemyID=75
  hp=0.2 idlestyle=1
  
descT[0]="A big bipedal lobster with an even bigger pinch. Has quite the bubbly temper, too."
descleftT[0]=string(_ageT)+":35\nNAT.:FRANCE\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":170LBS"
descrightT[0]=string(_likesT)+":FANCYNESS,FOOD\n"+string(_dislikesT)+":BAD FOOD\n"+string(_hobbyT)+":FOOD CRITIC"
descabsT[0]="Lobster Claws, Bubbling"
  
 descT[1]="A big bipedal lobster with an even bigger pinch. Has quite the bubbly temper, too."
descleftT[1]=string(_ageT)+":35\nNAT.:FRANCIA\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":170LIBRAS"
descrightT[1]=string(_likesT)+":ELEGANCIA,COMIDA\n"+string(_dislikesT)+":MALA COMIDA\n"+string(_hobbyT)+":CRÍTICO GASTRONÓMICO"
descabsT[1]="Pinzas de langosta, burbujeante"

descT[2]= "Seu ferrão é o menos convidativo entres elas. O veneno te fará inflar como um balão!"
descleftT[2]=string(_ageT)+":35\nNAT.:FRANÇA\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":170LBS"
descrightT[2]=string(_likesT)+":GOSTOSURAS,COMIDA\n"+string(_dislikesT)+":COMIDA RUIM\n"+string(_hobbyT)+":CRÍTICO GASTRONÔMICO"
descabsT[2]="Garras de Lagosta, Borbulhando"
  

desc=descT[global.Language] 
  
 charinfo_set(12,spr_lobster_stand,2,animsetup_enemy,draw_enemy,spr_lobsterpal,0,spr_enemyface,42,"PINCHO",
desc)

  if dataPal=2 {enemy_switch("PINCHER",0)

descT[0]="This crustacean has so much fight in him, he’ll crush anyone with his charging claw!" 
descleftT[0]=string(_ageT)+":36\nNAT.:FRANCE\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":175LBS"
descrightT[0]=string(_likesT)+":BRAWLING,FOOD\n"+string(_dislikesT)+":OILY FOOD\n"+string(_hobbyT)+":BAR HOPPING"
descabsT[0]="Claw Charge, Bubbling" 	  

descT[1]="This crustacean has so much fight in him, he’ll crush anyone with his charging claw!" 
descleftT[1]=string(_ageT)+":36\nNAT.:FRANCIA\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":175LBS"
descrightT[1]=string(_likesT)+":PELEA,COMIDA\n"+string(_dislikesT)+":COMIDA GRASA\n"+string(_hobbyT)+":IR DE BAR EN BAR"
descabsT[1]="Carga de Garra, Burbujeante"	

descT[2]= "Este crustáceo é tão bom de briga que acaba com qualquer um com as investidas de sua garra!"
descleftT[2]=string(_ageT)+":36\nNAT.:FRANÇA\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":175LBS"
descrightT[2]=string(_likesT)+":BRIGA,COMIDA\n"+string(_dislikesT)+":COMIDA OLEOSA\n"+string(_hobbyT)+":Ir de Bares"
descabsT[2]="Investida com Garra, Borbulhando" 	  

desc=descT[global.Language] 
	
	 }
///PINCHER

break;
case 30: enemyID=77
weapon_add("SCIMITAR")
idlestyle=1 hp=0.25

descT[0]="Graceful entertainers who distract foes with their dance before kicking and cutting them apart."
descleftT[0]=string(_ageT)+":26\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS"
descrightT[0]=string(_likesT)+":FANCYNESS,FLOWERS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":EXERCISE"
descabsT[0]="Sword Fighting,Bellydancing"

descT[1]="Graceful entertainers who distract foes with their dance before kicking and cutting them apart."
descleftT[1]=string(_ageT)+":26\nNAT.: MEDIO O.\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS"
descrightT[1]=string(_likesT)+":ELEGANCIA,FLORES\n"+string(_dislikesT)+":GROSERÍA\n"+string(_hobbyT)+":EJERCICIO"
descabsT[1]="Esgrima,Baile del vientre"

descT[2]="Apresentadoras graciosas que distraem inimigos com sua dança antes de chutá-los e cortá-los em pedaços."
descleftT[2]=string(_ageT)+":26\nNAT.:O.MÉDIO\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS"
descrightT[2]=string(_likesT)+":SOFISTICAÇÃO,FLORES\n"+string(_dislikesT)+":GROSERIA\n"+string(_hobbyT)+":EXERCÍCIO"
descabsT[2]="Luta com Espada,Dança do Ventre" 

desc=descT[global.Language] 

charinfo_set(12,spr_dancer_stand,3,animsetup_enemy,draw_swing,spr_dancerpal,0,spr_enemyface,50,"DANZA",
desc
)
 
 weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-16,-91,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-15,-90,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-15,-88,0,weaponcolor)
 
  if dataPal=2 {enemy_switch("RULA",0)

descT[0]="These mystifying dancers are highly sought after, both as entertainers AND as bodyguards."
descleftT[0]=string(_ageT)+":26\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"
descrightT[0]=string(_likesT)+":FANCYNESS,ROSES\n"+string(_dislikesT)+":INFIDELS\n"+string(_hobbyT)+":CATERING"
descabsT[0]="Sword Fighting,Bellydancing" 
	 
descT[1]="These mystifying dancers are highly sought after, both as entertainers AND as bodyguards."
descleftT[1]=string(_ageT)+":26\nNAT.:MEDIO O.\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"
descrightT[1]=string(_likesT)+":ELEGANCIA, ROSAS\n"+string(_dislikesT)+":INFIELES\n"+string(_hobbyT)+":SERVICIOS"
descabsT[1]="Esgrima, Danza del vientre"

descT[2]="Essas dançarinas misteriosas são muito procuradas, tanto como performers quanto como guarda-costas."
descleftT[2]=string(_ageT)+":26\nNAT.:O. MÉDIO\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"
descrightT[2]=string(_likesT)+":FANTAISIA,ROSAS\n"+string(_dislikesT)+":INFIEIS\n"+string(_hobbyT)+":Serviços"
descabsT[2]="Luta com espadas,Dança do ventre"
 
desc=descT[global.Language]   

	  }
  if dataPal=3 {enemy_switch("JAZMYN",0)

descT[0]="With a mysterious spell, they can bring their scimitars to life for assistance in battle!"
descleftT[0]=string(_ageT)+":ANCIENT\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":130LBS"
descrightT[0]=string(_likesT)+":FANCYNESS,JEWELS\n"+string(_dislikesT)+":INTERLOPERS\n"+string(_hobbyT)+":MASSAGES"
descabsT[0]="Magic Sword Fighting,Bellydancing" 	  

descT[1]="With a mysterious spell, they can bring their scimitars to life for assistance in battle!"
descleftT[1]=string(_ageT)+":ANTIGUA\nNAT.:MEDIO ORIENTE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":130LBS"
descrightT[1]=string(_likesT)+":ELEGANCIA, JOYAS\n"+string(_dislikesT)+":INTRUSOS\n"+string(_hobbyT)+":MASAJES"
descabsT[1]="Lucha con espada mágica, Danza del vientre"

descT[2]="Com um feitiço misterioso, elas podem dar vida às suas cimitarras para ajudar na batalha!"
descleftT[2]=string(_ageT)+":ANTIGA\nNAT.:O. MÉDIO\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":130LBS"
descrightT[2]=string(_likesT)+":SOFISTICAÇÃO, JOIAS\n"+string(_dislikesT)+":INTRUSOS\n"+string(_hobbyT)+":MASSAGENS"
descabsT[2]="Luta com Espada Mágica, Dança do Ventre" 

desc=descT[global.Language] 

	
	}
 
 break; 
  case 31:
 hp=0.25 enemyID=80
idlestyle=1


desc=descT[global.Language] 

 charinfo_set(12,spr_diver_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,45,"MR.DIVE",
desc)


descT[0]="Van Bad’s undersea division, quite agile due to much underwater combat experience."
descleftT[0]=string(_ageT)+":34\nNAT.:FRANCE\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":FISHING"
descabsT[0]="UNDERWATER COMBAT"

descT[1]="Van Bad’s undersea division, quite agile due to much underwater combat experience."
descleftT[1]=string(_ageT)+":34\nNAT.:FRANCIA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":150LBS"
descrightT[1]=string(_likesT)+":PESCADO,PAISAJES\n"+string(_dislikesT)+":DELFINES\n"+string(_hobbyT)+":PESCA"
descabsT[1]="COMBATE SUBMARINO"

descT[2]="Divisão submarina de Van Bad, bastante ágil devido à sua vasta experiência em combate subaquático."
descleftT[2]=string(_ageT)+":34\nNAT.:FRANÇA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":150LBS"
descrightT[2]=string(_likesT)+":PEIXE,CENÁRIOS\n"+string(_dislikesT)+":GOLFINHOS\n"+string(_hobbyT)+":PESCA"
descabsT[2]="COMBATE SUBAQUÁTICO"

  if dataPal=2 {weapon_add("HARPOONGUN") enemy_switch("MR.DROP",0)
	  
	

desc=descT[global.Language] 

descT[0]="The elite of the divers, they even have the privilege of carrying harpoon guns!"
descleftT[0]=string(_ageT)+":36\nNAT.:FRANCE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":155LBS"
descrightT[0]=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":WHALES\n"+string(_hobbyT)+":HARPOONING"
descabsT[0]="UNDERWATER COMBAT,HARPOON"

descT[1]="The elite of the divers, they even have the privilege of carrying harpoon guns!"
descleftT[1]=string(_ageT)+":36\nNAT.:FRANCIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":155LBS"
descrightT[1]=string(_likesT)+":PESCADO,PAISAJE\n"+string(_dislikesT)+":BALLENAS\n"+string(_hobbyT)+":LANZAMIENTO DE ARPO"
descabsT[1]="COMBATE SUBMARINO,ARPO"

descT[2]="A elite dos mergulhadores, eles têm até o privilégio de carregar arpões!"
descleftT[2]=string(_ageT)+":36\nNAT.:FRANÇA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":155LBS"
descrightT[2]=string(_likesT)+":PEIXE,PAISAGENS\n"+string(_dislikesT)+":BALEIAS\n"+string(_hobbyT)+":ARPÕES"
descabsT[2]="COMBATE SUBAQUÁTICO,ARPÕES"

}

	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,25*0.9,-39*0.9,-1,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,26*0.9,-38*0.9,-1,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,26*0.9,-36*0.9,-1,weaponcolor)

break;

case 32: hp=0.3 enemyID=82 

descT[0]="Gilled guardians of the deep who punish intruders with their spears and physical strength."
descleftT[0]=string(_ageT)+":25\nNAT.:GREECE\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":INJUSTICE\n"+string(_hobbyT)+":WORKOUTS"
descabsT[0]="SPEAR FIGHTING,BRAWLING"

descT[1]="Gilled guardians of the deep who punish intruders with their spears and physical strength."
descleftT[1]=string(_ageT)+":25\nNAT.:GRECIA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":150LBS"
descrightT[1]=string(_likesT)+":MÚSCULOS, PELEAS\n"+string(_dislikesT)+":INJUSTICIA\n"+string(_hobbyT)+":ENTRENAMIENTOS"
descabsT[1]="LUCHA CON LANZA,RIÑAS"

descT[2]="Guardiões com guelras das profundezas que punem os intrusos com suas lanças e força física."
descleftT[2]=string(_ageT)+":25\nNAT.:GRÉCIA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":150LBS"
descrightT[2]=string(_likesT)+":MÚSCULOS,LUTAS\n"+string(_dislikesT)+":INJUSTIÇA\n"+string(_hobbyT)+":TREINOS"
descabsT[2]="LUTA COM LANÇA,BRIGAS"

desc=descT[global.Language] 

 charinfo_set(12,spr_merman_stand,3,animsetup_merman,draw_merman,spr_zombiepal,0,spr_enemyface,25,"DOUGLAS",
desc)


  if dataPal=1 weapon_add("SPEAR")

  if dataPal=2 {enemy_switch("ERIK",0) weapon_add("TRIDENT")
	  
descT[0]="Higher in rank, they bring tridents into battle against those who pose a threat to the prince."
descleftT[0]=string(_ageT)+":26\nNAT.:GREECE\n"+string(_heightT)+":5'11"+" "+string(_weightT)+":156LBS"
descrightT[0]=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":DISHONOR\n"+string(_hobbyT)+":SCULPTING"
descabsT[0]="TRIDENT FIGHTING,BRAWLING"	  

descT[1]="Higher in rank, they bring tridents into battle against those who pose a threat to the prince."
descleftT[1]=string(_ageT)+":26\nNAT.:GRECIA\n"+string(_heightT)+":5'11"+""+string(_weightT)+":156LBS"
descrightT[1]=string(_likesT)+":MÚSCULOS,PELEAS\n"+string(_dislikesT)+":DESHONOR\n"+string(_hobbyT)+":ESCULTURA"
descabsT[1]="LUCHA CON TRIDENTE,PELEAS"  

descT[2]="De patente superior, eles trazem tridentes para a batalha contra aqueles que representam uma ameaça ao príncipe."
descleftT[2]=string(_ageT)+":26\nNAT.:GRÉCIAn"+string(_heightT)+":5'11"+" "+string(_weightT)+":156LBS"
descrightT[2]=string(_likesT)+":MÚSCULOS,LUTAS\n"+string(_dislikesT)+":DESONRA\n"+string(_hobbyT)+":ESCULTURA"
descabsT[2]="LUTA COM TRIDENTE,BRIGA"	   

desc=descT[global.Language] 


}
  if dataPal=3 {enemy_switch("ADAM",0)
	  
descT[0]="Underlings of the sea witch who guard her domain with the utmost loyalty."
descleftT[0]=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":152LBS"
descrightT[0]=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":SURFING"
descabsT[0]="BRAWLING"	 

descT[1]="Underlings of the sea witch who guard her domain with the utmost loyalty."
descleftT[1]=string(_ageT)+":23\nNAT.:GRECIA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":152LBS"
descrightT[1]=string(_likesT)+":MÚSCULOS,PELEAS\n"+string(_dislikesT)+":INJUSTICIA\n"+string(_hobbyT)+":SURFEAR"
descabsT[1]="PELEAR"

descT[2]="Subordinados da bruxa do mar que guardam seu domínio com máxima lealdade."
descleftT[2]=string(_ageT)+":23\nNAT.:GRÉCIA\n"+string(_heightT)+"5'10"+" "+string(_weightT)+":152LBS"
descrightT[2]=string(_likesT)+":MÚSCULOS,LUTAS\n"+string(_dislikesT)+":INJUSTIÇA\n"+string(_hobbyT)+":SURFEAR"
descabsT[2]="BRIGA"
	   

desc=descT[global.Language] 


	 }
armsX=0 armspr=spr_merman_arms anim=0 weaponBack=0
if image_index<1
{
weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsY=0}
else if image_index<2
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}
else
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}


break;
  case 33:
 idlestyle=1 hp=0.2 enemyID=85
 
 
descT[0]="Beautiful but deadly mermaids. They can shoot scalding hot balls of water from their hands!"
descleftT[0]=string(_ageT)+":22\nNAT.:GREECE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HUNTING"
descabsT[0]="MERMAID MAGIC,BRAWLING"	

descT[1]="Beautiful but deadly mermaids. They can shoot scalding hot balls of water from their hands!"
descleftT[1]=string(_ageT)+":22\nNAT.:GRECIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[1]=string(_likesT)+":MÚSCULOS, PELEAS\n"+string(_dislikesT)+":GROSERÍA\n"+string(_hobbyT)+":CAZA"
descabsT[1]="MAGIA DE SIRENA,REFRIEGO"

descT[2]="Sereias belas, mas mortais. Elas podem disparar bolas de água ardente com as mãos!"
descleftT[2]=string(_ageT)+":22\nNAT.:GRÉCIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[2]=string(_likesT)+":MÚSCULOS,LUTAS\n"+string(_dislikesT)+":GROSSEIRA\n"+string(_hobbyT)+":CAÇA"
descabsT[2]="MAGIA DE SEREIA,BRIGAS"
  

desc=descT[global.Language] 
 
 charinfo_set(12,spr_siren_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,26,"SIRENA",
desc)

  if dataPal=2 {enemy_switch("MARINA",0)
	  
descT[0]="Keep out of their personal space bubble, or her hot charging fist will pop yours and your face!"
descleftT[0]=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":DECORATING"
descabsT[0]="MERMAID MAGIC,BRAWLING"	 
 
 descT[1]="Keep out of their personal space bubble, or her hot charging fist will pop yours and your face!"
descleftT[1]=string(_ageT)+":23\nNAT.:GRECIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[1]=string(_likesT)+":MÚSCULOS, PELEAS\n"+string(_dislikesT)+":GROSERÍA\n"+string(_hobbyT)+":DECORAR"
descabsT[1]="MAGIA DE SIRENA, PLEITOS"

descT[2]="Fique fora da bolha pessoal delas, ou o punho quente delas vai estourar a sua e o seu rosto!"
descleftT[0]=string(_ageT)+":23\nNAT.:GRÉCIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":MÚSCULOS,LUTAS\n"+string(_dislikesT)+":GROSSEIRA\n"+string(_hobbyT)+":DECORAÇÃO"
descabsT[0]="MAGIA DE SEREIA,BRIGA"
	
desc=descT[global.Language] 
	 
	 }
  if dataPal=3 {enemy_switch("SKYLA",0)
	  
desc=descT[global.Language] 

descT[0]="Deceptively vicious skymaids who lure their prey in with their song before pulverizing them." 
descleftT[0]=string(_ageT)+":22\nNAT.:CLOUDSVILLE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":FRUITS,SONGS\n"+string(_dislikesT)+":MERMAIDS\n"+string(_hobbyT)+":SINGING"
descabsT[0]="SKYMAID MAGIC,BRAWLING"
 
 descT[1]="Keep out of their personal space bubble, or her hot charging fist will pop yours and your face!"
descleftT[1]=string(_ageT)+":22\nNAT.:VILLA NUBE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LIBRAS"
descrightT[1]=string(_likesT)+":FRUTAS,CANCIONES\n"+string(_dislikesT)+":SIRENAS\n"+string(_hobbyT)+":CANTAR"
descabsT[1]="MAGIA DE SKYMAID,PELEAS"

descT[2]="Sereias de águas rasas manipuladoras e cruéis que atraem suas presas com suas canções antes de pulverizá-las."
descleftT[2]=string(_ageT)+":22\nNAT.:VILLA NUBE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
descrightT[2]=string(_likesT)+":FRUTAS,CANÇÕES\n"+string(_dislikesT)+":SEREIAS\n"+string(_hobbyT)+":CANTAR"
descabsT[2]="MAGIA SKYMAID,BRIGA"
	 }

break;
  case 34:
 idlestyle=1
 hp=0.25 enemyID=88 
 
 
descT[0]="These space babes abduct earthly specimens! Watch out for their psychic brain shock!"
descleftT[0]=string(_ageT)+":31\nNAT.:ALIEN\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
descrightT[0]=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":RESEARCHING"
descabsT[0]="BRAINPOWER"
 
descT[1]="These space babes abduct earthly specimens! Watch out for their psychic brain shock!"
descleftT[1]=string(_ageT)+":31\nNAT.:EXTRATERRESTRE\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
descrightT[1]=string(_likesT)+":ORO,ESPECÍMENES\n"+string(_dislikesT)+":JUSTICIA\n"+string(_hobbyT)+":INVESTIGACIÓN"
descabsT[1]="PODER CEREBRAL"

descT[2]="Essas garotas espaciais sequestram espécimes terrestres! Cuidado com o choque psíquico cerebral delas!"
descleftT[2]=string(_ageT)+":31\nNAT.:ALIENÍGENA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"
descrightT[2]=string(_likesT)+":OURO, EXEMPLARES\n"+string(_dislikesT)+":JUSTIÇA\n"+string(_hobbyT)+":PESQUISAR"
descabsT[2]="PODER CEREBRAL"
 	 

desc=descT[global.Language] 
 
 charinfo_set(12,spr_martian_stand,3,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,23,"MARTIA",
desc)

  if dataPal=2 {enemy_switch("INVA",0) weapon_add("TASER")
	  

descT[0]="Alien security guards who subdue fleeing specimens with their shocking stun batons." 
descleftT[0]=string(_ageT)+":34\nNAT.:ALIEN\n"+string(_heightT)+":7'1"+" "+string(_weightT)+":162LBS"
descrightT[0]=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
descabsT[0]="BRAINPOWER,TECHNOLOGY"
 
descT[1]="Alien security guards who subdue fleeing specimens with their shocking stun batons." 
descleftT[1]=string(_ageT)+":34\nNAT.:EXTRATERRESTRE\n"+string(_heightT)+":7'1"+" "+string(_weightT)+":162LBS"
descrightT[1]=string(_likesT)+":ORO,ESPECÍMENES\n"+string(_dislikesT)+":JUSTICIA\n"+string(_hobbyT)+":CAZA"
descabsT[1]="PODER CEREBRAL,TECNOLOGÍA"

descT[2]="Guardas de segurança alienígenas que subjugam espécimes em fuga com seus bastões elétricos."
descleftT[2]=string(_ageT)+":34\nNAT.:ALIENÍGENA\n"+string(_heightT)+":7'1"+" "+string(_weightT)+":162LBS"
descrightT[2]=string(_likesT)+":OURO, EXEMPLARES\n"+string(_dislikesT)+":JUSTIÇA\n"+string(_hobbyT)+":CAÇA"
descabsT[2]="PODER CEREBRAL,TECNOLOGIA"

desc=descT[global.Language] 	  
 
	 }
  if dataPal=3 {enemy_switch("EXTA",0) weapon_add("LASERGUN")
	  
descT[0]="Illustrious invaders who are armed with powerful laser guns for frying or capturing specimens!"
descleftT[0]=string(_ageT)+":28\nNAT.:ALIEN\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":150LBS"
descrightT[0]=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
descabsT[0]="BRAINPOWER,TECHNOLOGY"
 
descT[1]="Illustrious invaders who are armed with powerful laser guns for frying or capturing specimens!"
descleftT[1]=string(_ageT)+":28\nNAT.:EXTRATERRESTRE\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":150LBS"
descrightT[1]=string(_likesT)+":ORO,ESPECÍMENES\n"+string(_dislikesT)+":JUSTICIA\n"+string(_hobbyT)+":CAZA"
descabsT[1]="PODER CEREBRAL,TECNOLOGÍA"

descT[2]="Invasores ilustres armados com poderosas armas laser para fritar ou capturar espécimes!"
descleftT[2]=string(_ageT)+":28\nNAT.:ALIENÍGENA\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":150LBS"
descrightT[2]=string(_likesT)+":OURO, EXEMPLARES\n"+string(_dislikesT)+":JUSTIÇA\n"+string(_hobbyT)+":CAÇA"
descabsT[2]="PODER CEREBRAL,TECNOLOGIA" 

	 desc=descT[global.Language]  

}

var _weaponaddX=0;
var _weaponang=0; var _weaponadd=0; if spawnID=oLaserGun {_weaponang=-90; weaponspr=spr_lasergunE}

weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,15+_weaponaddX,-48+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16+_weaponaddX,-47+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,17+_weaponaddX,-46+_weaponadd,90+_weaponang,weaponcolor)

break;
  case 35: hp=0.2 enemyID=90
  
  
descT[0]="These alien security drones are armed with electrically charged arms and lasers."
descleftT[0]="NAT.:ALIEN\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":VIOLENCE,ACTION\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
descabsT[0]="TECHNOLOGY"
 
descT[1]="These alien security drones are armed with electrically charged arms and lasers."
descleftT[1]="NAT.:EXTRATERRESTRE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":VIOLENCIA,ACCIÓN\n"+string(_dislikesT)+":JUSTICIA\n"+string(_hobbyT)+":CAZA"
descabsT[1]="TECNOLOGÍA"

descT[2]="Esses drones de segurança alienígenas estão equipados com armas elétricas e lasers."
descleftT[2]="NAT.:ALIENÍGENA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":VIOLÊNCIA,AÇÃO\n"+string(_dislikesT)+":JUSTIÇA\n"+string(_hobbyT)+":CAÇA"
descabsT[2]="TECNOLOGIA"
desc=descT[global.Language] 
  
 charinfo_set(12,spr_alienrobot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,28,"ELECTRON",
desc)

  if dataPal=2 {enemy_switch("DESTRON",0)
	  
descT[0]="These drones support the invading troops by launching powerful, bouncing bombs." 
descleftT[0]="NAT.:ALIEN\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":190LBS"
descrightT[0]=string(_likesT)+":VIOLENCE,ACTION\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
descabsT[0]="TECHNOLOGY"
 
descT[1]="These drones support the invading troops by launching powerful, bouncing bombs." 
descleftT[1]="NAT.:EXTRATERRESTRE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":190LBS"
descrightT[1]=string(_likesT)+":VIOLENCIA,ACCIÓN\n"+string(_dislikesT)+":JUSTICIA\n"+string(_hobbyT)+":CAZA"
descabsT[1]="TECNOLOGÍA"

descT[2]="Esses drones apoiam tropas alienígenas lançando bombas poderosas e saltitantes."
descleftT[2]="NAT.:ALIENÍGENA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":190LBS"
descrightT[2]=string(_likesT)+":VIOLÊNCIA,AÇÃO\n"+string(_dislikesT)+":JUSTIÇA\n"+string(_hobbyT)+":CAÇA"
descabsT[2]="TECNOLOGIA"
	 
	 }

break;
  case 36: hp=0.25 enemyID=93
 idlestyle=1
 
descT[0]="These aliens’ pets and guard dogs’ eyes turn into frightening fangs to bite into their prey!"
descleftT[0]=string(_ageT)+":5\nNAT.:ALIEN\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":MEALS,APPROVAL\n"+string(_dislikesT)+":SCOLDS\n"+string(_hobbyT)+":SLEEPING"
descabsT[0]="ALIEN POWERS"
 
descT[1]="These aliens’ pets and guard dogs’ eyes turn into frightening fangs to bite into their prey!"
descleftT[1]=string(_ageT)+":5\nNAT.:EXTRATERRESTRE\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":COMIDAS,APROBACIÓN\n"+string(_dislikesT)+":REPRENSIONES\n"+string(_hobbyT)+":DURMIENDO"
descabsT[1]="PODERES EXTRATERRESTRES"

descT[2]="O olho desses animais domésticos e cães de guarda alienígenas se transforma em presas assustadoras para morder suas presas!"
descleftT[2]=string(_ageT)+":5\nNAT.:ALIEN\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":REFEIÇÕES,APROVAÇÃO\n"+string(_dislikesT)+":REPROVAÇÕES\n"+string(_hobbyT)+":DORMIR"
descabsT[2]="PODERES ALIENÍGENAS"   	 

desc=descT[global.Language] 
 
 charinfo_set(12,spr_spacer_stand,2,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,43,"OJO",
desc)



  if dataPal=2 {enemy_switch("VER",0)
	  
	  
descT[0]="Specially trained, these beasts fire beams to inflate targets into helpless balloons for capture."
descleftT[0]=string(_ageT)+":6\nNAT.:ALIEN\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":MEALS,APPROVAL\n"+string(_dislikesT)+":NO ATTENTION\n"+string(_hobbyT)+":NAPPING"
descabsT[0]="ALIEN POWERS"

descT[1]="Specially trained, these beasts fire beams to inflate targets into helpless balloons for capture."
descleftT[1]=string(_ageT)+":6\nNAT.:EXTRATERRESTRE\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":COMIDAS,APROBACIÓN\n"+string(_dislikesT)+":SIN ATENCIÓN\n"+string(_hobbyT)+":DORMIR SIESTAS"
descabsT[1]="PODERES EXTRATERRESTRES"

descT[2]="Especialmente treinados, essas feras disparam feixes para inflar alvos e transformá-los em balões indefesos para captura."
descleftT[2]=string(_ageT)+":6\nNAT.:ALIENn"+string(_heightT)+":6'5"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":REFEIÇÕES,APROVAÇÃO\n"+string(_dislikesT)+":SEM ATENÇÃO\n"+string(_hobbyT)+":COCHILOS"
descabsT[2]="PODERES ALIENÍGENAS"
    	 

desc=descT[global.Language] 
		 
		 }

break;
  case 37: hp=0.3 enemyID=95 idlestyle=1
  
  
descT[0]="Workaholic goblins dedicated to mining. Disturb one and you’ll face a whole mob of ‘em!"
descleftT[0]=string(_ageT)+":31\nNAT.:FRANCE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":WORK,GEMSTONES\n"+string(_dislikesT)+":DISRUPTIONS\n"+string(_hobbyT)+":NONE"
descabsT[0]="Mining"

descT[1]="Workaholic goblins dedicated to mining. Disturb one and you’ll face a whole mob of ‘em!"
descleftT[1]=string(_ageT)+":31\nNAT.:FRANCIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":TRABAJO, GEMAS\n"+string(_dislikesT)+":INTERRUPCIONES\n"+string(_hobbyT)+":NINGUNO"
descabsT[1]="Minería"
  
descT[2]="Goblins burros de carga dedicados à mineração. Perturbe um e você enfrentará uma orda!"
descleftT[2]=string(_ageT)+":31\nNAT.:FRANÇA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":TRABALHO, PEDRAS PRECIOSAS\n"+string(_dislikesT)+":INTERFERÊNCIAS\n"+string(_hobbyT)+":NENHUM"
descabsT[2]="Mineração"
     	 

desc=descT[global.Language] 
  
  charinfo_set(12,spr_goblin_stand,2,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,27,"GOBERT",
desc)

  if dataPal=2 {enemy_switch("GOHNNY",0) weapon_add("PICKAXE")
	  
	  
 descT[0]="Agile and armed with the tools of their trade, they won’t hesitate to pummel trespassers!"
descleftT[0]=string(_ageT)+":35\nNAT.:FRANCE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":105LBS"
descrightT[0]=string(_likesT)+":WORK,WORK\n"+string(_dislikesT)+":LATE WORK\n"+string(_hobbyT)+":NONE"
descabsT[0]="Mining"

 descT[1]="Agile and armed with the tools of their trade, they won’t hesitate to pummel trespassers!"
descleftT[1]=string(_ageT)+":35\nNAT.:FRANCIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":105LBS"
descrightT[1]=string(_likesT)+":TRABAJO,TRABAJO\n"+string(_dislikesT)+":TRABAJO TARDÍO\n"+string(_hobbyT)+":NINGUNO"
descabsT[1]="Minería"
  
descT[2]="Ágeis e armados com suas ferramentas de ofício, eles não hesitarão em espancar invasores!"
descleftT[2]=string(_ageT)+":35\nNAT.:FRANÇA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":105LBS"
descrightT[2]=string(_likesT)+":TRABALHO,TRABALHO\n"+string(_dislikesT)+":TRABALHO ATRASADO\n"+string(_hobbyT)+":NENHUM"
descabsT[2]="Mineração"	      	

desc=descT[global.Language] 


	 }
  
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,17,-24,89,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,19,-22,89,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,19,-19,89,weaponcolor)

break;
  case 38:
  idlestyle=1 enemyID=97
  

 descT[0]="Cheerful, peppy mushroom girls. They rub their hands together to spread paralyzing spores!"
descleftT[0]=string(_ageT)+":21\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
descabsT[0]="Mushroom Powers, Stun Spore"

 descT[1]="Cheerful, peppy mushroom girls. They rub their hands together to spread paralyzing spores!"
descleftT[1]=string(_ageT)+":21\nNAT.:RUSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":FIESTAS,Bailando\n"+string(_dislikesT)+":ABURRIMIENTOn"+string(_hobbyT)+":PARTEAR"
descabsT[1]="Poderes de Hongo, Espora Aturdidora"

descT[2]="Garotas cogumelo alegres e animadas. Elas esfregam as mãos para espalhar esporos paralisantes!"
descleftT[2]=string(_ageT)+":21\nNAT.:RÚSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":FESTAS,DANÇA\n"+string(_dislikesT)+":TÉDIO\n"+string(_hobbyT)+":FESTEJAR"
descabsT[2]="Poderes de Cogumelo, Esporo Atordoante"  

desc=descT[global.Language] 
  
 charinfo_set(12,spr_shroom_stand,4,animsetup_enemy,draw_enemy,spr_playerpal,0,spr_enemyface,52,"AMANITA",
desc)

  if dataPal=2 {enemy_switch("CERANA",0)
	  
descT[0]="These fun-gals party particularly hard, so much they tend to hit others when headbanging!"
descleftT[0]=string(_ageT)+":22\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
descabsT[0]="Mushroom Powers, Headbutt"

descT[1]="These fun-gals party particularly hard, so much they tend to hit others when headbanging!"
descleftT[1]=string(_ageT)+":22\nNAT.:RUSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":FIESTAS,BALLET\n"+string(_dislikesT)+":ABURRIMIENTO\n"+string(_hobbyT)+":FIESTAR"
descabsT[1]="Poderes de Hongo, Cabezazo"

descT[2]="Essas garotas divertidas festejam com tanta intensidade que tendem a bater nos outros quando balançam a cabeça!"
descleftT[2]=string(_ageT)+":22\nNAT.:RÚSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":FESTAS,DANÇAR\n"+string(_dislikesT)+":TÉDIO\n"+string(_hobbyT)+":FESTEAR"
descabsT[2]="Poderes de Cogumelo, Cabeçada"	  

desc=descT[global.Language] 


	  }
    if dataPal=3 {enemy_switch("ELEGANS",0)
		
descT[0]="The spores of these party mushrooms tend to send people into a manic haze like theirs."
descleftT[0]=string(_ageT)+":23\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
descabsT[0]="Mushroom Powers, Stun Spore"

descT[0]="The spores of these party mushrooms tend to send people into a manic haze like theirs."
descleftT[1]=string(_ageT)+":23\nNAT.:RUSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":FIESTAS,Bailando\n"+string(_dislikesT)+":ABURRIMIENTOn"+string(_hobbyT)+":PARTEAR"
descabsT[1]="Poderes de Hongo, Espora Aturdidora"

descT[2]="Os esporos destes cogumelos festivos tendem a deixar as pessoas em um estado de euforia semelhante ao deles."
descleftT[2]=string(_ageT)+":23\nNAT.:RÚSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":FESTAS,DANÇA\n"+string(_dislikesT)+":TÉDIO\n"+string(_hobbyT)+":FESTEJAR"
descabsT[2]="Poderes de Cogumelo, Esporo Atordoante"  		

desc=descT[global.Language] 

	}
	  if dataPal=4 {enemy_switch("PHOLIOTA",0)
		  
descT[0]="Playful to a fault, they mean no harm in their headbutts, but don’t realize how hard they are." 
descleftT[0]=string(_ageT)+":20\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[0]=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
descabsT[0]="Mushroom Powers, Headbutt"

descT[0]="Playful to a fault, they mean no harm in their headbutts, but don’t realize how hard they are." 
descleftT[1]=string(_ageT)+":20\nNAT.:RUSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[1]=string(_likesT)+":FIESTAS,BALLET\n"+string(_dislikesT)+":ABURRIMIENTO\n"+string(_hobbyT)+":FIESTAR"
descabsT[1]="Poderes de Hongo, Cabezazo"

descT[2]="Brincalhonas até demais, eles não têm intenção de machucar com suas cabeçadas, mas não percebem o quão fortes elas são."
descleftT[2]=string(_ageT)+":20\nNAT.:RÚSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"
descrightT[2]=string(_likesT)+":FESTAS,DANÇAR\n"+string(_dislikesT)+":TÉDIO\n"+string(_hobbyT)+":FESTEAR"
descabsT[2]="Poderes de Cogumelo, Cabeçada"	  

desc=descT[global.Language] 

		 }

break;
  case 39:
 idlestyle=1 hp=0.4 enemyID=101
 
 
 descT[0]= "These smug slimes have a long reach and can become a puddle before launching an uppercut."
descleftT[0]=string(_ageT)+":26\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":SHOW OFF,MELONS\n"+string(_dislikesT)+":SHOWOFFS\n"+string(_hobbyT)+":EXERCISE"
descabsT[0]="Slime Powers,Sneaking"
 
 descT[1]= "These smug slimes have a long reach and can become a puddle before launching an uppercut."
descleftT[1]=string(_ageT)+":26\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":MOSTRAR, MELONES\n"+string(_dislikesT)+":FANFARRONES\n"+string(_hobbyT)+":EJERCICIO"
descabsT[1]="Poderes de limo,Escabullirse"

descT[2]="Essas slimes presunçosas têm um longo alcance e podem se transformar em uma poça antes de darem um gancho."
descleftT[2]=string(_ageT)+":26\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":MOSTRAR, MELÕES\n"+string(_dislikesT)+":MOSTRADORES\n"+string(_hobbyT)+":EXERCÍCIO"
descabsT[2]="Poderes de Slime,Furtividade"

desc=descT[global.Language] 
 
 charinfo_set(12,spr_slime_stand,6,animsetup_enemy,draw_enemy,spr_slimepal,0,spr_enemyface,22,"MELON",
desc)
 
   if dataPal=2 {enemy_switch("CHERRY",0)
	   
 descT[0]= "Fast self-regeneration allows these girls to launch pieces of themselves at foes with no issue."
descleftT[0]=string(_ageT)+":25\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":ATTENTION,CHERRIES\n"+string(_dislikesT)+":SHARP THINGS\n"+string(_hobbyT)+":GARDENING"
descabsT[0]="Slime Powers, Slime Launching"
 
 descT[1]= "Fast self-regeneration allows these girls to launch pieces of themselves at foes with no issue."
descleftT[1]=string(_ageT)+":25\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":ATENCIÓN,CEREZAS\n"+string(_dislikesT)+":COSAS AFILADAS\n"+string(_hobbyT)+":JARDINERÍA"
descabsT[1]="Poderes de Slime,Lanzamiento de Slime"

descT[2]="A rápida autorregeneração permite que essas garotas lancem pedaços de si mesmas nos inimigos sem nenhum problema."
descleftT[2]=string(_ageT)+":25\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":ATENÇÃO,CEREJAS\n"+string(_dislikesT)+":COISAS CORTANTES\n"+string(_hobbyT)+":JARDINAGEM"
descabsT[2]="Poderes de Slime,Lançamento de Slime"
	
desc=descT[global.Language] 
	 
	   
	   }
    if dataPal=3 {enemy_switch("BLUEBERRY",0)
		
		
 descT[0]= "Buoyant and bouncy, they like tackling their opponents as a big slimy cannonball!"
descleftT[0]=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":PARTY,BLUEBERRIES\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
descabsT[0]="Slime Powers, Brawling"
 
 descT[1]= "Buoyant and bouncy, they like tackling their opponents as a big slimy cannonball!"
descleftT[1]=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":FIESTA,ARÁNDANOS\n"+string(_dislikesT)+":ABURRIMIENTO\n"+string(_hobbyT)+":FIESTEAR"
descabsT[1]="Poderes de slime, Peleas"

descT[2]="Flutuantes e saltitantes, elas gostam de atacar seus oponentes como uma grande bola de canhão viscosa!"
descleftT[2]=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":FESTA,MIRtilos\n"+string(_dislikesT)+":TÉDIO"+string(_hobbyT)+":FESTEJAR"
descabsT[2]="Poderes de Slime, Brigas"


desc=descT[global.Language] 

		}
	  if dataPal=4 {enemy_switch("BANANA",0)
		  
		  
 descT[0]="These girls are dangerously clingy, watch for yellow puddles or you’ll get one big, slimy hug!"
descleftT[0]=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":HUGS,BANANAS\n"+string(_dislikesT)+":POINTY THINGS\n"+string(_hobbyT)+":BOOK WRITING"
descabsT[0]="Slime Powers, Absorbing"
 
 descT[1]= "Buoyant and bouncy, they like tackling their opponents as a big slimy cannonball!"
descleftT[1]=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":ABRAZOS, PLÁTANOS\n"+string(_dislikesT)+":COSAS PUNTIAGUDAS\n"+string(_hobbyT)+":ESCRITURA DE LIBROS"
descabsT[1]="Poderes de baba, Absorber"

descT[2]="Essas garotas são perigosamente pegajosas, cuidado com as poças amarelas ou você receberá um grande abraço melado!"
descleftT[2]=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":ABRAÇOS, BANANAS\n"+string(_dislikesT)+":COISAS PONTIAGUDAS\n"+string(_hobbyT)+":ESCRITA DE LIVROS"
descabsT[2]="Poderes de Slime, Absorvendo"


desc=descT[global.Language] 
		  
 descleft=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		  

		  
		  }
    if dataPal=5 {enemy_switch("CALCIUM",0)
		
		 descT[global.Language]=""
descleftT[global.Language]=string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[global.Language]=""
descabsT[global.Language]=""
		
 descT[0]="Bio-engineered underlings of Van Bad based on the cave dwellers. Much more hostile though."
  descT[1]="Bio-engineered underlings of Van Bad based on the cave dwellers. Much more hostile though."
descT[2]="Subordinados vítimas da bio-engenharia de Van Bad baseados nos habitantes das cavernas. Porém muito mais hostis."
desc=descT[global.Language] 
 
   descright=""
 dataabilities=""
 
		}
	  if dataPal=6 {enemy_switch("CHEMI",0)
		  
		 descT[global.Language]=""
descleftT[global.Language]=string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
descrightT[global.Language]=""
descabsT[global.Language]=""
		
 descT[0]="Constantly hungry lab experiments, they’ll grab and try to absorb anything that moves."
 descT[1]="Constantly hungry lab experiments, they’ll grab and try to absorb anything that moves."
descT[2]="Experiências de laboratório constantemente famintas, elas agarram e tentam absorver qualquer coisa que se mova."

desc=descT[global.Language] 	  
		  
  descright=""
 dataabilities=""		  
		  }
		  	  
 
break;
  case 40: enemyID=107
  idlestyle=1 hp=1
  
  
descT[0]= "Love-starved, strong yetis who use their strength and ice breath to catch new companions."
descleftT[0]=string(_ageT)+":45\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":360LBS"
descrightT[0]=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":ICE SCULPTING"
descabsT[0]="Ice Breath,Smashing"
  
 descT[1]="Love-starved, strong yetis who use their strength and ice breath to catch new companions."
descleftT[1]=string(_ageT)+":45\nNAT.:RUSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":360LBS"
descrightT[1]=string(_likesT)+":AMOR,ABRAZOS\n"+string(_dislikesT)+":ESCAPADAS\n"+string(_hobbyT)+":ESCULTURA EN HIELO"
descabsT[1]="Aliento de Hielo,Aplastando"

descT[2]="Yettis fortes e famintos por amor que usam sua força e sopro gelado para capturar novos companheiros."
descleftT[2]=string(_ageT)+":45\nNAT.:RÚSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":360LBS"
descrightT[2]=string(_likesT)+":AMOR,ABRAÇOS\n"+string(_dislikesT)+":FUGA\n"+string(_hobbyT)+":ESCULTURA DE GELO"
descabsT[2]="Sopro de Gelo,Esmagamento"
   

desc=descT[global.Language] 
  
 charinfo_set(12,spr_snowgirl_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,51,"PRIMA",
desc)
 
     if dataPal=2 {enemy_switch("EVA",0)
		 
descT[0]= "They lack ice breath, but their mighty leaps are enough for them to pounce on any mates."	
descleftT[0]=string(_ageT)+":42\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":350LBS"
descrightT[0]=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":DITCHERS\n"+string(_hobbyT)+":ROCK SCULPTING"
descabsT[0]="Crushing,Smashing"

descT[1]= "They lack ice breath, but their mighty leaps are enough for them to pounce on any mates."	
descleftT[1]=string(_ageT)+":42\nNAT.:RUSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":350LBS"
descrightT[1]=string(_likesT)+":AMOR,ABRAZOS\n"+string(_dislikesT)+":ABANDONOS\n"+string(_hobbyT)+":ESCULTURA EN PIEDRA"
descabsT[1]="Aplastando,Rompiendo"

descT[2]="Não têm sopro gelado, mas seus saltos poderosos são suficientes para quicar em qualquer companheiro."	
descleftT[2]=string(_ageT)+":42\nNAT.:RÚSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":350LBS"
descrightT[2]=string(_likesT)+":AMOR,ABRAÇOS\n"+string(_dislikesT)+":ABANDONADORES\n"+string(_hobbyT)+":ESCULTURA EM ROCHA"
descabsT[2]="Esmagando,Quebrando"    

desc=descT[global.Language] 
  
		 }
    if dataPal=3 {enemy_switch("UNDA",0)
	
 descT[0]= "These amorous cave beasts will shake the earth itself just so they can get you to themselves!"
descleftT[0]=string(_ageT)+":43\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":345LBS"
descrightT[0]=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNNERS\n"+string(_hobbyT)+":MUD SCULPTING"
descabsT[0]="Crushing,Smashing"
	
 descT[1]= "These amorous cave beasts will shake the earth itself just so they can get you to themselves!"
descleftT[1]=string(_ageT)+":43\nNAT.:RUSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":345LBS"
descrightT[1]=string(_likesT)+":AMOR,ABRAZOS\n"+string(_dislikesT)+":CORREDORES\n"+string(_hobbyT)+":ESCULTURA DE BARRO"
descabsT[1]="Aplastando,Destrozando"

descT[2]="Essas feras amorosas das cavernas sacudirão a própria terra só para ter você para elas!"
descleftT[2]=string(_ageT)+":43\nNAT.:RÚSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":345LBS"
descrightT[2]=string(_likesT)+":AMOR,ABRAÇOS\n"+string(_dislikesT)+":CORREDORES\n"+string(_hobbyT)+":ESCULTURA DE LAMA"
descabsT[2]="ESMAGANDO,DESTROÇANDO"
 
desc=descT[global.Language] 

		
		}

break;

  case 41:
  hp=0.2 enemyID=110
  
descT[0]=  "Scientists who work under Dr. Fran. They act as support by throwing exploding beakers."
descleftT[0]=string(_ageT)+":35\nNAT.:GERMANY\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":SCIENCE,APPLES\n"+string(_dislikesT)+":FAILURE\n"+string(_hobbyT)+":BOOK CLUB"
descabsT[0]="Science,Explosive" 

descT[1]=  "Scientists who work under Dr. Fran. They act as support by throwing exploding beakers."
descleftT[1]=string(_ageT)+":35\nNAT.:ALEMANIA\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":CIENCIA,MANZANAS\n"+string(_dislikesT)+":FRACASOS\n"+string(_hobbyT)+":CLUB DE LECTURA"
descabsT[1]="Ciencia,Explosivo"

descT[2]="Cientistas que trabalham para a Dr. Fran. Eles atuam como apoio, jogando provetas explosivas."
descleftT[2]=string(_ageT)+":35\nNAT.:ALEMANHA\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":CIÊNCIA,MAÇÃS\n"+string(_dislikesT)+":FRACASSOS\n"+string(_hobbyT)+":CLUBE DO LIVRO"
descabsT[2]="Ciência, Explosivo"
    
desc=descT[global.Language] 
  
 charinfo_set(12,spr_nurse_stand,4,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,48,"DR.PERO",
desc)
 
  if dataPal=2 {enemy_switch("DR.SULF",0)

descT[0]= "Usually sedating test subjects, they carry syringes that they can throw with pinpoint accuracy."
descleftT[0]=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'3"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":SCIENCE,PUDDING\n"+string(_dislikesT)+":FAKERS\n"+string(_hobbyT)+":EXPERIMENTING"
descabsT[0]="Science, Needle Throwing"

descT[1]= "Usually sedating test subjects, they carry syringes that they can throw with pinpoint accuracy."
descleftT[1]=string(_ageT)+":36\nNAT.USA\n"+string(_heightT)+":5'3"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":CIENCIA, PUDÍNn"+string(_dislikesT)+":FALSOS\n"+string(_hobbyT)+":EXPERIMENTANDO"
descabsT[1]="Ciencia, Lanzamiento de Agujas"

descT[2]="Normalmente sedando cobaias, eles carregam seringas que podem ser lançadas com precisão milimétrica."
descleftT[2]=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'3"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":CIÊNCIA,PUDIM\n"+string(_dislikesT)+":FALSOS\n"+string(_hobbyT)+":EXPERIMENTANDO"
descabsT[2]="Ciência, Arremesso de Agulhas"

desc=descT[global.Language] 	  
	  }
    if dataPal=3 {enemy_switch("DR.MONIA",0)
		
descT[0]= "Armed with potions full of dizzying gas. Even without a mask they’ve developed an immunity."
descleftT[0]=string(_ageT)+":35\nNAT.:CANADA\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"	
descrightT[0]=string(_likesT)+":SCIENCE,SPIDERS\n"+string(_dislikesT)+":USELESSNESS\n"+string(_hobbyT)+":COOKING"
descabsT[0]="Science, Poison"

descT[1]= "Armed with potions full of dizzying gas. Even without a mask they’ve developed an immunity."
descleftT[1]=string(_ageT)+":35\nNAT.:CANADÁn"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":CIENCIA,ARAÑAS\n"+string(_dislikesT)+":INUTILIDAD\n"+string(_hobbyT)+":COCINA"
descabsT[1]="Ciencia, Veneno"

descT[2]="Armados com poções cheias de gás vertiginoso. Mesmo sem máscara, eles desenvolveram imunidade."
descleftT[2]=string(_ageT)+":35\nNAT.:CANADÁ\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":CIÊNCIA, ARANHAS\n"+string(_dislikesT)+":INUTILIDADE\n"+string(_hobbyT)+":COZINHAR"
descabsT[2]="Ciência, Veneno"
 

desc=descT[global.Language] 


		
		}
	  if dataPal=4 {enemy_switch("DR.GLUCO",0)
		
		  
descT[0]="Chemists with a nasty temper and nastier attitude who throw vials that burst into acid puddles."
descleftT[0]=string(_ageT)+":38\nNAT.:RUSSIA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":110LBS"
descrightT[0]=string(_likesT)+":SCIENCE,SNAILS\n"+string(_dislikesT)+":BREAKS\n"+string(_hobbyT)+":RESEARCH"
descabsT[0]="Science, Melting Acid"

descT[1]="Chemists with a nasty temper and nastier attitude who throw vials that burst into acid puddles."
descleftT[1]=string(_ageT)+":38\nNAT.:RUSIA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":110LBS"
descrightT[1]=string(_likesT)+":CIENCIA,CARACOLES\n"+string(_dislikesT)+":DESCANSOS\n"+string(_hobbyT)+":INVESTIGACIÓN"
descabsT[1]="Ciencia, Ácido Fundente"
//
descT[2]="Químicas com temperamento desagradável e atitude piores ainda, que jogam frascos que se transformam em poças de ácido."
descleftT[2]=string(_ageT)+":38\nNAT.:RÚSSIA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":110LBS"
descrightT[2]=string(_likesT)+":CIÊNCIA,CARACOLAS\n"+string(_dislikesT)+":DESCANSOS\n"+string(_hobbyT)+":PESQUISA"
descabsT[2]="Ciência, Ácido Derretido"

desc=descT[global.Language] 
		  
		  }
 
break;
  case 42: hp=1 enemyID=114
  
descT[0]= "Dr. Fran’s pride and joy, these steel bombshells hit fast and hard with a dizzying punch."
descleftT[0]=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":DESTROYING,FILMS\n"+string(_dislikesT)+":MISTAKES\n"+string(_hobbyT)+":MUSIC PLAYING"
descabsT[0]="Robotic Kick, Charging"
  
 descT[1]= "Dr. Fran’s pride and joy, these steel bombshells hit fast and hard with a dizzying punch."
descleftT[1]=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":DESTRUIR,PELÍCULAS\n"+string(_dislikesT)+":ERRORES\n"+string(_hobbyT)+":TOCAR MÚSICA"
descabsT[1]="Patada Robótica, Cargando"
     
descT[2]="Orgulho e alegria do Dr. Fran, essas bombas de aço atingem com rapidez e força, com um golpe vertiginoso."
descleftT[2]=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":DESTRUIR, FILMES\n"+string(_dislikesT)+":ERROS\n"+string(_hobbyT)+":TOCANDO MÚSICA"
descabsT[2]="Chute Robótico, Carregando"
	 

desc=descT[global.Language] 
  
 charinfo_set(12,spr_ladybot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,46,"O-POLIS",
desc)

   if dataPal=2 {enemy_switch("METR-A",0)
	   
descT[0]= "This model is more explosive, with “ballistics” they launch at will to blast intruders to ash."
descleftT[0]=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
descrightT[0]=string(_likesT)+":DESTROYING,BOOKS\n"+string(_dislikesT)+":ERRORS\n"+string(_hobbyT)+":BALL DANCING"
descabsT[0]="Robotic Kick, Ballistics"
	  
	descT[1]= "This model is more explosive, with “ballistics” they launch at will to blast intruders to ash."
descleftT[1]=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
descrightT[1]=string(_likesT)+":DESTRUIR, LIBROS\n"+string(_dislikesT)+":ERRORES\n"+string(_hobbyT)+":BAILE DE PELOTA"
descabsT[1]="Patada Robótica, Balística"

descT[2]="Este modelo é mais explosivo, com munição à vontade que eles atiram para reduzir intrusos a cinzas."
descleftT[2]=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
descrightT[2]=string(_likesT)+":DESTRUINDO, LIVROS\n"+string(_dislikesT)+":ERROS\n"+string(_hobbyT)+":DANÇA COM BOLA"
descabsT[2]="Chute Robótico, Balística"
      	   

desc=descT[global.Language] 

	  
	  }
}

desc=descT[global.Language] 
descleft=descleftT[global.Language]
descright=descrightT[global.Language]
dataabilities=descabsT[global.Language] 

unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0  image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}