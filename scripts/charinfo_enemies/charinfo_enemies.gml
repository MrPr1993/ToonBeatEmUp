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
descleft=string(_ageT)+":37\nNAT.:USA\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"

descrightT[0]=string(_likesT)+":CHICKENS,STEALING\n"+string(_dislikesT)+":DOGS\n"+string(_hobbyT)+":Biking"
dataabilitiesT[0]="Bruising,Kicking,Biking"
descT[0]="Just your run of the mill small fry burglar, but stay sharp! They come in groups!"

//descrightT[2]=string(_likesT)+":CHICKENS,STEALING\n"+string(_dislikesT)+":DOGS\n"+string(_hobbyT)+":Biking"
//dataabilitiesT[2]="Bruising,Kicking,Biking"
//descT[2]="Só um trombadinha qualquer, mas fique atento! Eles vêm em grupos!"


  charinfo_set(5,spr_burglar_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,1,"MR.BURG",
descT[global.Language])

descleft=descleftT[global.Language]
descright=descrightT[global.Language]
dataabilities=dataabilitiesT[global.Language]

if dataPal=2
{
descleft=string(_ageT)+":38\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"

descT[0]="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"
descT[2]="Parente de alto escalão do Burg. Não muito mais forte em comparação, mas tem um chute bem doído!"

enemy_switch("MR.LAR",0) 

desc=descT[global.Language]

descright=string(_likesT)+":FRIES,STEALING\n"+string(_dislikesT)+":CATS\n"+string(_hobbyT)+":RIDING"
dataabilities="Bruising,Kicking,Biking"
}
if dataPal=3
{
enemy_switch("MR.ROB",0)
descleft=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"

descT[0]="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"
descT[2]="O auge da Brigada Burg! Fique atento, ele pode atacar com uma voadora perigosa!"
desc=descT[global.Language]

descright=string(_likesT)+":ROLLS,STEALING\n"+string(_dislikesT)+":RATS\n"+string(_hobbyT)+":HIKING"
dataabilities="Bruising,Kicking,Biking"
}
charNO=1

break;
  case 2:
    hp=0.2 enemyID=5
	
descT[0]="ANOTHER BURGLAR, WHO'S ALSO ANOTHER DUMMY FODDER. BUT HE MAY SHOW UP WITH A WEAPON TO STRIKE YOU WITH! STILL A CHUMP."
descT[2]="OUTRO LADRÃO, OUTRO PALERMA. MAS ELE PODE APARECER ARMADO PARA TE ATACAR! PALERMA MESMO ASSIM."
	
   charinfo_set(6,spr_burglarB_stand,3,animsetup_burglar,draw_enemy,spr_enemypal,2,spr_enemyface,20,"MR.TEEF",
descT[global.Language])

descleft=string(_ageT)+":41\nNAT.:FRANCE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":110LBS"

descright=string(_likesT)+":MILK,STEALING\n"+string(_dislikesT)+":GOATS\n"+string(_hobbyT)+":BASEBALL"
dataabilities="Bruising,Kicking,Biking"

charNO=2

if dataPal=2
{
enemy_switch("MR.LAD",0)
descleft=string(_ageT)+":42\nNAT.:FRANCE\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":111LBS"

descT[0]="Burg’s higher ranked relative. Not much stronger by comparison, but they can still kick!"
descT[2]="Parente de alto escalão do Rob. Até que são fortinhos e sabem dar pontapés!"
desc=descT[global.Language]

descright=string(_likesT)+":WINE,STEALING\n"+string(_dislikesT)+":SODA\n"+string(_hobbyT)+":WINE TASTING"
dataabilities="Bruising,Kicking,Biking"

}
if dataPal=3
{
enemy_switch("MR.RON",0)
descleft=string(_ageT)+":43\nNAT.:FRANCE\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":112LBS"

descT[0]="The cream of the Mr. Burg crop! Keep an eye out, as they’ve got a mean jump kick!"
descT[2]="O mais cascudo de todos! Tão mal-humorados como os capangas de casta baixa."
desc=descT[global.Language]

descright=string(_likesT)+":GAMBLING,STEALING\n"+string(_dislikesT)+":LOW PAY\n"+string(_hobbyT)+":ROULETTES"
dataabilities="Bruising,Kicking,Biking"
}


break;
 case 3:
   hp=0.4 enemyID=10
   
 descT[0]="This jerk slides around to try and trip you up! Some even have tommy guns!"
descT[2]="Esse otário te dá um carrinho para te derrubar! Alguns até têm metralhadoras!"
desc=descT[global.Language]
   
   charinfo_set(7,spr_sneak_stand,5,animsetup_burglar,draw_enemy,spr_sneakpal,0,spr_enemyface,6,"MR.SNEAK",
descT[global.Language])

descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

charNO=3

descright=string(_likesT)+":CHEESE,BIRDS\n"+string(_dislikesT)+":RATS\n"+string(_hobbyT)+":PHOTOGRAPHY"
dataabilities="Sneaking,Sliding,Scent"

if dataPal=2
{
enemy_switch("MR.SLIP",0)

descleft=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

 descT[0]="These crazy turncoats run around with bombs in their pockets!…How do they hide them?"
descT[2]="Esses vira-casacas sem noção correm por aí com bombas nos bolsos!… Como eles as escondem?"
desc=descT[global.Language]

descright=string(_likesT)+":SPICES,MICE\n"+string(_dislikesT)+":COLD FOOD\n"+string(_hobbyT)+":EXPLOSIVES"
dataabilities="Sneaking,Sliding,\nBombing"
}
if dataPal=3
{
enemy_switch("MR.SLINK",0)
descleft=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

descT[0]="Lanky though they may be, they’ll grab and throw you around if you’re not careful!"
descT[2]="Mesmo magros, eles podem te agarrar e te derrubar se você não tomar cuidado!"
desc=descT[global.Language]

descright=string(_likesT)+":SNAKES,EGGS\n"+string(_dislikesT)+":JOCKS\n"+string(_hobbyT)+":DISK THROWING"
dataabilities="Sneaking,Sliding,\nThrowing"

}
if dataPal=4
{
enemy_switch("MR.SIDLE",0)
descleft=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

descT[0]="With a nasty spring in their step, they’ll leap into the air to kick you in the face!"
descT[2]="Com um incomodo salto, eles irão pular no ar e aterrissar no seu rosto com um chute!"
desc=descT[global.Language]

descright=string(_likesT)+":MONKEYS,ORANGES\n"+string(_dislikesT)+":LATENESS\n"+string(_hobbyT)+":BOWLING"
dataabilities="Sneaking,Sliding,\nKicking"

}
if dataPal=5
{
enemy_switch("MR.PROWL",0)
descleft=string(_ageT)+":40\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":120LBS"

descT[0]="Sliding, bombing, grappling and kicking are all things this creep’s got up his sleeves!"
descT[2]="Deslizar, bombardear, agarrar e chutar são as cartas que esse cretino tem na manga!"
desc=descT[global.Language]

descright=string(_likesT)+":BANANAS,CRYSTALS\n"+string(_dislikesT)+":LOW RANKS\n"+string(_hobbyT)+":CHESS"
dataabilities="Sneaking,Sliding,\nSpy"

}
break;
  case 4:
   charinfo_set(8,spr_femburglar_stand,2,animsetup_femburglar,draw_enemy,spr_enemypal,2,spr_enemyface,2,"MS.CHILL",
   "")
     hp=0.2 enemyID=15
if dataPal=1
{
descleft=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"

name="MS.CHILL" current_pal=2

descT[0]="Usually coming in pairs, they’ll pester you with their deadly legs and can block your attacks!"
descT[2]="Geralmente vêm em pares, elas irão te pertubar com suas pernas mortais e podem bloquear seus ataques!"
desc=descT[global.Language]
descright=string(_likesT)+":SPICE,APPLES\n"+string(_dislikesT)+":CORN\n"+string(_hobbyT)+":GYMNASTICS"
dataabilities="Acrobatics,Kicking"
}
if dataPal=2
{enemyID=16
descleft=string(_ageT)+":30\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":100LBS"
	
name="MS.SPICE" current_pal=4

descT[0]="This lady gets a leg up on her chill counterpart with a dastardly spinning kick!"
descT[2]="Esta dama leva vantagem sobre sua calma contraparte com um chute giratório covarde!"
desc=descT[global.Language]

descright=string(_likesT)+":CHILL,APPLES\n"+string(_dislikesT)+":CORN\n"+string(_hobbyT)+":GYMNASTICS"
dataabilities="Acrobatics,Kicking"
}
charNO=4
break;
  case 5:
   charinfo_set(9,spr_robot_stand,3,animsetup_robot,draw_robot,spr_robotpal,2,spr_enemyface,4,"MR.BOLTS",
   "")
     hp=1
descleft=string(_heightT)+":7'6"+" "+string(_weightT)+":1000LBS"		
 if dataPal=1
{current_pal=0
	robotArmRsprite=spr_robot_arm
	name="MR.BOLTS"

descT[0]="This fancy robot comes equipped with a shocking laser and strong, but detachable arms."
descT[2]="Este robô sofisticado vem equipado com um laser chocante e fortes, mas destraváveis braços"
desc=descT[global.Language]

	 charNO=5 enemyID=17

descright=string(_likesT)+":SERVING,BREAKING\n"+string(_dislikesT)+":RUST\n"+string(_hobbyT)+":BARTENDING"
dataabilities="Electricity,Bruising,\nBrewing"

}
if dataPal=2
{current_pal=2
	robotArmRsprite=spr_robot_flame
	name="MR.HEAT"

descT[0]="This temperamental bot has a flamethrower on one arm, don’t get burned to ashes!"
descT[2]="Este robô temperamental tem um lança-chamas em um dos braços, não seja queimado até os ossos!"
desc=descT[global.Language]

enemyID=18


descright=string(_likesT)+":SERVING,BURNING\n"+string(_dislikesT)+":WATER\n"+string(_hobbyT)+":CHEF"
dataabilities="Fire,Bruising,Cooking"

}
if dataPal=3
{current_pal=1
	name="MR.COLD"
	robotArmRsprite=spr_robot_freezer

descT[0]="A cold machine with an even colder ice gun that’ll send more than a chill down your spine! Brrrr…"
descT[2]="Uma máquina fria com uma arma de gelo ainda mais fria que vai causar mais do que um arrepio na espinha! Brrrr..."
desc=descT[global.Language]

enemyID=19

descright=string(_likesT)+":SERVING,FREEZING\n"+string(_dislikesT)+":HEAT\n"+string(_hobbyT)+":RESERVING"
dataabilities="Cold,Bruising,Freezing"
}  
   
