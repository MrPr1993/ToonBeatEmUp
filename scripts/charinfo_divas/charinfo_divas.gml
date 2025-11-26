// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_divas(){
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
 hp=1;
descleft=string(_ageT)+":35\nNAT.:USA\n"+string(_heightT)+":5'10"+" "+string(_weightT)+":160LBS"
descright=+string(_likesT)+":DINING,RABBITS\n"+string(_dislikesT)+":MISFORTUNE\n"+string(_hobbyT)+":PAINTING"
  charinfo_set(1,spr_viva_stand,1,animsetup_viva,draw_enemy,spr_playerpal,0,spr_playerface,0,"VIVA VEGAS",
    "LOVELY, BUT TEMPERAMENTAL, VIVA'S SINGING IS ELECTRIFYING IN MORE WAYS THAN ONE! THOUGH HER LUCK IS... SOUR...")
	dataabilities="LIGHTNING,SING,BALLET,\nCOOKING,CHESS,FILMS"
switch(global.Language)
{
case 1:
descright=+string(_likesT)+":CENANDO,CONEJOS\n"+string(_dislikesT)+":MISFORTUNA\n"+string(_hobbyT)+":PINTANDO"
desc="ENCANTADORA, PERO TEMPERAMENTAL, ¡EL CANTO DE VIVA ES ELECTRIZANTE EN MÁS DE UNA FORMA! AUNQUE SU SUERTE ES... AGRIA..."
	dataabilities="RAIO,CANTAR,BALÉ,\nCOZINHAR,XADREZ,FILMES"
	break;

case 2:
descright=+string(_likesT)+":JANTAR,COELHOS\n"+string(_dislikesT)+":DESGRAÇA\n"+string(_hobbyT)+":PINTURA"
desc="AMÁVEL, MAS TEMPERAMENTAL, A MELODIA DE VIVA É ELETRIZANTE EM MAIS DE UM SENTIDO! AINDA QUE SUA SORTE SEJA... MAGRA..."
	dataabilities="RAIO,CANTAR,BALÉ,\nCOZINHAR,XADREZ,FILMES"
	break;
}
break;
  case 2:
  hp=1;
  descleft=string(_ageT)+":DRAGON\nNAT.:JAPAN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":100LBS"
  descright=+string(_likesT)+":SEAFOOD,CATS\n"+string(_dislikesT)+":SPICE\n"+string(_hobbyT)+":NAPPING"
    charinfo_set(2,spr_hina_stand,1,animsetup_hina,draw_enemy,spr_playerpal,0,spr_playerface,1,"HINA TATSUO",
  "HEAD TENDS TO BE IN THE CLOUDS, BUT SHE'S GOT STRETCHINESS AND A DRAGON'S FIRE ON HER SIDE! BIZARRE...")
  dataabilities="FIRE,ELASTICITY,YOGA,\nPOEMS,FISHING,PINBALL"
 switch(global.Language)
{
case 1:
  descleft=string(_ageT)+":DRAGÓN\nNAT.:JAPÓN\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":100LBS"
  descright=+string(_likesT)+":MARISCOS,GATOS\n"+string(_dislikesT)+":ESPECIA\n"+string(_hobbyT)+":SIESTAS"
desc= "A MENUDO TIENE LA CABEZA EN LAS NUBES, ¡PERO TIENE ELASTICIDAD Y EL FUEGO DE UN DRAGÓN DE SU LADO! QUÉ RARA..."
  dataabilities="FUEGO,ELASTICIDAD,YOGA,\nPOEMAS,PESCA,PINBALL"
	break;	

case 2:
  descleft=string(_ageT)+":DRAGÃO\nNAT.:JAPÃO\n"+string(_heightT)+":6'2"+" "+string(_weightT)+":100LBS"
  descright=+string(_likesT)+":MARISCOS,GATOS\n"+string(_dislikesT)+":ESPECIARIAS\n"+string(_hobbyT)+":COSTINHO"
desc="COM UMA CABEÇA QUE TENDE A ESTAR NAS NUVENS, MAS COM SUA FLEXIBILIDADE E AS CHAMAS DE UM DRAGÃO AO SEU LADO! BIZARRO..."
  dataabilities="FOGO,ELASTICIDADE,IOGA,\nPOEMAS,PESCA,PINBALL"
	break;
}
  
