///@description Decision Results
canSkipCutscene=2



///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage2b
	
switch(global.Language)
{
case 1: ////Espanol
languagedialogue[1]="SIGÁMOSLA."
languagedialogue[2]="¿SABES A DÓNDE VA?"
languagedialogue[3]="HAY UN AEROPUERTO CERCA. ASÍ QUE MÁS VALE IR A PIE."
languagedialogue[4]="¡VAMOS!"
languagedialogue[5]="¡OYE! ¡ESPERA! ¡TODAVÍA NO HE TERMINADO CON ELLA!"
languagedialogue[6]="¿EL AEROPUERTO? BUENO… SUPONGO QUE ES UN BUEN COMIENZO."
break;	
case 2: ////Portuguese
languagedialogue[1]="VAMOS SEGUIR ELA."
languagedialogue[2]="VOCÊ SABE ONDE ELA ESTÁ INDO?"
languagedialogue[3]="TEM UM AEROPORTO BEM PERTINHO. ENTÃO MELHOR IRMOS ANDANDO."
languagedialogue[4]="VAMBORA!"
languagedialogue[5]="EI! PERA AÍ! EU NÃO TERMINEI COM ELA AINDA!"
languagedialogue[6]="AEROPORTO? ATÉ QUE É UM BOM INÍCIO."
break;	
}
cutscenename="VIVA"
cutsceneline="LET'S FOLLOW HER."
if global.Language!=0 cutsceneline=languagedialogue[1]
timeline_position=10000

with diva1 {sprite_index=spr_viva_move image_speed=0.25 image_xscale=1
	hspeed=2

changespr=spr_viva_idle
changeimgspd=0.1
changeimpindex=0
loopimgchange=1
alarm[2]=40
alarm[5]=40
	}

}

if cutsceneDecmode=1
{CutsceneStage=rm_stage2
cutscenename="VIVA"
cutsceneline="HOLD IT RIGHT THERE!"

switch(global.Language)
{
case 1: ////Espanol
languagedialogue[1]="¡DETENTE AHÍ MISMO!"
languagedialogue[2]="...BIEN, ESTÁ BIEN. LLEVAMOS LAS COSAS AL BARCO QUE ESPERA JUNTO AL PUENTE, ¿CONTENTAS?"
languagedialogue[3]="SÉ DÓNDE ES. MALDICIÓN. PERO… ¿CÓMO SE SUPONE QUE VAMOS A LLEGAR…?"
languagedialogue[4]="OIGAN. ¡MIREN ALLÁ!"
languagedialogue[5]="...BUENO ENTONCES. ¿NOS VAMOS?"
break;	
case 2: ////Portuguese
languagedialogue[1]="VAI SE ANIMANDO NÃO!"
languagedialogue[2]="...OKAY. TÁ BOM. LEVAMOS A MERCADORIA PARA UM NAVIO ANCORADO PERTO DA PONTE, FELIZ AGORA?"
languagedialogue[3]="EU SEI ONDE É. CARAMBA. MAS COMO A GENTE VAI CHEGAR ATÉ LÁ...?"
languagedialogue[4]="EI. OLHA BEM ALÍ!"
languagedialogue[5]="...OKAY ENTÃO. TODOS A BORDO?"
break;	
}if global.Language!=0 cutsceneline=languagedialogue[1]

with diva1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}

}

