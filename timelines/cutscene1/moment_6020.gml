///@description Decision Results
canSkipCutscene=2



///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage2b
	
switch(global.Language)
{
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