break;
  case 6:
  weapon_add("HAMMER") enemyID=20
  
descT[0]="This giggly ditz will swing any nearby weapon at you, but disarm her and she’ll crumple like paper!"
descT[2]="Essa abobada risonha vai balançar qualquer arma próxima em você, mas é uma moleca de vidro quando desarmada!"
desc=descT[global.Language]
  
   charinfo_set(10,spr_swing_stand,4,animsetup_swing,draw_swing,spr_swingpal,2,spr_enemyface,7,"MS.SWING",
   descT[global.Language])
  
 descleft=string(_ageT)+":21\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":110LBS"
  
 descright=string(_likesT)+":SMASHING,SMOKING\n"+string(_dislikesT)+":MILK\n"+string(_hobbyT)+":BASEBALL"
dataabilities="Swinging,Dancing"
 
if dataPal=2 {weapon_add("KNIFE") enemy_switch("MS.BRAN",0)
 descleft=string(_ageT)+":20\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":108LBS"

descT[0]="A devious woman who knows many tricks with her knives, namely piercing her foes from afar!"
descT[2]="Uma mulher astuta que conhece muitos truques com suas facas, principalmente perfurar seus inimigos à distância!"
desc=descT[global.Language]
	
	 descright=string(_likesT)+":CUTTING,PIGS\n"+string(_dislikesT)+":MEAT\n"+string(_hobbyT)+":WOOD CARVING"
dataabilities="Slicing,Knife Throwing"
	
	}
	
if dataPal=3 {weapon_add("DYNAMITE") enemy_switch("MS.BOOM",0)
 descleft=string(_ageT)+":28\nNAT.:USA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":112LBS"
 
 descT[0]="DANGER! This lady throws dynamite around like it’s candy! Don’t get caught in the blast!"
descT[2]="PERIGO! Essa dama joga dinamite como se fosse doce! Não seja pego pela explosão!"
desc=descT[global.Language]
 
 descright=string(_likesT)+":EXPLODING,VULTURES\n"+string(_dislikesT)+":QUIET\n"+string(_hobbyT)+":CHECKERS"
dataabilities="EXPLOSIVES,Swinging"
}

