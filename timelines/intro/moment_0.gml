//layer_hspeed("BGcity",-0.5)

//scene2=instance_create_depth(0,0,-1,oFlashFX);
//with scene2 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_cutscene1a} newsShow=0

switch (global.Language)
{
case 1: ////Espanol
languagedialogue[1]="AH, LA HERMOSA VIVA, ¡PROVENIENTE DE LAS VEGAS!"
languagedialogue[2]="¿UNA BELLEZA ELECTRIZANTE, VERDAD? ELLA DESLUMBRARÁ CON SU GLAMUR A TRAVÉS DE SUS CANCIONES."
languagedialogue[3]="¡Y LA MARAVILLOSA HINA! ¡ELLA VINO DE JAPÓN PARA ACTUAR TAMBIÉN!"
languagedialogue[4]="Y TIENE UNA PERSONALIDAD MUY FLEXIBLE. ¡ELLA TRAERÁ EL CALOR!"
languagedialogue[5]="¡LA INCREÍBLE BAHATI! ¡ELLA VINO DESDE NIGERIA PARA UNIRSE A NOSOTROS!"
languagedialogue[6]="UN PRODIGIO DE FUERZA TERRENAL, ¡ES UNA CHICA FABULOSA!"
languagedialogue[7]="Y NO OLVIDEMOS A SOFIA, ¡UNA BELLA ENCANTADORA DE MÉXICO!"
languagedialogue[8]="¡ELLA SABE CÓMO HACERTE CORRER COMO EL VIENTO PARA IR HACIA ELLA!"
languagedialogue[9]="LAS CUATRO VINIERON A ESTE LUGAR PARA UNA PRESENTACIÓN, ¡Y CADA UNA TRAJO UN TESORO SAGRADO CONSIGO! ¡TIENEN BUEN OJO, ¿NO?"
languagedialogue[10]="¡HOY SERÁ EL MEJOR ESPECTÁCULO DE TODOS! ¡QUE TENGAN UNA MUY BUENA NOCHE!"
languagedialogue[11]="OH SÍ… UNA NOCHE MUY BUENA, SIN DUDA… Y AHÍ ESTÁN. JUSTO AHÍ, BOTÍN FÁCIL, FÁCIL…"
languagedialogue[12]="¡MÁS RELIQUIAS ANTIGUAS PARA COLECCIONAR!"
languagedialogue[13]="¡JAJAJAJAJAJA!"
languagedialogue[14]="¡ES HORA DEL SHOW!"
break;

case 2: ////Portuguese
languagedialogue[1]="AH, A AMÁVEL VIVA, DESFILANDO DESDE LAS VEGAS!"
languagedialogue[2]="UMA BELEZA ELETRIZANTE, NÃO CONCORDA? E TRAZ CONSIGO GLAMOUR COM DE SUAS MÚSICAS."
languagedialogue[3]="A MARAVILHOSA HINA! VEIO DIRETO DO JAPÃO PARA SE APRESENTAR TAMBÉM!"
languagedialogue[4]="E COM UMA PERSONALIDADE BASTANTE FLEXÍVEL. ELA IRÁ ESQUENTAR O CLIMA!"
languagedialogue[5]="A FABULOSA BAHATI! ELA CHEGOU DA NIGÉRIA PARA SE JUNTAR A NÓS!"
languagedialogue[6]="PODEROSA COMO UMA FORÇA DA NATUREZA, QUE MULHERÃO!"
languagedialogue[7]="E SERIA UM CRIME ESQUECER DA SOFIA! A BELDADE VINDA DO MÉXICO!"
languagedialogue[8]="ELA SABE COMO TE DEIXA DE JOELHOS TÃO RAPIDO QUANTO O VENTO!"
languagedialogue[9]="AS QUATRO SE UNIRAM AQUI PARA FAZER UMA PERFORMANCE! E CADA UMA TROUXE UM TESOURO SAGRADO CONSIGO! UM BRILHO AOS OLHOS, NÃO?"
languagedialogue[10]="AQUI E AGORA, ACONTECERÁ O MAIOR SHOW DE TODOS OS TEMPOS! TENHAM UMA EXCELENTE NOITE!"
languagedialogue[11]= "SIM...UMA EXCELENTE NOITE DE FATO... E LÁ ESTÃO ELAS. FÁCIL COMO ROUBAR DOCE DE BEBÊ!"
languagedialogue[12]="MAIS RELÍQUIAS PARA COLECIONAR!"
languagedialogue[13]="HAHAHAHAHAHA!!!"
languagedialogue[14]="O ESPETÁCULO VAI COMEÇAR!"
break;
}



instance_create_depth(0,0,-1,oTextBox)

oControl.circlerepos=120;

newsBox=0
newsText=0

scene1=instance_create_depth(0,0,0,oFlashFX);
with scene1 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_introfilm}

PlaySound(snd_film1)

arr=instance_create_depth(160,120,-1,oAlphaFadeFX) 
with arr
{
sprite_index=spr_introarrow
image_speed=0 image_alpha=1
monochrome=0 image_angle=90
SpinMode=1
SpinSpd=-4.5
}

//timeline_position=2500 arr.x=99999 mono=arr

