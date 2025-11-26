//background_
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[1]=1 feats_check(43);

layer_hspeed("BGcity",-0.5)

if global.CutsceneSkip=0
{canSkipCutscene=1
scene2=instance_create_depth(-32-120,64,-1,oFlashFX);
with scene2 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_cutscene1a}
scene1=instance_create_depth(160-64-64,4+60,0,oFlashFX);
with scene1 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0.05 sprite_index=spr_cutscene1 vspeed=-1 hspeed=1
	image_index=1 loopimg=1
	}

musicplaystart(msc_countdown)

layer_set_visible("BTG0",0)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)
layer_set_visible("BTG5",0)
}
else
{layer_hspeed("BGcity",0)
cutscenename=""
cutsceneline=""
timeline_position=99997
blackbg=instance_create_depth(160,120,50,oFlashFX);
with blackbg {haspal=0 alarm[0]=4 depth=-999999999 isDepth=0 animEnd=0 image_speed=0 image_blend=c_black sprite_index=mask_small image_xscale=9999 image_yscale=8888}
stageIntro=0
}




switch(global.Language)
{
case 1: ////Portuguese

CDtextT="¡LADY WOLF SE ESTÁ\nESCAPANDO! ¿QUÉ HARÁS?"
CDtextA="SEGUIRLA."
CDtextB="DETENERLA."
CDtextC="DEJARLA IR."

languagedialogue[1]="BIEN. ¿A DÓNDE SE FUE ESE CAMIÓN? ¡HABLA, PERRITA!"
languagedialogue[2]="¡H-Hey! ¡QUÉ DESCARADA!"
languagedialogue[3]="¡Y NO SERÉ MÁS AMABLE HASTA QUE ME DIGAS ADÓNDE SE LLEVARON MI DIAMANTE!"
languagedialogue[4]="OIGA SEÑORITA, ¿POR QUÉ NO SE CALMA? YA LES DIMOS SU BUENA PALIZA."
languagedialogue[5]="AH CIERTO. USTEDES TRES… TAMBIÉN LES ROBARON SUS COSAS."
languagedialogue[6]="SÍ… ¿Y ELLA NO PARECE MUY DISPUESTA A HABLAR…"
languagedialogue[7]="OH, ¡PERMÍTANME! YO SÉ UNA BUENA FORMA DE PERSUADIRLAS."
languagedialogue[8]="¿A DÓNDE SE LLEVARON MI TESORO? ¡HABLA, PERRA, O TE METO MI PATA POR EL-"
languagedialogue[9]="¡GUCK! ¡GACK!- ¡MUÉRDANME!"
languagedialogue[10]="O-OYE, ESO SUENA UN POCO FUERTE…"
languagedialogue[11]="VAMOS, NO TIENE SENTIDO SEGUIR GOLPEANDO A UNA PERRA MEDIO MUERTA SI QUIERES RESPUESTAS."
languagedialogue[12]="EH… ¿PERDÓN?"
languagedialogue[13]= "MÍRELA, ¡YA TUVO SUFICIENTE! LA INTERROGACIÓN BRUTA NO SIEMPRE FUNCIONA. ¿NO LO HA VISTO EN LAS PELÍCULAS?"
languagedialogue[14]="¿ENTONCES QUÉ SUGIERES?"
languagedialogue[15]= "¡OH! ¡USTEDES DOS PUEDEN HACER DE POLICÍA BUENA Y POLICÍA MALA!"
languagedialogue[16]= "¡YO SOY LA POLICÍA BUENA! ¡PRIMERO!"
languagedialogue[17]="¿QUÉ-? ¿CUÁNTOS AÑOS CREES QUE TENEMOS, 5?!"
languagedialogue[18]="YO IBA A SUGERIR QUE USÁRAMOS UN SILBATO PARA PERROS."
//(the divas start arguing)
languagedialogue[19]="¿UN SILBATO PARA PERROS?!"
languagedialogue[20]="¡ESO ES RIDÍCULO! ¿CÓMO VA A AYUDAR ESO?"
languagedialogue[21]="¿CÓMO QUE NO? ¡ES UNA BUENA IDEA!"
languagedialogue[22]="SUENA TONTO, PERO… ES UN POCO-"
languagedialogue[23]="ME GUSTA ESE PLAN, PERO OYE-"
languagedialogue[24]="¡YO TENGO UN MEJOR PLAN! Y SE TRATA DE-"
languagedialogue[25]= "¡NO, YO TENGO UN PLAN MEJOR! Y ES-"
languagedialogue[26]="EH… ¿CHICAS?"
languagedialogue[27]= "¡YO TENGO UNA IDEA! ¡Y VOY A-"
languagedialogue[28]="(SEGUIMOS DISCUTIENDO)"
languagedialogue[29]="OH, ¿PUEDO DECIR UNA COSA MÁS?"
languagedialogue[30]="...¿QUÉ COSA?"
languagedialogue[31]="LA SEÑORA LOBA YA NO ESTÁ."
languagedialogue[32]="¿¡QUÉ!?"
languagedialogue[33]="¡HEY! ¡DETENTE!"

cutsceneline=languagedialogue[1]

break;	

case 2: ////Portuguese

CDtextT="LADY WOLF ESTÁ FUGINDO!\nO QUE VOCÊ VAI FAZER?"
CDtextA="SEGUIR ELA."
CDtextB="IMPEDIR ELA."
CDtextC="POUPAR ELA."

languagedialogue[1]="BELEZA. PRA ONDE O CAMINHÃO FOI? ABRE O BICO CACHORRA!"
languagedialogue[2]="E-EII! ISSO É GROSSERIA!"
languagedialogue[3]="E EU NÃO VOU PEGAR LEVE ATÉ VOCÊ ME DIZER PRA ONDE LEVARAM MEU DIAMANTE!"
languagedialogue[4]="Ô GAROTA. TALVEZ SEJA MELHOR SE ACALMAR. ELA JÁ FOI ESPANCADA O BASTANTE."
languagedialogue[5]="AH É. VOCÊS TRÊS. SUAS COISAS TAMBÉM FORAM ROUBADAS."
languagedialogue[6]="POIS É... E OS LÁBIOS DESSA AÍ PARECEM ESTAR BEM SELADOS..."
languagedialogue[7]="OH~HOHO, PERMITA-ME! DE PERSUASÃO EU ENTENDO BEM."
languagedialogue[8]="PRA ONDE FOI O MEU TESOURO?! COMEÇE A HABLAR, PERRA, OU O MEU PÉ VAI PARAR DENTRO DO TEU-"
languagedialogue[9]="URGH! GHAK!- CAI DENTRO!"
languagedialogue[10]="UAU, ISSO NÃO É MEIO BRUTAL?"
languagedialogue[11]= "QUALÉ, NÃO TEM PRA QUE BATER EM CACHORRO MORTO PRA CONSEGUIR RESPOSTAS."
languagedialogue[12]= "HMM... COM LICENÇA?"
languagedialogue[13]= "OLHA SÓ PRA COITADA, JÁ TEVE O SUFICIENTE. INTERROGATÓRIO AGRESSIVO NEM SEM FUNCIONA. NUNCA VIU NOS FILMES?"
languagedialogue[14]="BEM, ENTÃO O QUE VOCÊ SUGERE?"
languagedialogue[15]= "ÚH, VOCÊS DUAS PODEM BANCAR A POLICIAL MÁ E A POLICIAL BOA!"
languagedialogue[16]= "POLICIAL BOA! FALEI PRIMEIRO!"
languagedialogue[17]="QUE- QUANTOS ANOS VOCÊ ACHA QUE TEM? 5!?"
languagedialogue[18]="EU IA SUGERIR USAR UM APITO DE CACHORRO."
//(the divas start arguing)
languagedialogue[19]="APITO DE CACHORRO?!"
languagedialogue[20]="ISSO É RIDÍCULO, COMO ISSO VAI AJUDAR?"
languagedialogue[21]="COMO ASSIM?! É UMA EXCELENTE IDÉIA!"
languagedialogue[22]="ISSO PARECE MEIO BOBO, MAS... SABE COMO É..."
languagedialogue[23]="GOSTO DESSE PLANO... MAS SEI LÁ..."
languagedialogue[24]="OLHA, TENHO UM PLANO MELHOR! E É TIPO..."
languagedialogue[25]="NÃO, EU QUE TENHO UM PLANO MELHOR! E É..."
languagedialogue[26]="UH... SENHORITAS?"
languagedialogue[27]="TENHO UMA IDÉIA! E VOU..."
languagedialogue[28]="(BAITA DEBATE)"
languagedialogue[29]="OPA, POSSO FALA MAIS UMA COISINHA TAMBÉM?"
languagedialogue[30]="...O QUE É?"
languagedialogue[31]="A LOBINHA FOI PASSEAR."
languagedialogue[32]="COMO É QUE É?!"
languagedialogue[33]="PARADA JÁ AÍ!"

cutsceneline=languagedialogue[1]

break;
}