if dataPal=4 {weapon_add("WHIP") enemy_switch("MS.DOMI",0)
 descleft=string(_ageT)+":27\nNAT.:RUSSIA\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS"

 descT[0]="This sadist will crack her whip at you, laughing with every lash you get."
descT[2]="Essa sádica vai chicotear você, rindo a cada golpe que você receber."
desc=descT[global.Language]
	
 descright=string(_likesT)+":WHIPPING,SPICES\n"+string(_dislikesT)+"CATS:\n"+string(_hobbyT)+":TAMING"
dataabilities="Whips,Riding"
	
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
descT[2]="Não confunda o tamanho dele com fraqueza! Uma ombrada ou uma bundada bem dada vão te derrubar!"
desc=descT[global.Language]
  
 charinfo_set(11,spr_fatburglar_stand,3,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,3,"MR.LARGE",
 desc
)
 descleft=string(_ageT)+":41\nNAT.:RUSSIA\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":500LBS"
 
 descright=string(_likesT)+":BURGERS,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":BOWLING"
dataabilities="Crushing,Charging"
 
if dataPal=2
{
enemy_switch("MR.WIDE",0)
 descleft=string(_ageT)+":39\nNAT.:RUSSIA\n"+string(_heightT)+":6'1"+" "+string(_weightT)+":480LBS"
 
    descT[0]="This big lug hasn’t worked out as much as his peers, but he can still hurt so watch out!"
descT[2]="Esse grandalhão não treinou tanto quanto seus colegas, mas ainda assim pode machucar, então fique atento!"
desc=descT[global.Language]

 descright=string(_likesT)+":HAM,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":FOOTBALL"
dataabilities="Crushing,Charging"

}
if dataPal=3
{
enemy_switch("MR.HUGE",0)
 descleft=string(_ageT)+":45\nNAT.:RUSSIA\n"+string(_heightT)+":6'3"+" "+string(_weightT)+":550LBS"
 
descT[0]="Most of his “fat” is actually muscle waiting to flex! His charge is faster, too!"
descT[2]="A maioria da sua gordura são na verdade músculos esperando para ser flexionado! Sua investida também é mais rápida!"
desc=descT[global.Language] 

 descright=string(_likesT)+":SANDWICHES,BEARS\n"+string(_dislikesT)+":MICE\n"+string(_hobbyT)+":FILM WATCHING"
dataabilities="Crushing,Charging"

}

break;
  case 8:  enemyID=28 hp=0.8
  
descT[0]= "Quick on her twig legs, her charged punches, uppercuts and combos will have you reeling!"
descT[2]= "Rápida com suas delicadas pernas, seus socos, ganchos e combos irão te nocautear!"
desc=descT[global.Language] 
  
 charinfo_set(13,spr_boxer_stand,2,animsetup_enemy,draw_enemy,spr_boxerpal,2,spr_enemyface,8,"MS.PUNCH",
desc)
 
  descleft=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":320LBS"
 
  descright=string(_likesT)+":KNOCKOUTS,BEEF\n"+string(_dislikesT)+":FLYING THINGS\n"+string(_hobbyT)+":FASHION"
dataabilities="Boxing,Charging"
 
if dataPal=2
{
enemy_switch("MS.JAB",0)
descleft=string(_ageT)+":38\nNAT.:GERMANY\n"+string(_heightT)+":8'1"+" "+string(_weightT)+":300LBS"

descT[0]= "Quick on her twig legs, her charged punches, uppercuts and combos will have you reeling!"
descT[2]= "Essas pugilistas ainda estão em processo de treinamento, evoluindo graças a seus mentores de boxe."
desc=descT[global.Language] 

 descright=string(_likesT)+":KNOCKOUTS,HAM\n"+string(_dislikesT)+":CROWS\n"+string(_hobbyT)+":BAR HOPPING"
dataabilities="Crushing,Charging"
}
break;
  case 9: hp=0.8
  idlestyle=1  enemyID=30 
  
descT[0]= "Don’t underestimate these round crooks, they’ll grab, slam and roll you into a floor stain!"
descT[2]= "Não subestime essas bandidas balofas, elas irão te agarrar, derrubar e te fazer de tapete!"
desc=descT[global.Language] 
  
 charinfo_set(14,spr_wrestler_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,19,"MS.SLAMS",
desc)

descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 

 descright=string(_likesT)+":DOMINATING,TEA\n"+string(_dislikesT)+":TOMATOES\n"+string(_hobbyT)+":PIE BAKING"
dataabilities="Wrestling,Rolling"

if dataPal=2
{
enemy_switch("MS.CRUSH",0)
descleft=string(_ageT)+":33\nNAT.:USA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":500LBS" 

descT[0]= "These girls are surprisingly more athletic, and can pancake you with a flying belly flop!"
descT[2]= "Essas garotas são surpreendentemente atléticas e podem te sanduichar com uma barrigada voadora!"
desc=descT[global.Language] 

 descright=string(_likesT)+":CRUSHING,CARAMEL\n"+string(_dislikesT)+":GRAPES\n"+string(_hobbyT)+":CUPCAKE BAKING"
dataabilities="Wrestling,Bellyflop"

}
break;
  case 10:  enemyID=32 hp=1
 idlestyle=1
 
 descT[0]="A former lumberjack with gains, deadly bearhugs and whirling punches to show it!"
descT[2]= "Um ex-lenhador com doces, abraços mortais e socos giratórios para provar isso!"
desc=descT[global.Language] 
 
 charinfo_set(15,spr_strongburg_stand,2,animsetup_enemy,draw_enemy,spr_enemypal,2,spr_enemyface,37,"MR.CHIP",
desc)
descleft=string(_ageT)+":38\nNAT.:CANADA\n"+string(_heightT)+":8'3"+" "+string(_weightT)+":400LBS" 

 descright=string(_likesT)+":TREES,MOOSES\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HOUSE BUILDING"
dataabilities="Wrestling,Crushing"

if dataPal=2
{
enemy_switch("MR.DALE",0)

descT[0]="A former lumberjack with gains, deadly bearhugs and whirling punches to show it!"
descT[2]= "Este brutamonte vai saltar e dar uma voadora antes de te dar um abraço esmagador!"
desc=descT[global.Language] 

desc="This massive man will jump and kick you back before coming in for a crushing hug!"
descleft=string(_ageT)+":37\nNAT.:CANADA\n"+string(_heightT)+":8'2"+" "+string(_weightT)+":380LBS" 

 descright=string(_likesT)+":TREES,MOOSES\n"+string(_dislikesT)+":RUSHING\n"+string(_hobbyT)+":WOOD CUTTING"
dataabilities="Wrestling,Kicking"
}
break;
  case 11: hp=0.35
 idlestyle=1  enemyID=34 
 
 descT[0]="A well trained martial artist who closes the distance with a thick hip check before unleashing her aura on you!"
descT[2]= "Uma artista marcial bem treinada que encurta a distância com uma forte bundada antes de libertar a sua aura em você!"
desc=descT[global.Language] 
 
 charinfo_set(16,spr_monk_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,2,spr_enemyface,44,"MS.KI",
desc)
descleft=string(_ageT)+":28\nNAT.:CHINA\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":100LBS" 

 descright=string(_likesT)+":BROCCOLI,FISH\n"+string(_dislikesT)+":PANTS\n"+string(_hobbyT)+":FITNESS"
dataabilities="Martial Arts,Knitting"

if dataPal=2
{
enemy_switch("MS.CHI",0)

 descT[0]="This girl channels her ki into her punches, assaulting you with a flurry of fists!"
descT[2]= "Essa garota canaliza seu ki em seus socos, atacando você com um sobrecarga de socos!"
desc=descT[global.Language] 

descleft=string(_ageT)+":29\nNAT.:CHINA\n"+string(_heightT)+":5'6"+" "+string(_weightT)+":110LBS" 

 descright=string(_likesT)+":SOUP,BUTTERFLIES\n"+string(_dislikesT)+":SKIRTS\n"+string(_hobbyT)+":EXERCISE"
dataabilities="Martial Arts,Rapid Fists"

}
if dataPal=3
{
enemy_switch("MS.MANA",0)

 descT[0]="A natural ki master, she has both Ki and Chi’s techniques down and then some!"
descT[2]= "Uma mestra natural do ki, ela domina as técnicas da Ki, da Chi e muito mais!"
desc=descT[global.Language] 

descleft=string(_ageT)+":32\nNAT.:CHINA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS" 

 descright=string(_likesT)+":NOVELS,TIGERS\n"+string(_dislikesT)+":DRESSES\n"+string(_hobbyT)+":MEDITATION"
dataabilities="Martial Arts,Rapid Fists"

}

break;
  case 12: hp=0.3
 idlestyle=3 enemyID=37
 
 descT[0]="They take to the skies with style, mercilessly tackling their prey."
descT[2]= "Eles voam pelos céus com estilo, atacando suas presas sem piedade."
desc=descT[global.Language] 
 
 charinfo_set(16,spr_harpye_stand,2,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,61,"WINGY",
desc)
descleft=string(_ageT)+":21\nNAT.:GREECE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":100LBS" 

 descright=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":INTERRUPTIONS\n"+string(_hobbyT)+":EXPLORING"
dataabilities="Flying,Charging"

if dataPal=2
{
enemy_switch("ICARA",0)

 descT[0]="Protect your ears! These songbirds have a special song to lull you to instant sleep!"
descT[2]= "Proteja seus ouvidos! Essas aves cantoras têm uma canção especial para prender você em um sono instantâneo!"
desc=descT[global.Language] 

descleft=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":105LBS" 

 descright=string(_likesT)+":FISH,MUSIC\n"+string(_dislikesT)+":DISRUPTIONS\n"+string(_hobbyT)+":MUSICIAN"
dataabilities="Flying,Charging"

}
break;

  case 13: ////Cowboy
 hp=0.3 enemyID=130 idlestyle=1
 
  descT[0]="A western gunman who's more of a vigilante than an outlaw. Watch out for the big iron on his hip!"
descT[2]= "Um pistoleiro do oeste que é mais um justiceiro do que fora-da-lei. Cuidado com o ferro quente no cinto dele!"
desc=descT[global.Language]
 
 charinfo_set(12,spr_cowboy_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,64,"BILL",
desc)
descleft=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":105LBS" 

 descright=string(_likesT)+":HORSES,BACON\n"+string(_dislikesT)+":BANDITS\n"+string(_hobbyT)+":CAN SHOOTING"
dataabilities="Shooting, Horse Riding"

if dataPal=2
{
enemy_switch("BUCK",0)

  descT[0]="This gunner's a bit more trigger happy than his colleague. Don't get filled with holes!"
descT[2]= "Este atirador é um pouco mais rápido no gatilho do que seu colega. Evite virar uma peneira!"
desc=descT[global.Language]

descleft=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":4'6"+" "+string(_weightT)+":107LBS" 

 descright=string(_likesT)+":HORSES,STEAK\n"+string(_dislikesT)+":OUTLAWS\n"+string(_hobbyT)+":PIANO PLAYING"
dataabilities="Shooting, Horse Riding, Piano"
}
if dataPal=3
enemy_switch("PESO",0) ///Unused

break;

  case 14:
  hp=0.25 enemyID=39
  
   descT[0]= "A clumsy zombie who rushes his foes, but is prone to tripping and accidentally tackling them."
descT[2]= "Um zumbi desajeitado que corre atrás de seus inimigos, mas tende a tropeçar e atacar acidentalmente."
desc=descT[global.Language]
  
 charinfo_set(17,spr_zombiem_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,13,"ZOMBILLY",
desc)
descleft=string(_ageT)+":DEAD\nNAT.:BRITAIN\n"+string(_heightT)+":5'12"+" "+string(_weightT)+":85LBS"  

 descright=string(_likesT)+":PAINTINGS,DECOR\n"+string(_dislikesT)+":STIFFNESS\n"+string(_hobbyT)+":BALL DANCING"
dataabilities="Charging,Tripping"

if dataPal=2
{
enemy_switch("ZOMBOBBY",0)

   descT[0]= "This cadaver’s got more sure footing, and will grab you for a nasty bite!"
descT[2]= "Este cadáver tem passos firmes e vai agarrar você para dar uma mordida nada gostosa!"
desc=descT[global.Language]

descleft=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":5'13"+" "+string(_weightT)+":87LBS" 

 descright=string(_likesT)+":PAINTINGS,WINE\n"+string(_dislikesT)+":BAD BREATH\n"+string(_hobbyT)+":VIOLIN PLAYING"
dataabilities="Charging,Biting"
}
if dataPal=3
{
enemy_switch("MORTI",0)

   descT[0]= "This bog shambler is a lot more bitey compared to his cousins. Surprisingly cleaner, though."
descT[2]= "Esse monstro do pântano é muito mais agressivo que seus primos. Surpreendentemente mais limpo, quem diria."
desc=descT[global.Language]

descleft=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":83LBS" 

 descright=string(_likesT)+":NATURE,MUSHROOMS\n"+string(_dislikesT)+":ROT\n"+string(_hobbyT)+":BANJO PLAYING"
dataabilities="Charging,Biting"
}

break;
  case 15:
    hp=0.25 enemyID=42
	
   descT[0]=  "She calls herself a beauty, despite a missing jaw. Those who are rude will be the subject of her acidic spits!"
descT[2]= "Ela se considera uma beldade, apesar da mandíbula faltando. Aqueles que forem rudes serão alvo de seus cuspes ácidos!"
desc=descT[global.Language]
	
 charinfo_set(12,spr_zombiew_stand,3,animsetup_zombie,draw_enemy,spr_zombiepal,0,spr_enemyface,14,"ZOMBETTY",
desc)
descleft=string(_ageT)+":DEAD\nNAT.:FRANCE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":83LBS" 

 descright=string(_likesT)+":MAKEUP,BRUSHES\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HAIR GROOMING"
dataabilities="Acid Spit"

if dataPal=2
{
enemy_switch("ZOMBELLE",0)

   descT[0]= "This undead primadonna takes pride in her nails… Because they’re sharp as blades."
descT[2]= "Essa primadonna zumbificada se orgulha de suas unhas... Por serem afiadas como lâminas."
desc=descT[global.Language]

descleft=string(_ageT)+":DEAD\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 

 descright=string(_likesT)+":PLAYS,PAINTINGS\n"+string(_dislikesT)+":NAIL BREAKING\n"+string(_hobbyT)+":NAIL CARE"
dataabilities="Sharp Nails"
}
if dataPal=3
{
enemy_switch("RIGORA",0)

   descT[0]= "Acid spit and sharp claws are the telltale sign for this jawless shambler! Is she just lonely?"
descT[2]= "Cuspes ácidos e garras afiadas são as boas-vindas desta andarilha sem mandíbula! Será que ela está apenas solitária?"
desc=descT[global.Language]

descleft=string(_ageT)+":DEAD\nNAT.:CAJUN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":82LBS" 

 descright=string(_likesT)+":NATURE,LETTUCE\n"+string(_dislikesT)+":WORMS\n"+string(_hobbyT)+":HARVESTING"
dataabilities="Acid Spit, Sharp Nails"

}

break;
  case 16:
  hp=0.25 enemyID=45  idlestyle=1
   if dataPal=1
{current_pal=0

descT[0]= "Skeletal former ballerinas with the kicks to prove it. They’re quite sassy, too!"
descT[2]= "Ex-bailarinas esqueléticas que se provam aos chutes. Elas também são bastante atrevidas!"
desc=descT[global.Language]
	
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,21,"SKELLA", 
desc)
 descleft=string(_ageT)+":DEAD\nNAT.:FRENCH\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":22LBS" 
 
  descright=string(_likesT)+":THEATER,ACTS\n"+string(_dislikesT)+":DISRUPTORS\n"+string(_hobbyT)+":BALLET"
dataabilities="Ballerina, Kicking"
 
 }
    if dataPal=2
{current_pal=1 enemyID=46 hp=0.3
	
descT[0]=  "Once jolly jugglers, now bony bombardiers who can chuck pieces of themselves at you!"
descT[2]= "Outrora malabaristas alegres, agora são bombardeiros ossudos que podem jogar pedaços de si mesmos em você!"
desc=descT[global.Language]
	
 charinfo_set(12,spr_skeleton_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,1,spr_enemyface,21,"SKELIE", 
desc)
  descleft=string(_ageT)+":DEAD\nNAT.:FRENCH\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":26LBS" 
 
   descright=string(_likesT)+":THEATER,ROYALTY\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":JUGGLING"
dataabilities="Juggling, Bone Throwing"
 
 } 