if cutsceneDecmode=2
{CutsceneStage=rm_stage2c
cutscenename="VIVA" 
timeline_position=20000
with diva1
{sprite_index=spr_viva_cutscene image_index=0}
with diva2 {sprite_index=spr_hina_idle image_index=0}
with diva3 {sprite_index=spr_bahati_cutscene image_index=0}
with diva4 {sprite_index=spr_sofia_wildtake image_index=0}

cutsceneline="...LET HER GO. SHE'S NOT WORTH IT."

switch(global.Language)
{
case 1: ////Espanol
languagedialogue[1]="...DÉJENLA IR. NO VALE LA PENA."
languagedialogue[2]="OYE… SE LE CAYÓ ESO."
languagedialogue[3]="ES SOBRE UN TREN… LLAMADO EL LOCO DOS."
languagedialogue[4]="¡ESOS IDIOTAS! ¿TAMBIÉN VAN A ROBAR UN TREN?"
languagedialogue[5]="¡AY DIOS! ¡SALDRÁ PRONTO! PERO LOS BOLETOS ESTÁN AGOTADOS."
languagedialogue[6]="OH, VAYA… ¿CÓMO SE SUPONE QUE VAMOS A SEGUIRLOS AHORA?"
languagedialogue[7]="¡TENGO UNA IDEA!"
languagedialogue[8]="...¿QUÉ COSA? ¿HINA, VERDAD?"
languagedialogue[9]="TENGO FORMAS DE SUBIR A VIAJES CUANDO PIERDO UN BOLETO."
languagedialogue[10]="¿Y ESA ES…?"
languagedialogue[11]="¡¿ESTA ES TU IDEA?! ¡NO PUEDO SENTIR MIS PIERNAS!"
languagedialogue[12]="¿NO SON TODAS TAN FLEXIBLES?"
languagedialogue[13]="DISCÚLPENME… ¡PERO ESTO ESTÁ MUY APRETADO!"
languagedialogue[14]="¡AHORA ME PREGUNTO CÓMO NOS METISTE A TODAS AQUÍ! ¿Y DE QUIÉN ES ESTE PIE?"
languagedialogue[15]="ES MÍO."
languagedialogue[16]="¡NO PUEDO SOPORTARLO MÁS! ¡QUIERO SALIR!"

break;

case 2: ////Portuguese
languagedialogue[1]="...DEIXA ELA IR. NÃO VALE O ESFORÇO."
languagedialogue[2]="OLHA... ELA DEIXOU ISSO CAIR."
languagedialogue[3]="É SOBRE UM TREM... CHAMADO LOCO DOS."
languagedialogue[4]="ESSES MALANDROS! VÃO FAZER UM ASSALTO A TREM TAMBÉM?"
languagedialogue[5]="MINHA NOSSA! VAI PARTIR AGORINHA! E OS INGRESSOS ESTÃO ESGOTADOS."
languagedialogue[6]="MAS QUE SACO... COMO VAMOS ALCANÇAR ELES AGORA?"
languagedialogue[7]="ACHO QUE EU TENHO UMA IDEIA!"
languagedialogue[8]="...SÉRIO, HINA? QUE IDEIA?"
languagedialogue[9]="EU TENHO MEU JEITINHO DE VIAJAR QUANDO PERCO O BILHETE."
languagedialogue[10]="QUE É...?"
languagedialogue[11]="ESSA É A SUA IDEIA?! EU NÃO SINTO MINHAS PERNAS!"
languagedialogue[12]="VOCÊS NÃO SÃO MUITO FLEXÍVEIS, NÉ?"
languagedialogue[13]="PERDÃO... MAS TÁ MUITO APERTADO!"
languagedialogue[14]="TO ME PERGUNTANDO COMO VOCÊ ENCAIXOU A GENTE NISSO! E DE QUEM É ESSE PÉ?"
languagedialogue[15]="É MEU."
languagedialogue[16]="EU NÃO AGUENTO MAIS! EU QUERO SAIR!"

break;	
}if global.Language!=0 cutsceneline=languagedialogue[1]

paper=instance_create_depth(792, diva1.y,-1,oFlashFX);
with paper {alarm[0]=-1 animEnd=0 sprite_index=spr_prop16 isDepth=0 depth=-10
	image_speed=0 image_index=0
	}

}
arcade_saving(CutsceneStage)
//cutscenename="VIVA"
//cutsceneline="WHAT?!"
