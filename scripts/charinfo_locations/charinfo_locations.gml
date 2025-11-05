// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_locations(){
var _ageT="";
var _likesT="";
var _dislikesT="";
var _hobbyT="";
var _heightT="";
var _weightT="";
var _abilitiesT=""	

dataabilitiesB=_abilitiesT;

descleft="" hp=0;
switch (dataSelect)
{
 case 1:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,1,"DOWNTOWN STREET",
    "The divas were set to perform here. But thanks to the mayor’s inaction, this city’s become a seedy, unruly hotspot for brawls between thugs of all kinds, so stay sharp!")
	dataabilities=""
	
   switch(global.Language)
{
case 2:
name="VIELA DISTRITAL"
desc="As divas estavam programadas para se apresentar aqui. Mas, graças à inação do prefeito, esta cidade se tornou um antro decadente e violento, palco de brigas entre bandidos de todos os tipos, então fique atento!"

break;
}
	
break;
  case 2:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,2,"EVERFLIGHT AIRPORT",
    "Cheaply built and maintained planes are stationed here. There are rumors of frequent crashing incidents, but it’s said the higher ups bribed the authorities to keep them buried.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="ROLÊ AÉRIO"
desc="Aqui ficam estacionados aviões de construção e manutenção baratas. Há rumores de frequentes acidentes, mas dizem que os superiores subornaram as autoridades para abafar o caso."
break;
}	

break;
  case 3:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,3,"S.S.VICTOR",
    "This luxury cruise ferries the top of the upper class… As they witness a most unruly brawl unfolding aboard. Some are already filing complaints for these travel conditions.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="CRUZEIRO MARÍTIMO"
desc="Este cruzeiro de luxo transporta a nata da sociedade... e testemunha uma briga desordeira a bordo. Alguns já estão apresentando queixas sobre essas condições de viagem."
break;
}		

break;
 case 4:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,4,"EL LOCO DOS",
    "This speedy express train is frequently targeted for robberies by bandits of all kinds. Though recent reports have noted a buff in its security to handle the offenders.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="EL LOCO DOS"
desc="Este trem expresso de alta velocidade é frequentemente alvo de roubos por bandidos de todos os tipos. Embora relatos recentes tenham apontado um reforço em sua segurança para lidar com os criminosos."
break;
}		

break;
 case 5:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,5,"MARI CEMETERY",
    "This unsettling cemetery has a path leading to an even more frightening old mansion. Visitors tend to leave headless… Popular for thrill-seeking teens apparently.")
	dataabilities=""
	
   switch(global.Language)
{
case 2:
name="TUMBA DA MARI"
desc="Este cemitério perturbador tem um caminho que leva a uma antiga mansão ainda mais assustadora. Os visitantes costumam sair decapitados… Aparentemente, é um local popular entre adolescentes em busca de emoções fortes."
break;
}	
	
break;
 case 6:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,6,"GRAND MUSEUM",
    "This museum is well renowned for its artifacts and exhibits. Sadly, the Egyptian exhibit is planned to be transferred to another museum. Hope nothing crazy happens…")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="GRANDE MUSEU"
desc="Este museu é muito conhecido por seus artefatos e exposições. Infelizmente, a coleção egípcia será transferida para outro museu. Espero que nada de grave aconteça…"
break;
}		

break;
 case 7:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,7,"LUCKY DOJO CASINO",
    "An oriental casino. Once it was an ancient fortress, but the Oni Sisters transformed it after winning it in a bet, turning it into a place of lights, money and mercenaries.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="LUCKY DOJO CASINO"
desc="Um cassino oriental. Outrora uma antiga fortaleza, foi transformada pelas Irmãs Oni após ganhá-la em uma aposta, tornando-se um lugar de luzes, dinheiro e mercenários."
break;
}		
	
break;
 case 8:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,8,"DEAD SWAMPS",
    "This eerie swamp actually features relaxing boat rides. Just don’t drink the water and steer clear of both the crocodile infested waters and the witch’s zombie village.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="PÂNTANOS MORTOS"
desc="Este pântano misterioso oferece passeios de barco relaxantes. Só não beba a água e mantenha-se longe das águas infestadas de crocodilos e da vila zumbi da bruxa."
break;
}		

break;
 case 9:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,9,"QUACK CARNIVAL",
    "Passed down to a duck by a shady ringmaster, it gained more popularity with its wilder displays, crazier circus tent and a staff of totally-not-disgruntled living toys.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="CARNAVAL QUÁ-QUÁ"