break;

  case 17: ////Knight
 hp=1.0 enemyID=133 idlestyle=1
 
 descT[0]=  "Once respected knights, but now chivalry is dead to these fellows! And by their sword, you may be too!"
descT[2]= "Antes cavaleiros respeitados, agora a cavalheirismo tá morto pra esses caras! E pela espada deles, você também pode ser!"
desc=descT[global.Language]
 
 charinfo_set(12,spr_knight_stand,2,animsetup_enemy,draw_swing,spr_robotpal,0,spr_enemyface,65,"GARETH",
desc)
   descleft=string(_ageT)+":32\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 
 
  descright=string(_likesT)+":TALES,LIONS\n"+string(_dislikesT)+":SCOUNDRELS\n"+string(_hobbyT)+":JOUSTING"
dataabilities="Sword Fighting"
 
if dataPal=2
{
enemy_switch("DANIEL",0)

 descT[0]=  "Skilled with blunt weaponry, they'll bonk you good! Apparently has bad history with arrows."
descT[2]= "Habilidosos com armas contundentes, vão te dar uma boa pancada! Aparentemente, têm um histórico ruim com flechas."
desc=descT[global.Language]

   descleft=string(_ageT)+":33\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":170LBS" 

  descright=string(_likesT)+":STORIES,STATUES\n"+string(_dislikesT)+":POINTY THINGS\n"+string(_hobbyT)+":BOOK WRITING"
dataabilities="Club Swinging"

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
descT[2]= "Este machado amaldiçoado pertence a um carrasco fantasmagórico. Cuidado, pois ele ainda deseja cortar cabeças!"
desc=descT[global.Language]
  
 charinfo_set(12,mask_none,1,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_miscface,0,"AXE",
desc)

   descleft="NAT.:BRITAIN\n"+string(_heightT)+":4'5"+" "+string(_weightT)+":6LBS" 

  descright=string(_likesT)+":CUTTING\n"+string(_dislikesT)+":DULLING\n"+string(_hobbyT)+":HEDGE CUTTING"
dataabilities="Axe Possession"

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
descT[2]= "Esta pintura abriga o espírito de um renomado autor, eternamente irritado com uma história inacabada."
desc=descT[global.Language]
  
  paintingSpr=spr_painting1 frameSpr=spr_painting_base
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ALBUS",
desc)
descleft=string(_ageT)+":DEAD\nNAT.:ITALY\n" 

  descright=string(_likesT)+":HORROR,NOVELS\n"+string(_dislikesT)+":NEW MEDIA\n"+string(_hobbyT)+":FILM MAKING"
dataabilities="Possession,Film Making"

    if dataPal=2
	{paintingSpr=spr_painting2 enemyID=49
		
 descT[0]= "A high class socialite haunts this painting, hoping to make spirits of the living join her."
descT[2]= "Uma socialite de alta classe assombra esta pintura, na esperança de fazer com que os espíritos dos vivos se juntem a ela."
desc=descT[global.Language]
		
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANNIE",
desc)	
descleft=string(_ageT)+":DEAD\nNAT.:BRITAIN\n" 

  descright=string(_likesT)+":FANCINESS,BALLS\n"+string(_dislikesT)+":LOUD COLORS\n"+string(_hobbyT)+":COSTUME MAKING"
dataabilities="Possession,Dress Making"

}
	    if dataPal=3
		{paintingSpr=spr_painting3 enemyID=50
			
 descT[0]= "The ghost of a renaissance man commands this portrait, unable to let go of a past war."
descT[2]= "O fantasma de um homem renascentista domina este retrato, incapaz de esquecer uma guerra passada."
desc=descT[global.Language]
			
 charinfo_set(12,spr_painting_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"FREDERICK",
desc)
descleft=string(_ageT)+":DEAD\nNAT.:GERMANY\n" 

  descright=string(_likesT)+":WARS,EXPLOSIONS\n"+string(_dislikesT)+":WAR REMINDER\n"+string(_hobbyT)+":WEAPON COLLECTING"
dataabilities="Possession,Marksman"

}

///Hieroglyphs
if dataPal>=4 
{
descleft="NAT.:EGYPT" 

descright=""
dataabilities=""
}
		if dataPal=4
		{
descT[0]= "A living hieroglyph of an eye of Horus. It's gaze is harsh, judgemental and utterly soul-piercing."
descT[2]= "Um hieróglifo vivo do olho de Hórus. Seu olhar é severo, julgador e penetra até a alma."
desc=descT[global.Language]
			
paintingSpr=spr_heye enemyID=125 frameSpr=spr_hieroglyph_base
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"HORUS",
desc)
}
	    if dataPal=5
		{paintingSpr=spr_heys enemyID=126 frameSpr=spr_hieroglyph_base 
descT[0]= "A living hieroglyph of a scarab. A single one of them carries the fury of an entire swarm."
descT[2]= "Um hieróglifo vivo de um escaravelho. Um único deles carrega a fúria de um enxame inteiro."
desc=descT[global.Language]
			
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"SCARAB",
desc)}
	    if dataPal=6 
		{paintingSpr=spr_heyankh enemyID=127 frameSpr=spr_hieroglyph_base
			
 descT[0]="A living hieroglyph of an ankh. Normally a symbol of life, but this one will try to bring you death."
descT[2]= "Um hieróglifo vivo de um ankh. Normalmente um símbolo de vida, mas este tentará trazer a morte."
desc=descT[global.Language]
			
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANKH",
desc)}
	    if dataPal=7
		{paintingSpr=spr_heya enemyID=128 frameSpr=spr_hieroglyph_base
			
 descT[0]="A living hieroglyph of Anubis. Thinks it's the real deal and angrily strikes those who deny it."
descT[2]= "Um hieróglifo vivo de Anubis. Acha que é o verdadeiro e ataca com raiva aqueles que o negam."
desc=descT[global.Language]			
			
 charinfo_set(12,spr_hieroglyph_base,7,animsetup_enemy,painting_draw,spr_zombiepal,0,spr_miscface,0,"ANUBIS",
desc)}

break;


  case 20:
  hp=0.2 enemyID=51
  
 descT[0]="A cranky old cat whose claws haven’t dulled with time. Don’t become his new scratching post!"
descT[2]= "Um gato velho e rabugento cujas garras não se segaram com o tempo. Não se torne seu novo poste arranhador!"
desc=descT[global.Language]		
  
 charinfo_set(12,spr_catman_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,12,"MAU",
desc)

descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":3'10"+" "+string(_weightT)+":80LBS" 

descright=string(_likesT)+":STRING,MICE\n"+string(_dislikesT)+":ROBBERS\n"+string(_hobbyT)+":HARP PLAYING"
dataabilities="Cat Powers, Scratching"

if dataPal=2
{
enemy_switch("BASTET",0)

 descT[0]="Not as cranky as Mau, but more devious as she can turn you into her yarn with her wraps!"
descT[2]= "Não é tão rabugenta quanto Mau, mas é mais traiçoeira, pois ela pode te enrolar com seu novelo de linho!"
desc=descT[global.Language]	

descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":3'9"+" "+string(_weightT)+":78LBS" 

descright=string(_likesT)+":WRAPS,MICE\n"+string(_dislikesT)+":RAIDERS\n"+string(_hobbyT)+":YARN WRAPPING"
dataabilities="Cat Powers, Scratching, Wrapping"
}

break;
  case 21:
  idlestyle= hp=0.5 enemyID=53 idlestyle=1
  
  descT[0]="A snake lady with snake arms that can stretch long distances to take a bite out of you!"
descT[2]= "Uma mulher cobra com braços de cobra que podem se esticar por longas distâncias para dar uma mordida em você!"
desc=descT[global.Language]	
  
 charinfo_set(12,spr_cobra_stand,2,animsetup_enemy,draw_enemy,spr_mummypal,0,spr_enemyface,24,"ASPA",
desc)
descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'2"+" "+string(_weightT)+":160LBS" 

descright=string(_likesT)+":MUSIC,ARTS\n"+string(_dislikesT)+":ROBBERS\n"+string(_hobbyT)+":FLUTE PLAYING"
dataabilities="Snake Hands, Kicking"

if dataPal=2
{
enemy_switch("VIPERA",0)

  descT[0]="This snake’s arms spew poisonous, paralyzing gas! Hold your breath!"
descT[2]= "Os braços dessa víbora expelem um gás venenoso e paralisante! Prenda a respiração!"
desc=descT[global.Language]	

descleft=string(_ageT)+":ANCIENT\nNAT.:EGYPT\n"+string(_heightT)+":7'3"+" "+string(_weightT)+":170LBS" 

descright=string(_likesT)+":MUSIC,SCENERY\n"+string(_dislikesT)+":RAIDERS\n"+string(_hobbyT)+":SMOKE TRICKS"
dataabilities="Snake Hands, Poison, Kicking"
}
break;
  case 22: enemyID=55
  hp=0.3
  
    descT[0]="Simultaneously disciplined ninjas and casino bunny girls. Watch for their card tricks!"
descT[2]= "Ninjas disciplinadas e coelhinhas de cassino ao mesmo tempo. Cuidado com seus truques de cartas!"
desc=descT[global.Language]
  
 charinfo_set(12,spr_ninjabun_stand,3,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,15,"USAGI",
desc)
descleft=string(_ageT)+":27\nNAT.:JAPAN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":150LBS" 

descright=string(_likesT)+":GOOD PAY,CARROTS\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":CARD PLAYING"
dataabilities="Ninjutsu,Gambling"