break;
  case 3:
  hp=1;
  descleft=string(_ageT)+":27\nNAT.:NIGERIA\n"+string(_heightT)+":6'0"+" "+string(_weightT)+":260LBS"
  descright=+string(_likesT)+":HELPING,OWLS\n"+string(_dislikesT)+":FROGS\n"+string(_hobbyT)+":WORKOUTS"
 charinfo_set(3,spr_bahati_stand,1,animsetup_bahati,draw_enemy,spr_playerpal,0,spr_playerface,2,"BAHATI ABARA",
"LARGE N' HAMMY! SHE'S QUITE THE BRUISER DUE TO HER SIZE AND WRESTLING PROWESS. BUT UNDER THAT GIRTH LIES A BIG HEART.")
  dataabilities="EARTH,WRESTLING,STAMINA,\nHISTORY,QUILTS,MEDICINE"
  switch(global.Language)
{
case 1:
  descright=+string(_likesT)+":AYUDAS,BÚHOS\n"+string(_dislikesT)+":RANAS\n"+string(_hobbyT)+":EJERCISIOS"
desc= "¡GRANDE Y TEATRAL! ES TODA UNA TANQUETA POR SU TAMAÑO Y SU DESTREZA DE LUCHADORA. PERO BAJO ESA CORPULENCIA HAY UN GRAN CORAZÓN."
  dataabilities="TIERRA,LUCHA,RESISTENCIA,\nHISTORIA,COLCHAS,MEDICINA"

case 2:
  descright=+string(_likesT)+":AJUDANDO,CORUJAS\n"+string(_dislikesT)+":SAPOS\n"+string(_hobbyT)+":EXERCÍCIOS"
desc= "GRANDE E RECHONCHUDA! É UMA BAITA DE UMA BRUTAMONTE DEVIDO AO SEU TAMANHO E HABILIDADES MARCIAIS. MAS ABAIXO DE TANTOS MÚSCULOS SE ENCONTRA UM GRANDE CORAÇÃO."
  dataabilities="TERRA,LUTA LIVRE,RESISTÊNCIA,\nHISTÓRIA,COLCHA,MEDICINA"
	break;
}
  
break;
 case 4:
 hp=1;
 descleft=string(_ageT)+":28\nNAT.:MEXICO\n"+string(_heightT)+":5'2"+" "+string(_weightT)+":110LBS"
 descright=+string(_likesT)+":PARTIES,DOGS\n"+string(_dislikesT)+":CHEATERS\n"+string(_hobbyT)+":GYMNASTICS"
 charinfo_set(4,spr_sofia_stand,1,animsetup_sofia,draw_enemy,spr_playerpal,0,spr_playerface,3,"SOFIA MORENO",
"AS SPICY AS SHE IS DARING, SOFIA PARTIES DOWN TO TRIP UP ENEMIES WITH FOOTWORK SO FAST, YOU'D THINK SHE'S THE WIND!")
  dataabilities="WIND,ACROBATICS,SPEED,\nGARDENING,BOUNCING,BREW"
  
   switch(global.Language)
{
case 1:
 descright=+string(_likesT)+":FIESTAS,PERROS\n"+string(_dislikesT)+":TRAMPOSOS\n"+string(_hobbyT)+":GIMNASIAS"
desc="TAN PICANTE COMO ATREVIDA, SOFIA FIESTEA MIENTRAS HACE TROPEZAR A SUS ENEMIGOS CON UN JUEGO DE PIES TAN RÁPIDO QUE PARECE EL VIENTO."
  dataabilities="VIENTO,ACROBACIAS,VELOCIDAD,\nJARDINERÍA,SALTOS,CERVEZA"
	break;	

case 2:
 descright=+string(_likesT)+":FESTAS,CACHORROS\n"+string(_dislikesT)+":TRAPACEIRAS\n"+string(_hobbyT)+":GINÁSTICAS"
desc="TÃO PICANTE QUANTO OUSADA, SOFIA DERROTA SEUS INIMIGOS USANDO APENAS SEUS PARES DE PERNAS E COXAS TÃO VELOZES QUANTO O VENTO!"
  dataabilities="VENTO,ACROBACIAS,VELOCIDADE,\nJARDINAGEM,SALTO,CERVEJA"
	break;
}
  
break;

}
charNO=0
}