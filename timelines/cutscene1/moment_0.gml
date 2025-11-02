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