if dataPal=2
enemy_switch("NOUSAGI",0)
{
    descT[0]="These bunnies carry lucky fuzzy dice bolas, but you’ll feel unlucky when they catch you!"
descT[2]= "Essas coelhinhas carregam dados felpudos da sorte, mas você vai se sentir azarado quando elas te pegarem."
desc=descT[global.Language]
	
descleft=string(_ageT)+":22\nNAT.:JAPAN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":140LBS" 

descright=string(_likesT)+":GOOD TIPS,CARROTS\n"+string(_dislikesT)+":CHEAPSTAKES\n"+string(_hobbyT)+":DICE PLAYING"
dataabilities="Ninjutsu,Gambling"
}
if dataPal=3
{
enemy_switch("KONI",0)

 descT[0]="The bouncers of the casino, they’ll grab their targets for a devastating ninja suplex!"
descT[2]= "As guardas do cassino, eles agarram seus alvos para um suplex ninja devastador!"
desc=descT[global.Language]
descleft=string(_ageT)+":30\nNAT.:JAPAN\n"+string(_heightT)+":5'9"+" "+string(_weightT)+":130LBS" 

descright=string(_likesT)+":PROMOTIONS,CARROTS\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":BARTENDING"
dataabilities="Ninjutsu,Gambling,\nBrewing"

}
break;
  case 23:
  hp=0.4 enemyID=58 idlestyle=1
  
   descT[0]="Domino themed samurai with a swift guard and an even swifter charging slice!"
descT[2]= "Samurai com temática de dominó com uma defesa veloz e ataque mais veloz ainda!"
desc=descT[global.Language]
  
 charinfo_set(12,spr_samurai_stand,2,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,16,"SAKE",
desc)
descleft=string(_ageT)+":32\nNAT.:JAPAN\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":140LBS"

descright=string(_likesT)+":GOOD DRINKS,MEAT\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":MEDITATING"
dataabilities="Katana,Gambling"

if dataPal=2
{
enemy_switch("MUGI",0)

   descT[0]="These samurai are still in training, but they can still knock you down like a row of dominos!"
descT[2]= "Essas samurais ainda então em treinamento, mas elas ainda são capazes de te derrubar como uma fila de dominós!"
desc=descT[global.Language]

descleft=string(_ageT)+":25\nNAT.:JAPAN\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":130LBS" 

descright=string(_likesT)+":NICE DRINKS,MEAT\n"+string(_dislikesT)+":CHEATS\n"+string(_hobbyT)+":PRACTICING"
dataabilities="Katana,Gambling"
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
descT[2]= "Travessas marionetes palhaças que fazem bons shows para a plateia enquanto chutam os inimigos."
desc=descT[global.Language]
  
 charinfo_set(12,spr_clown_stand,3,animsetup_enemy,draw_swing_2,spr_bearpal,0,spr_enemyface,38,"ANETTE",
desc)
descleft=string(_ageT)+":20\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 

descright=string(_likesT)+":GOOFING,PIES\n"+string(_dislikesT)+":FROWNS\n"+string(_hobbyT)+":Entertaining"
dataabilities="Puppetry,Juggling"

 if dataPal=2
 {
	enemy_switch("MARI",0)
	
 descT[0]="These mischievous marionettes love carousels so much they even spin like one at times!"
descT[2]= "Essas marionetes travessas amam tanto carrosséis que às vezes até giram como um!"
desc=descT[global.Language]

descleft=string(_ageT)+":22\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 

descright=string(_likesT)+":CAROUSELS,Candy\n"+string(_dislikesT)+":GRUMPS\n"+string(_hobbyT)+":Parading"
dataabilities="Puppetry,Juggling"

 }
  if dataPal=3
 {
	enemy_switch("POPPI",0)
	
 descT[0]="Talented jugglers, they can also toss their sticks at you and still have more at the ready."
descT[2]= "Malabaristas talentosas, elas também podem jogar seus bastões em você e ainda ter mais à disposição."
desc=descT[global.Language]

descleft=string(_ageT)+":25\nNAT.:ITALY\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS" 

descright=string(_likesT)+":JOKING,ELEPHANTS\n"+string(_dislikesT)+":SADNESS\n"+string(_hobbyT)+":Animal Taming"
dataabilities="Puppetry,Juggling"

 }
 
 break;
   case 25: enemyID=63
  idlestyle=1 hp=0.2
  
var _tedage=23;
  
  descT[0]="Adorable plush bears with a tendency to deck naughty people until they behave."
descT[2]= "Ursos de pelúcia adoráveis com tendência a perserguir pessoas malcriadas até que elas se comportem."
desc=descT[global.Language]
 charinfo_set(12,spr_bear_stand,6,animsetup_enemy,draw_enemy,spr_bearpal,0,spr_enemyface,49,"ROOSEVELT",
desc)

descright=string(_likesT)+":CHEERS,GAMES\n"+string(_dislikesT)+":NAUGHTIES\n"+string(_hobbyT)+":FISHING"
dataabilities="Plush Combat"


 if dataPal=2 {enemy_switch("TEDDIE",0) _tedage=21
  descT[0]="This bear is a bit shy around crowds, but he seeks friendship… And to punish baddies."
descT[2]= "Esse urso é um pouco tímido perto de multidões, mas ele busca amizade... E punição aos maus."
desc=descT[global.Language]
 
 descright=string(_likesT)+":FRIENDSHIP,HUGS\n"+string(_dislikesT)+":CROWDS\n"+string(_hobbyT)+":KNITTING"
 
 }
  if dataPal=3 {enemy_switch("YOGI",0) _tedage=25
  descT[0]="Often seen giving out snacks to visitors. He also insists he’s smarter than most bears."
descT[2]= "Frequentemente visto dando lanches aos visitantes. Ele insiste que é mais inteligente do que a maioria dos ursos."
desc=descT[global.Language]
 
 descright=string(_likesT)+":SNACKS,PICNICS\n"+string(_dislikesT)+":CAVES\n"+string(_hobbyT)+":EXPLORING"
 
 }
  if dataPal=4 {enemy_switch("FOZZI",0) _tedage=32
 
   descT[0]="Having watched many comedians, he does his own stand-up. Jury’s out on the joke quality."
descT[2]= "Ao assistir muitos comediantes, ele fez seu próprio show de comédia. Piadas no entanto são questionáveis."
desc=descT[global.Language]
 
 descright=string(_likesT)+":COMEDIES,JOKES\n"+string(_dislikesT)+":HECKLERS\n"+string(_hobbyT)+":WRITING" 
 
 }
  if dataPal=5 {enemy_switch("PADDY",0) _tedage=28
 
    descT[0]="A kind and polite bear who’s popular with kids. Bad people are greeted with a hard stare."
descT[2]= "Um urso gentil e educado, popular entre crianças. Delinquentes são recebidos com um olhar severo."
desc=descT[global.Language]
 
 descright=string(_likesT)+":MARMALADE,BALLOONS\n"+string(_dislikesT)+":BAD PEOPLE\n"+string(_hobbyT)+":BOOK READING"
 
 }
  if dataPal=6 {enemy_switch("MONO",0) _tedage=19

     descT[0]="Underneath its monotone exterior, it enjoys watching others’ misfortune and despair."
descT[2]= "Por baixo de sua aparência monótona, ele gosta de ver o azar e o desespero dos outros."
desc=descT[global.Language]
 
 descright=string(_likesT)+":PAIN,DESPAIR\n"+string(_dislikesT)+":DISOBEDIENCE\n"+string(_hobbyT)+":TEACHING"
 
 }
 
  descleft=string(_ageT)+":"+string(_tedage)+"\nNAT.:ITALY\n"+string(_heightT)+":4'7"+" "+string(_weightT)+":40LBS"  
 
 break;
 case 26: hp=0.25 enemyID=69
 
      descT[0]="With strong legs, elegant ballet moves and magical heart bullets, this fairy is not your friend."
descT[2]= "Com pernas fortes, movimentos elegantes de balé e balas mágicas de coração, esta fada não é sua amiga."
desc=descT[global.Language]
 
 charinfo_set(12,spr_fairy_stand,3,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,53,"BELLE",
desc)

descleft=string(_ageT)+":25\nNAT.:FRANCE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS" 

descright=string(_likesT)+":MUSIC,ARTS\n"+string(_dislikesT)+":SALT\n"+string(_hobbyT)+":BALLET"
 dataabilities="Fairy Magic,Ballerina"

  if dataPal=2 {enemy_switch("WENDY",0)
	  
      descT[0]="Obsessed with flying, she’ll often spin before leaping through the air with a fierce kick."
descT[2]= "Obcecada por voar, ela costuma girar antes de saltitar pelo ar com um chute feroz."
desc=descT[global.Language]  

	  descleft=string(_ageT)+":26\nNAT.:BRITAIN\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":85LBS" 

descright=string(_likesT)+":MUSIC,NOVELS\n"+string(_dislikesT)+":PIRATES\n"+string(_hobbyT)+":BOOK READING"
 dataabilities="Fairy Magic,Ballerina" 
	
	  }
  if dataPal=3 {enemy_switch("LUSH",0)
	  
	      descT[0]="An ice fairy whose heart bullets are just as cold to the touch as her personality."
descT[2]= "Uma fada da neve com balas de coração tão frias ao toque quanto sua personalidade."
desc=descT[global.Language]

	  descleft=string(_ageT)+":28\nNAT.:RUSSIA\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS" 
	  
descright=string(_likesT)+":MUSIC,SNOW\n"+string(_dislikesT)+":SPICE\n"+string(_hobbyT)+":ICE SCULPTING"
 dataabilities="Fairy Magic,Ballerina,Cold" 
	 
	  }

 break;
   case 27: enemyID=72
   idlestyle=1 hp=0.6
   
  	      descT[0]="A dangerous carnivorous plant known for chomping people into pieces and swallowing them."
descT[2]= "Uma planta carnívora perigosa, conhecida por mastigar pessoas em pedaços e devora-las."
desc=descT[global.Language] 
   
 charinfo_set(12,spr_plant_stand,3,animsetup_enemy,draw_enemy,spr_plantpal,0,spr_enemyface,29,"FLORA",
desc)
	  descleft=string(_ageT)+":34\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":180LBS"

descright=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":CHEAP MEAT\n"+string(_hobbyT)+":GARDENING"
 dataabilities="Carnivore Plant Powers"

  if dataPal=2 {enemy_switch("PETI",0)
	  
  	      descT[0]="These crafty predators catch their prey by spraying a stunning toxin at them." 
descT[2]= "Esses predadores astutos capturam suas presas borrifando uma toxina atordoante nelas."
desc=descT[global.Language] 
 
descright=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":POLLUTION\n"+string(_hobbyT)+":DECORATING"
 dataabilities="Carnivore Plant Powers,Toxin"

	  descleft=string(_ageT)+":32\nNAT.:USA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":185LBS"
	 }
  if dataPal=3 {enemy_switch("FOLI",0)
	  
  	      descT[0]="Conniving plants that prefer to knock their prey out with spitting seeds as hard as bullets!"
descT[2]= "Plantas coniventes que preferem derrubar suas presas cuspindo sementes tão duras quanto balas!"
desc=descT[global.Language] 
 
	  	  descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":190LBS"
	  	  
		  descright=string(_likesT)+":NATURE,MEAT\n"+string(_dislikesT)+":COLD\n"+string(_hobbyT)+":HARVESTING"
 dataabilities="Carnivore Plant Powers,Seed Shooting"
		  
		  }

break;

  case 28: enemyID=117
  idlestyle=1 hp=0.4
  
    descT[0]="A bee lady with style and honey to spare. But provoke her and you’ll face her stinger."
descT[2]= "Uma estilosa dama abelha e cheia de mel. Mas provoque-a e você enfrentará seu ferrão."
desc=descT[global.Language] 
  
 charinfo_set(12,spr_beelady_stand,3,animsetup_enemy,draw_enemy,spr_dancerpal,0,spr_enemyface,63,"BEEATRICE",
desc)
descleft=string(_ageT)+":25\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":100LBS"

descright=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":BEARS\n"+string(_hobbyT)+":GARDENING"
 dataabilities="Bee Stinger, Acidic Honey"

  if dataPal=2 {enemy_switch("HONEYDEW",0)
	  
    descT[0]="These buzzing beauties are hardened fighters. Though they may have a hidden sweet side."
descT[2]= "Essas belas zumbideiras são lutadoras casca grossa. Mas talvez elas tenham um doce lado oculto."
desc=descT[global.Language]   

descleft=string(_ageT)+":30\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":110LBS"

descright=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":NEST BREAKERS\n"+string(_hobbyT)+":DECORATING"
 dataabilities="Bee Stinger, Acidic Honey"

	  }
  if dataPal=3 {enemy_switch("WASPELLA",0)
	  
    descT[0]="Her stinger is much nastier than others. The venom makes you blimp up like a balloon!"
descT[2]= "Seu ferrão é o menos convidativo entres elas. O veneno te fará inflar como um balão!"
desc=descT[global.Language] 

descleft=string(_ageT)+":35\nNAT.:AFRICA\n"+string(_heightT)+":6'10"+" "+string(_weightT)+":120LBS"
	  
descright=string(_likesT)+":FASHION,NECTAR\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":BALL DANCING"
 dataabilities="Nasty Bee Stinger, Acidic Honey"	 
	  
	  }
///PINCHER

break;

  case 29: enemyID=75
  hp=0.2 idlestyle=1
  
  descT[0]="A big bipedal lobster with an even bigger pinch. Has quite the bubbly temper, too."
descT[2]= "Seu ferrão é o menos convidativo entres elas. O veneno te fará inflar como um balão!"
desc=descT[global.Language] 
  
 charinfo_set(12,spr_lobster_stand,2,animsetup_enemy,draw_enemy,spr_lobsterpal,0,spr_enemyface,42,"PINCHO",
desc)
descleft=string(_ageT)+":35\nNAT.:FRANCE\n"+string(_heightT)+":6'11"+" "+string(_weightT)+":170LBS"

descright=string(_likesT)+":FANCYNESS,FOOD\n"+string(_dislikesT)+":BAD FOOD\n"+string(_hobbyT)+":FOOD CRITIC"
 dataabilities="Lobster Claws, Bubbling"

  if dataPal=2 {enemy_switch("PINCHER",0)
	  
  descT[0]="This crustacean has so much fight in him, he’ll crush anyone with his charging claw!" 
descT[2]= "Este crustáceo é tão bom de briga que acaba com qualquer um com as investidas de sua garra!"
desc=descT[global.Language] 

descleft=string(_ageT)+":36\nNAT.:FRANCE\n"+string(_heightT)+":6'12"+" "+string(_weightT)+":175LBS"
	 
descright=string(_likesT)+":BRAWLING,FOOD\n"+string(_dislikesT)+":OILY FOOD\n"+string(_hobbyT)+":BAR HOPPING"
 dataabilities="Claw Charge, Bubbling" 
	
	 }
///PINCHER

break;
case 30: enemyID=77
weapon_add("SCIMITAR")
idlestyle=1 hp=0.25

  descT[0]="Graceful entertainers who distract foes with their dance before kicking and cutting them apart."
descT[2]="Apresentadoras graciosas que distraem inimigos com sua dança antes de chutá-los e cortá-los em pedaços."
desc=descT[global.Language] 

charinfo_set(12,spr_dancer_stand,3,animsetup_enemy,draw_swing,spr_dancerpal,0,spr_enemyface,50,"DANZA",
desc
)
 
 descleft=string(_ageT)+":26\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":120LBS"
 
 descright=string(_likesT)+":FANCYNESS,FLOWERS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":EXERCISE"
 dataabilities="Sword Fighting,Acrobatics"
 
 weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-16,-91,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-15,-90,0,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-15,-88,0,weaponcolor)
 
  if dataPal=2 {enemy_switch("RULA",0)
	  
  descT[0]="These mystifying dancers are highly sought after, both as entertainers AND as bodyguards."
descT[2]="Essas dançarinas misteriosas são muito procuradas, tanto como performers quanto como guarda-costas."
desc=descT[global.Language]   

 descleft=string(_ageT)+":28\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":125LBS"

 descright=string(_likesT)+":FANCYNESS,ROSES\n"+string(_dislikesT)+":INFIDELS\n"+string(_hobbyT)+":CATERING"
 dataabilities="Sword Fighting,Acrobatics"

	  }
  if dataPal=3 {enemy_switch("JAZMYN",0)
	  
  descT[0]="With a mysterious spell, they can bring their scimitars to life for assistance in battle!"
descT[2]="Com um feitiço misterioso, elas podem dar vida às suas cimitarras para ajudar na batalha!"
desc=descT[global.Language] 

 descleft=string(_ageT)+":ANCIENT\nNAT.:MIDDLE EAST\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":130LBS"
	
descright=string(_likesT)+":FANCYNESS,JEWELS\n"+string(_dislikesT)+":INTERLOPERS\n"+string(_hobbyT)+":MASSAGES"
 dataabilities="Magic Sword Fighting,Acrobatics"
	
	}
 
 break; 
  case 31:
 hp=0.25 enemyID=80