desc="Herdado de um mestre de cerimônias duvidoso e passado para um pato, o circo ganhou ainda mais popularidade com suas exibições mais extravagantes, sua tenda mais maluca e uma equipe de brinquedos vivos que, no mínimo, não demonstravam nenhum descontentamento."
break;
}		

break;
 case 10:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,10,"ODYSSEY BEACH",
    "A tropical tourist trap with a cove where it’s said a legendary sea witch resides deep inside with her pet kraken… Tread carefully…")
	dataabilities=""
	
   switch(global.Language)
{
case 2:
name="COSTA TROPICAL"
desc="Uma armadilha turística tropical com uma enseada onde dizem que reside uma lendária bruxa do mar com seu kraken de estimação… Cuidado ao caminhar…"
break;
}		
	
break;
 case 11:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,11,"SPACE PIRATE SHIP",
    "A UFO run by a band of martian space pirates who abduct people for research and to sell off to the highest bidders. Such galactic greed!")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="DISCO MARCIANO"
desc="Um OVNI operado por um bando de piratas espaciais marcianos que sequestram pessoas para pesquisa e para vendê-las ao maior lance. Que ganância galáctica!"
break;
}	
	
break;
 case 12:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,12,"MERMAID KINGDOM",
    "To survive in this aquatic domain, you must prove yourself strong by engaging with its denizens in the culture of “beat ‘em up”. By the prince’s law: Power is beauty!")
	dataabilities=""
	
   switch(global.Language)
{
case 2:
name="MAR DO PRÍNCIPE"
desc="Para sobreviver neste domínio aquático, você precisa provar sua força enfrentando seus habitantes na cultura do 'bate-bate'. Pela lei do príncipe: Poder é beleza!"
break;
}	

break;
 case 13:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,13,"HOT DESERT RUINS",
    "Rumor has it that hidden amidst this desert and its brutal sandstorms lay an ancient temple, where a mystifying treasure sleeps…")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="DESERTO ARDENTE"
desc="Dizem que, escondido em meio a este deserto e suas brutais tempestades de areia, jaz um antigo templo, onde repousa um tesouro misterioso…"
break;
}		

break;
 case 14:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,14,"MT.REFLECT",
    "Em algum lugar nas alturas gélidas desta montanha, existe um palácio imaculado onde se diz que uma imperatriz e seu povo viveram por muito tempo e em prosperidade.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="MT.REFLECT"
desc="Dizem que, escondido em meio a este deserto e suas brutais tempestades de areia, jaz um antigo templo, onde repousa um tesouro misterioso…"
break;
}		

break;
 case 15:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,15,"DIAMOND MINES",
    "These caves seem like a simple goblin dig site at first glance, but those who delve deeper will be met with a surprise… One so big you may never leave…")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="MINAS DE DIAMANTES"
desc="À primeira vista, essas cavernas parecem um simples sítio de escavação de goblins, mas aqueles que se aventurarem mais fundo encontrarão uma surpresa… Uma surpresa tão grande que talvez nunca mais queiram sair…"
break;
}		
	

break;
 case 16:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,16,"CLOUDSVILLE",
    "A skybound land so bizarre it seems like a dream. Is it a dream? Or is it real? Is the castle ruled by a giant dragon lady real as well? We may never know…")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="VILLA NUBE"
desc="Uma terra suspensa no céu, tão bizarra que parece um sonho. Será um sonho? Ou será real? Será que o castelo governado por uma gigantesca dama dragão também é real? Talvez nunca saibamos…"
break;
}		

break;
 case 17:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,17,"FRAN LABS",
    "A huge facility run by Dr. Fran and maintained by funding gained from research on wild findings such as magical gems, artifacts and organic specimens.")
	dataabilities=""

   switch(global.Language)
{
case 2:
name="LABBORATÓRIO DO FRANS"
desc="Uma enorme instalação administrada pela Dr. Fran e mantida por financiamento obtido através de pesquisas sobre descobertas na natureza, como gemas mágicas, artefatos e espécimes orgânicos."
break;
}		

break;
 case 18:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,18,"THE BANDIT EMPEROR",
    "Van Bad’s blimp, this shockingly swift aircraft has allowed them to commit countless crimes all across the world while remaining just out of the law’s reach.")
	dataabilities=""
	
   switch(global.Language)
{
case 2:
name="O IMPERADOR BANDIDO"
desc="O dirigível de Van Bad, essa aeronave surpreendentemente veloz, permitiu que eles cometessem inúmeros crimes em todo o mundo, permanecendo fora do alcance da lei."
break;
}		
	
break;
 case 19:
descright=""
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,1,"",
    "")
	dataabilities=""
break;
}
charNO=0
}