idlestyle=1

  descT[0]="Van Bad’s undersea division, quite agile due to much underwater combat experience."
descT[2]="Divisão submarina de Van Bad, bastante ágil devido à sua vasta experiência em combate subaquático."
desc=descT[global.Language] 

 charinfo_set(12,spr_diver_stand,2,animsetup_enemy,draw_swing,spr_ninjapal,0,spr_enemyface,45,"MR.DIVE",
desc)

 descleft=string(_ageT)+":34\nNAT.:FRANCE\n"+string(_heightT)+":5'7"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":FISHING"
 dataabilities="UNDERWATER COMBAT"

  if dataPal=2 {weapon_add("HARPOONGUN") enemy_switch("MR.DROP",0)
	  
  descT[0]="The elite of the divers, they even have the privilege of carrying harpoon guns!"	
descT[2]="A elite dos mergulhadores, eles têm até o privilégio de carregar arpões!"
desc=descT[global.Language] 

 descleft=string(_ageT)+":36\nNAT.:FRANCE\n"+string(_heightT)+":5'8"+" "+string(_weightT)+":155LBS"

 descright=string(_likesT)+":FISH,SCENERY\n"+string(_dislikesT)+":DOLPHINS\n"+string(_hobbyT)+":HARPOONING"
 dataabilities="UNDERWATER COMBAT,HARPOON"

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
descT[2]="Guardiões com guelras das profundezas que punem os intrusos com suas lanças e força física."
desc=descT[global.Language] 

 charinfo_set(12,spr_merman_stand,3,animsetup_merman,draw_merman,spr_zombiepal,0,spr_enemyface,25,"DOUGLAS",
desc)

 descleft=string(_ageT)+":25\nNAT.:GREECE\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":150LBS"

  if dataPal=1 weapon_add("SPEAR")

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":WORKOUTS"
 dataabilities="SPEAR FIGHTING,BRAWLING"

  if dataPal=2 {enemy_switch("ERIK",0) weapon_add("TRIDENT")
	  
	   descT[0]="Higher in rank, they bring tridents into battle against those who pose a threat to the prince."
descT[2]="De patente superior, eles trazem tridentes para a batalha contra aqueles que representam uma ameaça ao príncipe."
desc=descT[global.Language] 

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":SCULPTING"
 dataabilities="TRIDENT FIGHTING,BRAWLING"

 descleft=string(_ageT)+":26\nNAT.:GREECE\n"+string(_heightT)+":5'11"+" "+string(_weightT)+":156LBS"
}
  if dataPal=3 {enemy_switch("ADAM",0)

	   descT[0]="Underlings of the sea witch who guard her domain with the utmost loyalty."
descT[2]="Subordinados da bruxa do mar que guardam seu domínio com máxima lealdade."
desc=descT[global.Language] 

 descleft=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":152LBS"

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":UNFAIRNESS\n"+string(_hobbyT)+":SURFING"
 dataabilities="BRAWLING"

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
descT[2]="Sereias belas, mas mortais. Elas podem disparar bolas de água ardente com as mãos!"
desc=descT[global.Language] 
 
 charinfo_set(12,spr_siren_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,26,"SIRENA",
desc)

 descleft=string(_ageT)+":22\nNAT.:GREECE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":HUNTING"
 dataabilities="MERMAID MAGIC,BRAWLING"

  if dataPal=2 {enemy_switch("MARINA",0)
	  
	 descT[0]="Keep out of their personal space bubble, or her hot charging fist will pop yours and your face!"
descT[2]="Fique fora da bolha pessoal delas, ou o punho quente delas vai estourar a sua e o seu rosto!"
desc=descT[global.Language] 

 descleft=string(_ageT)+":23\nNAT.:GREECE\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"
	 
 descright=string(_likesT)+":MUSCLES,FIGHTS\n"+string(_dislikesT)+":RUDENESS\n"+string(_hobbyT)+":DECORATING"
 dataabilities="MERMAID MAGIC,BRAWLING"	 
	 
	 }
  if dataPal=3 {enemy_switch("SKYLA",0)
	  
	 descT[0]="Deceptively vicious skymaids who lure their prey in with their song before pulverizing them." 
descT[2]="Sereias de águas rasas manipuladoras e cruéis que atraem suas presas com suas canções antes de pulverizá-las."
desc=descT[global.Language] 


 descleft=string(_ageT)+":22\nNAT.:BRITAIN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":FRUITS,SONGS\n"+string(_dislikesT)+":MERMAIDS\n"+string(_hobbyT)+":SINGING"
 dataabilities="SKYMAID MAGIC,BRAWLING"

	 }

break;
  case 34:
 idlestyle=1
 hp=0.25 enemyID=88 
 
 	 descT[0]="These space babes abduct earthly specimens! Watch out for their psychic brain shock!"
descT[2]="Essas garotas espaciais sequestram espécimes terrestres! Cuidado com o choque psíquico cerebral delas!"
desc=descT[global.Language] 
 
 charinfo_set(12,spr_martian_stand,3,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,23,"MARTIA",
desc)
 descleft=string(_ageT)+":31\nNAT.:ALIEN\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":160LBS"

 descright=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":RESEARCHING"
 dataabilities="BRAINPOWER"

  if dataPal=2 {enemy_switch("INVA",0) weapon_add("TASER")
	  
 	 descT[0]="Alien security guards who subdue fleeing specimens with their shocking stun batons." 
descT[2]="Guardas de segurança alienígenas que subjugam espécimes em fuga com seus bastões elétricos."
desc=descT[global.Language] 	  

 descleft=string(_ageT)+":34\nNAT.:ALIEN\n"+string(_heightT)+":7'1"+" "+string(_weightT)+":162LBS"
 
  descright=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="BRAINPOWER,TECHNOLOGY"
 
	 }
  if dataPal=3 {enemy_switch("EXTA",0) weapon_add("LASERGUN")
	  
 	 descT[0]="Illustrious invaders who are armed with powerful laser guns for frying or capturing specimens!"
descT[2]="Invasores ilustres armados com poderosas armas laser para fritar ou capturar espécimes!"
desc=descT[global.Language]  

 descleft=string(_ageT)+":28\nNAT.:ALIEN\n"+string(_heightT)+":7'0"+" "+string(_weightT)+":150LBS"

 descright=string(_likesT)+":GOLD,SPECIMENS\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="BRAINPOWER,TECHNOLOGY"

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
descT[2]="Esses drones de segurança alienígenas estão equipados com armas elétricas e lasers."
desc=descT[global.Language] 
  
 charinfo_set(12,spr_alienrobot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,28,"ELECTRON",
desc)

 descleft="NAT.:ALIEN\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":180LBS"

 descright=string(_likesT)+":VIOLENCE,ACTION\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="TECHNOLOGY"

  if dataPal=2 {enemy_switch("DESTRON",0)
	  
   	 descT[0]="These drones support the invading troops by launching powerful, bouncing bombs." 
descT[2]="Esses drones apoiam tropas alienígenas lançando bombas poderosas e saltitantes."
desc=descT[global.Language] 

 descleft="NAT.:ALIEN\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":190LBS"
	 
 descright=string(_likesT)+":ACTION,VIOLENCE\n"+string(_dislikesT)+":JUSTICE\n"+string(_hobbyT)+":HUNTING"
 dataabilities="TECHNOLOGY"
	 
	 }

break;
  case 36: hp=0.25 enemyID=93
 idlestyle=1
 
    	 descT[0]="These aliens’ pets and guard dogs’ eyes turn into frightening fangs to bite into their prey!"
descT[2]="O olho desses animais domésticos e cães de guarda alienígenas se transforma em presas assustadoras para morder suas presas!"
desc=descT[global.Language] 
 
 charinfo_set(12,spr_spacer_stand,2,animsetup_enemy,draw_enemy,spr_fairypal,0,spr_enemyface,43,"OJO",
desc)

 descleft=string(_ageT)+":5\nNAT.:ALIEN\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":MEALS,APPROVAL\n"+string(_dislikesT)+":SCOLDS\n"+string(_hobbyT)+":SLEEPING"
 dataabilities="ALIEN POWERS"

  if dataPal=2 {enemy_switch("VER",0)
	  
    	 descT[0]="Specially trained, these beasts fire beams to inflate targets into helpless balloons for capture."
descT[2]="Especialmente treinados, essas feras disparam feixes para inflar alvos e transformá-los em balões indefesos para captura."
desc=descT[global.Language] 
  
 
	  descleft=string(_ageT)+":6\nNAT.:ALIEN\n"+string(_heightT)+":6'5"+" "+string(_weightT)+":110LBS"
	 	 
 descright=string(_likesT)+":MEALS,APPROVAL\n"+string(_dislikesT)+":NO ATTENTION\n"+string(_hobbyT)+":NAPPING"
 dataabilities="ALIEN POWERS"
		 
		 }

break;
  case 37: hp=0.3 enemyID=95 idlestyle=1
  
     	 descT[0]="Workaholic goblins dedicated to mining. Disturb one and you’ll face a whole mob of ‘em!"
descT[2]="Goblins burros de carga dedicados à mineração. Perturbe um e você enfrentará uma orda!"
desc=descT[global.Language] 
  
  charinfo_set(12,spr_goblin_stand,2,animsetup_enemy,draw_swing,spr_zombiepal,0,spr_enemyface,27,"GOBERT",
desc)
descleft=string(_ageT)+":31\nNAT.:FRANCE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":WORK,GEMSTONES\n"+string(_dislikesT)+":DISRUPTIONS\n"+string(_hobbyT)+":NONE"
 dataabilities="Mining"

  if dataPal=2 {enemy_switch("GOHNNY",0) weapon_add("PICKAXE")
	  
     	 descT[0]="Agile and armed with the tools of their trade, they won’t hesitate to pummel trespassers!"
descT[2]="Ágeis e armados com suas ferramentas de ofício, eles não hesitarão em espancar invasores!"
desc=descT[global.Language] 

descleft=string(_ageT)+":35\nNAT.:FRANCE\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":105LBS"
	 
 descright=string(_likesT)+":WORK,WORK\n"+string(_dislikesT)+":LATE WORK\n"+string(_hobbyT)+":NONE"
 dataabilities="Mining"
	 
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
descT[2]="Garotas cogumelo alegres e animadas. Elas esfregam as mãos para espalhar esporos paralisantes!"
desc=descT[global.Language] 
  
 charinfo_set(12,spr_shroom_stand,4,animsetup_enemy,draw_enemy,spr_playerpal,0,spr_enemyface,52,"AMANITA",
desc)

descleft=string(_ageT)+":21\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Stun Spore"

  if dataPal=2 {enemy_switch("CERANA",0)
	  
descT[0]="These fun-gals party particularly hard, so much they tend to hit others when headbanging!"
descT[2]="Essas garotas divertidas festejam com tanta intensidade que tendem a bater nos outros quando balançam a cabeça!"
desc=descT[global.Language] 

descleft=string(_ageT)+":22\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Headbutt"

	  }
    if dataPal=3 {enemy_switch("ELEGANS",0)
		
descT[0]="The spores of these party mushrooms tend to send people into a manic haze like theirs."
descT[2]="Os esporos destes cogumelos festivos tendem a deixar as pessoas em um estado de euforia semelhante ao deles."
desc=descT[global.Language] 

descleft=string(_ageT)+":23\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Stun Spore"

	}
	  if dataPal=4 {enemy_switch("PHOLIOTA",0)
		  
descT[0]="Playful to a fault, they mean no harm in their headbutts, but don’t realize how hard they are." 
descT[2]="Brincalhonas até demais, eles não têm intenção de machucar com suas cabeçadas, mas não percebem o quão fortes elas são."
desc=descT[global.Language] 
	  
descleft=string(_ageT)+":20\nNAT.:RUSSIA\n"+string(_heightT)+":5'0"+" "+string(_weightT)+":100LBS"

 descright=string(_likesT)+":PARTIES,DANCING\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Mushroom Powers, Headbutt"

		 }

break;
  case 39:
 idlestyle=1 hp=0.4 enemyID=101
 
 descT[0]= "These smug slimes have a long reach and can become a puddle before launching an uppercut."
descT[2]="Essas slimes presunçosas têm um longo alcance e podem se transformar em uma poça antes de darem um gancho."
desc=descT[global.Language] 
 
 charinfo_set(12,spr_slime_stand,6,animsetup_enemy,draw_enemy,spr_slimepal,0,spr_enemyface,22,"MELON",
desc)
 
 descleft=string(_ageT)+":26\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
  descright=string(_likesT)+":SHOW OFF,MELONS\n"+string(_dislikesT)+":SHOWOFFS\n"+string(_hobbyT)+":EXERCISE"
 dataabilities="Slime Powers, Sneaking"
 
   if dataPal=2 {enemy_switch("CHERRY",0)
	   
 descT[0]= "Fast self-regeneration allows these girls to launch pieces of themselves at foes with no issue."
descT[2]="A rápida autorregeneração permite que essas garotas lancem pedaços de si mesmas nos inimigos sem nenhum problema."
desc=descT[global.Language] 
	 
	   
 descleft=string(_ageT)+":25\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
	   
  descright=string(_likesT)+":ATTENTION,CHERRIES\n"+string(_dislikesT)+":SHARP THINGS\n"+string(_hobbyT)+":GARDENING"
 dataabilities="Slime Powers, Slime Launching"
	   
	   }
    if dataPal=3 {enemy_switch("BLUEBERRY",0)
		
 descT[0]= "Buoyant and bouncy, they like tackling their opponents as a big slimy cannonball!"
descT[2]="Flutuantes e saltitantes, elas gostam de atacar seus oponentes como uma grande bola de canhão viscosa!"
desc=descT[global.Language] 

		
  descright=string(_likesT)+":PARTY,BLUEBERRIES\n"+string(_dislikesT)+":BOREDOM\n"+string(_hobbyT)+":PARTYING"
 dataabilities="Slime Powers, Brawling"
		
 descleft=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		}
	  if dataPal=4 {enemy_switch("BANANA",0)

 descT[0]="These girls are dangerously clingy, watch for yellow puddles or you’ll get one big, slimy hug!"
descT[2]="Essas garotas são perigosamente pegajosas, cuidado com as poças amarelas ou você receberá um grande abraço melado!"
desc=descT[global.Language] 
		  
 descleft=string(_ageT)+":27\nNAT.:USA\n"+string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		  
descright=string(_likesT)+":HUGS,BANANAS\n"+string(_dislikesT)+":POINTY THINGS\n"+string(_hobbyT)+":BOOK WRITING"
 dataabilities="Slime Powers, Absorbing"
		  
		  }
    if dataPal=5 {enemy_switch("CALCIUM",0)
		
 descT[0]="Bio-engineered underlings of Van Bad based on the cave dwellers. Much more hostile though."
descT[2]="Subordinados vítimas da bio-engenharia de Van Bad baseados nos habitantes das cavernas. Porém muito mais hostis."
desc=descT[global.Language] 

		
 descleft=string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
 
   descright=""
 dataabilities=""
 
		}
	  if dataPal=6 {enemy_switch("CHEMI",0)
		  
 descT[0]="Constantly hungry lab experiments, they’ll grab and try to absorb anything that moves."
descT[2]="Experiências de laboratório constantemente famintas, elas agarram e tentam absorver qualquer coisa que se mova."
desc=descT[global.Language] 
		  
 descleft=string(_heightT)+":8'0"+" "+string(_weightT)+":180LBS"
		  
  descright=""
 dataabilities=""		  
		  }
		  	  
 
break;
  case 40: enemyID=107
  idlestyle=1 hp=1
  
   descT[0]= "Love-starved, strong yetis who use their strength and ice breath to catch new companions."
descT[2]="Yettis fortes e famintos por amor que usam sua força e sopro gelado para capturar novos companheiros."
desc=descT[global.Language] 
  
 charinfo_set(12,spr_snowgirl_stand,3,animsetup_enemy,draw_enemy,spr_zombiepal,0,spr_enemyface,51,"PRIMA",
desc)
 
  descleft=string(_ageT)+":45\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":360LBS"
 
   descright=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":ICE SCULPTING"
 dataabilities="Ice Breath, Smashing"
 
     if dataPal=2 {enemy_switch("EVA",0)
		 
   descT[0]= "They lack ice breath, but their mighty leaps are enough for them to pounce on any mates."	
descT[2]="Não têm sopro gelado, mas seus saltos poderosos são suficientes para quicar em qualquer companheiro."
desc=descT[global.Language] 

  descleft=string(_ageT)+":42\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":350LBS"
  
    descright=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":ROCK SCULPTING"
 dataabilities="Crushing, Smashing"
  
		 }
    if dataPal=3 {enemy_switch("UNDA",0)
	
   descT[0]= "These amorous cave beasts will shake the earth itself just so they can get you to themselves!"
descT[2]="Essas feras amorosas das cavernas sacudirão a própria terra só para ter você para elas!"
desc=descT[global.Language] 

  descleft=string(_ageT)+":43\nNAT.:RUSSIA\n"+string(_heightT)+":6'4"+" "+string(_weightT)+":345LBS"
		
    descright=string(_likesT)+":LOVE,HUGS\n"+string(_dislikesT)+":RUNAWAYS\n"+string(_hobbyT)+":MUD SCULPTING"
 dataabilities="Crushing, Smashing"
		
		}

break;

  case 41:
  hp=0.2 enemyID=110
  
    descT[0]=  "Scientists who work under Dr. Fran. They act as support by throwing exploding beakers."
descT[2]="Cientistas que trabalham para a Dr. Fran. Eles atuam como apoio, jogando provetas explosivas."
desc=descT[global.Language] 
  
 charinfo_set(12,spr_nurse_stand,4,animsetup_enemy,draw_enemy,spr_ninjapal,0,spr_enemyface,48,"DR.PERO",
desc)
 
   descleft=string(_ageT)+":35\nNAT.:GERMANY\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"
 
     descright=string(_likesT)+":SCIENCE,APPLES\n"+string(_dislikesT)+":FAILURE\n"+string(_hobbyT)+":BOOK CLUB"
 dataabilities="Science, Explosive"
 
  if dataPal=2 {enemy_switch("DR.SULF",0)

    descT[0]=  "Usually sedating test subjects, they carry syringes that they can throw with pinpoint accuracy."
descT[2]="Normalmente sedando cobaias, eles carregam seringas que podem ser lançadas com precisão milimétrica."
desc=descT[global.Language] 

   descleft=string(_ageT)+":36\nNAT.:USA\n"+string(_heightT)+":5'3"+" "+string(_weightT)+":110LBS"
	  
descright=string(_likesT)+":SCIENCE,PUDDING\n"+string(_dislikesT)+":FAKERS\n"+string(_hobbyT)+":EXPERIMENTING"
 dataabilities="Science, Needle Throwing"
	  
	  }
    if dataPal=3 {enemy_switch("DR.MONIA",0)
		
    descT[0]=  "Armed with potions full of dizzying gas. Even without a mask they’ve developed an immunity."
descT[2]="Armados com poções cheias de gás vertiginoso. Mesmo sem máscara, eles desenvolveram imunidade."
desc=descT[global.Language] 
	

   descleft=string(_ageT)+":35\nNAT.:CANADA\n"+string(_heightT)+":5'4"+" "+string(_weightT)+":110LBS"		
		
     descright=string(_likesT)+":SCIENCE,SPIDERS\n"+string(_dislikesT)+":USELESSNESS\n"+string(_hobbyT)+":COOKING"
 dataabilities="Science, Poison"
		
		}
	  if dataPal=4 {enemy_switch("DR.GLUCO",0)
		     descleft=string(_ageT)+":38\nNAT.:RUSSIA\n"+string(_heightT)+":5'5"+" "+string(_weightT)+":110LBS"
		  
    descT[0]= "Chemists with a nasty temper and nastier attitude who throw vials that burst into acid puddles."
descT[2]="Químicas com temperamento desagradável e atitude piores ainda, que jogam frascos que se transformam em poças de ácido."
desc=descT[global.Language] 

		  
     descright=string(_likesT)+":SCIENCE,SNAILS\n"+string(_dislikesT)+":BREAKS\n"+string(_hobbyT)+":RESEARCH"
 dataabilities="Science, Melting Acid"
		  
		  }
 
break;
  case 42: hp=1 enemyID=114
  
      descT[0]= "Dr. Fran’s pride and joy, these steel bombshells hit fast and hard with a dizzying punch."
descT[2]="Orgulho e alegria do Dr. Fran, essas bombas de aço atingem com rapidez e força, com um golpe vertiginoso."
desc=descT[global.Language] 
  
 charinfo_set(12,spr_ladybot_stand,2,animsetup_enemy,draw_enemy,spr_robotpal,0,spr_enemyface,46,"O-POLIS",
desc)

   descleft=string(_heightT)+":8'5"+" "+string(_weightT)+":180LBS"
  
 descright=string(_likesT)+":DESTROYING,FILMS\n"+string(_dislikesT)+":MISTAKES\n"+string(_hobbyT)+":MUSIC PLAYING"
 dataabilities="Robotic Kick, Charging"

   if dataPal=2 {enemy_switch("METR-A",0)
	   
      descT[0]= "This model is more explosive, with “ballistics” they launch at will to blast intruders to ash."	   
descT[2]="Este modelo é mais explosivo, com munição à vontade que eles atiram para reduzir intrusos a cinzas."
desc=descT[global.Language] 

 descright=string(_likesT)+":DESTROYING,BOOKS\n"+string(_dislikesT)+":ERRORS\n"+string(_hobbyT)+":BALL DANCING"
 dataabilities="Robotic Kick, Ballistics"
	  
	  }
}

unlockedChar[enemyID]=global.UnlockEnemy[enemyID] if unlockedChar[enemyID]!=0  image_blend=c_white else image_blend=c_black
if image_blend=c_black {name="???" desc="" idlestyle=0
	  descleft=""
descright=""
dataabilities=""
	}
}