// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function language_check(){
	
commandL[30]=0	

commandL_check()	
	

if object_index=oControl
{
switch(room)
{
case rm_menu: switch (global.Language){
case 0:
languagetext[0]="FIGHT IN ALL STAGES IN ARCADE MODE!"
languagetext[1]="ARCADE MODE"
languagetext[2]="SELECT ONE STAGE TO REPLAY!"
languagetext[3]="STAGE SELECT"
languagetext[4]="CHECK WHAT YOU EARNED IN THE GAME!"
languagetext[5]="ACHIEVEMENTS"
languagetext[6]="RECONFIGURE YOUR GAME!"
languagetext[7]="SETTINGS"
languagetext[8]="VISIT BETTY O'HARA AND BUY ITEMS!"
languagetext[9]="SHOP"
languagetext[10]="PRACTICE YOUR DIVA'S SKILLS!"
languagetext[11]="TRAINING"
languagetext[12]="PLAY SOME GAMES OR FIGHT EACH OTHER!"
languagetext[13]="MINIGAMES & VS"
languagetext[14]="CHECK DATA OF THE CHARACTERS & STAGES!"
languagetext[15]="PROFILE & INFO"
languagetext[16]="CHECK THE ARTWORK AND CONCEPT ART!"
languagetext[17]="GALLERY"
languagetext[18]="PLAY SONGS AND TEST SOUNDS!"
languagetext[19]="SOUND TEST"
languagetext[20]="WATCH THE MORE CINEMATIC CUTSCENES!"
languagetext[21]="CUTSCENES"
languagetext[22]="CHECK OUT WHO'S ON TOP!"
languagetext[23]="HIGH SCORE"
languagetext[24]="WORLD TOUR"
languagetext[25]="MOVE"
break;	
case 1: ////SPANISH
languagetext[0]="¡LUCHA EN TODAS LAS ETAPAS EN EL MODO ARCADE!"
languagetext[1]="MODO ARCADE"
languagetext[2]="¡SELECCIONA UNA ETAPA PARA REPETIR!"
languagetext[3]="SELECCIÓN DE ETAPA"
languagetext[4]="¡REVISA LO QUE HAS GANADO EN EL JUEGO!"
languagetext[5]="LOGROS"
languagetext[6]="¡RECONFIGURA TU JUEGO!"
languagetext[7]="AJUSTES"
languagetext[8]="¡VISITA A BETTY O'HARA Y COMPRA ARTÍCULOS!"
languagetext[9]="TIENDA"
languagetext[10]="¡PRÁCTICA LAS HABILIDADES DE TU DIVA!"
languagetext[11]="ENTRENAMIENTO"
languagetext[12]="¡JUEGA MINIJUEGOS O ENFRÉNTENSE ENTRE USTEDES!"
languagetext[13]="MINIJUEGOS Y VS"
languagetext[14]="¡REVISA LOS DATOS DE LOS PERSONAJES Y ESCENARIOS!"
languagetext[15]="PERFIL E INFORMACIÓN"
languagetext[16]="¡REVISA EL ARTE Y LOS CONCEPTOS!"
languagetext[17]="GALERÍA"
languagetext[18]="¡REPRODUCE CANCIONES Y PRUEBA SONIDOS!"
languagetext[19]="PRUEBA DE SONIDO"
languagetext[20]="¡MIRA LAS ESCENAS CINEMÁTICAS!"
languagetext[21]="CINEMATICAS"
languagetext[22]="¡REVISA QUIÉN ESTÁ EN LA CIMA!"
languagetext[23]="PUNTUACIÓN ALTA"
languagetext[24]="GIRA MUNDIAL"
languagetext[25]="MOVER"
break;
case 2: //PORTUGUÊSE
languagetext[0]="LUTE EM TODOS OS NÍVEIS NO MODO ARCADE!"
languagetext[1]="MODO ARCADE"
languagetext[2]="SELECIONE UM ESTÁGIO PARA REJOGAR!"
languagetext[3]="SELEÇÃO DE PALCO"
languagetext[4]="VEJA O QUE VOCÊ GANHOU NO JOGO!"
languagetext[5]="CONQUISTAS"
languagetext[6]="RECONFIGURE SEU JOGO!"
languagetext[7]="CONFIGURAÇÕES"
languagetext[8]="VISITE BETTY O'HARA E COMPRE ITENS!"
languagetext[9]="LOJA"
languagetext[10]="PRATIQUE SUAS HABILIDADES DE DIVA!"
languagetext[11]="TREINAMENTO"
languagetext[12]="JOGUE ALGUNS JOGOS OU ENFRENTE OUTROS!"
languagetext[13]="MINIJOGOS & VS"
languagetext[14]="VEJA OS DADOS DOS PERSONAGENS E PALCOS!"
languagetext[15]="PERFIL E INFO"
languagetext[16]="VEJA A ARTE E O ARTE CONCEITUAL!"
languagetext[17]="GALERIA"
languagetext[18]="TOQUE MÚSICAS E TESTE SONS!"
languagetext[19]="TESTE DE SOM"
languagetext[20]="ASSISTA AS CENAS MAIS CINEMÁTICAS!"
languagetext[21]="CENAS"
languagetext[22]="CONFIRA QUEM ESTÁ NO TOPO!"
languagetext[23]="PONTUAÇÃO TOTAL"
languagetext[24]="TURNÊ MUNDIAL"
languagetext[25]="MOVER"
break;
}

}
}
if object_index=oSettings
{
switch (global.Language){
case 0:
languagetext[0]="SETTINGS"
languagetext[1]="MUSIC VOLUME"
languagetext[2]="SFX VOLUME"
languagetext[3]="ASPECT RATIO"
languagetext[4]="CRT STYLE"
languagetext[5]="CRT DISTORT"
languagetext[6]="CRT DISTORT LEVEL"
languagetext[7]="CRT BORDER LEVEL"
languagetext[8]="COLOR SETTINGS"
languagetext[9]="SCREEN LAYER"
languagetext[10]="SCREEN SHAKE"
languagetext[11]="SCREEN FLASH"
languagetext[12]="STARTING LIVES"
languagetext[13]="CUTSCENE SKIP"//"CONTINUES"
languagetext[14]="CONTROLLER" ///Control settings
languagetext[15]="NONE"
languagetext[16]="CUSTOM"
languagetext[17]="MODE"
languagetext[18]="ON"
languagetext[19]="OFF"
languagetext[20]="DEFAULT"
languagetext[21]="MONOCHROME"
languagetext[22]="SEPIA"
languagetext[23]="2-STRIP"
languagetext[24]="ONE-COLOR"
languagetext[25]="FASH"
languagetext[26]="ARCADE"
languagetext[27]="ROOM"
languagetext[28]="INFINITE"
languagetext[29]="SETUP"
languagetext[30]="PLAYER"
languagetext[31]="INSTANT"
languagetext[32]="LANGUAGE"
languagetext[33]="ENGLISH"
languagetext[34]="ROOM NIGHT"
languagetext[35]="SHOW MONEY"
languagetext[36]="SHOW ACHIEVEMENT"
languagetext[37]="OLD LCD"
languagetext[38]="MASTER VOLUME"
languagetext[39]="SETTINGS"
languagetext[40]="SETTINGS"
break;
case 1: ///ESPAÑOL
languagetext[0]="AJUSTES"
languagetext[1]="VOLUMEN DE MÚSICA"
languagetext[2]="VOLUMEN DE SFX"
languagetext[3]="RELACIÓN DE ASPECTO"
languagetext[4]="ESTILO CRT"
languagetext[5]="CRT DISTORSIÓN"
languagetext[6]="NIVEL DE DISTORSIÓN CRT"
languagetext[7]="NIVEL DE BORDE CRT"
languagetext[8]="AJUSTES DE COLOR"
languagetext[9]="CAPA DE PANTALLA"
languagetext[10]="PANTALLA MOVIDA"
languagetext[11]="PANTALLA FLASH"
languagetext[12]="COMENZANDO VIDAS"
languagetext[13]="SALTO DE ESCENA"
languagetext[14]="CONFIGURACIÓN" ///Configuración de control
languagetext[15]="NINGUNO"
languagetext[16]="PERSONALIZADO"
languagetext[17]="MODO"
languagetext[18]="ON"
languagetext[19]="DESACTIVADO"
languagetext[20]="DEFAULT"
languagetext[21]="MONOCROMO"
languagetext[22]="SEPIA"
languagetext[23]="2-STRIP"
languagetext[24]="UN COLOR"
languagetext[25]="FASH"
languagetext[26]="ARCADA"
languagetext[27]="SALA"
languagetext[28]="INFINITO"
languagetext[29]="DE CONTROL"
languagetext[30]="JUGADOR"
languagetext[31]="INSTANTE"
languagetext[32]="LENGUAJE"
languagetext[33]="ESPAÑOL"
languagetext[34]="SALA NOCHE"
languagetext[35]="MOSTRAR DINERO"
languagetext[36]="MOSTRAR LOGROS"
languagetext[37]="LCD VIEJO"
languagetext[38]="VOLUMEN MAESTRO"
languagetext[39]="AJUSTES"
languagetext[40]="AJUSTES"
break;
case 2: //PORTUGUÊSE
languagetext[0]="CONFIGURAÇÕES"
languagetext[1]="VOLUME DA MÚSICA"
languagetext[2]="VOLUME DOS SONS"
languagetext[3]="PROPORÇÃO DA IMAGEM"
languagetext[4]="ESTILO CRT"
languagetext[5]="DISTORÇÃO CRT"
languagetext[6]="NÍVEL DE DISTORÇÃO CRT"
languagetext[7]="NÍVEL DE BORDAS CRT"
languagetext[8]="CONFIGURAÇÕES DE COR"
languagetext[9]="CAMADA DA TELA"
languagetext[10]="VIBRAÇÃO DA TELA"
languagetext[11]="FLASH DA TELA"
languagetext[12]="VIDAS INICIAIS"
languagetext[13]="PULAR CENA"//"CONTINUES"
languagetext[14]="CONTROLE" ///Control settings
languagetext[15]="NENHUM"
languagetext[16]="PERSONALIZADO"
languagetext[17]="MODO"
languagetext[18]="LIGADO"
languagetext[19]="DESLIGADO"
languagetext[20]="PADRÃO"
languagetext[21]="MONOCROMÁTICO"
languagetext[22]="SÉPIA"
languagetext[23]="2 FAIXAS"
languagetext[24]="UMA-COR"
languagetext[25]="FASH"
languagetext[26]="ARCADE"
languagetext[27]="SALA"
languagetext[28]="INFINITO"
languagetext[29]="CONFIGURAÇÃO"
languagetext[30]="JOGADOR"
languagetext[31]="INSTANTE"
languagetext[32]="LANGUAGEM"
languagetext[33]="PORTUGUÊSE"
languagetext[34]="SALA NOTURNA"
languagetext[35]="MOSTRAR DINHEIRO"
languagetext[36]="MOSTRAR CONQUISTA"
languagetext[37]="VELHO LCD"
languagetext[38]="VOLUME MESTRE"
languagetext[39]="CONFIGURAÇÕES"
languagetext[40]="CONFIGURAÇÕES"
break;
}
}
if object_index=oCharacterInfo
{
switch (global.Language){
case 0:
languagetext[0]="DIVAS"
languagetext[1]="ENEMIES"
languagetext[2]="BOSSES"
languagetext[3]="LOCATIONS"
languagetext[4]="DEFEATED"
break;
case 1: ///ESPANOL
languagetext[0]="DIVAS"
languagetext[1]="ENEMIGOS"
languagetext[2]="JEFES"
languagetext[3]="UBICACIONES"
languagetext[4]="DERROTADOS"
break;
case 2: ///PORTUGUESE
languagetext[0]="DIVAS"
languagetext[1]="INIMIGOS"
languagetext[2]="CHEFES"
languagetext[3]="LOCAIS"
languagetext[4]="DERROTADOS"
break;

}

}



}

function commandL_check(){
	
///Language for Commands
switch (global.Language){
case 0:
commandL[0]="SELECT"
commandL[1]="CANCEL"
commandL[2]="PALETTE"
commandL[3]="TO SWITCH VARIATION"
commandL[4]="ZOOM"
commandL[5]="HIDE TEXT"
commandL[6]="PREV" //prev
commandL[7]="NEXT" ///prox
commandL[8]="LOOP"
commandL[9]="HIDE"
commandL[10]="EXIT"
commandL[11]="HOLD TO APPLY\nTO ALL COLORS"
commandL[12]="RESET"
commandL[13]="COPY"
commandL[14]="PASTE"
commandL[15]="CHANGE CHARACTER"
commandL[16]="PALETTE EDITOR"
commandL[17]="BET"
commandL[18]="SPIN"
commandL[19]="STOP"
commandL[20]="KEYBOARD"
commandL[21]="JOYSTICK"
commandL[22]="DELETE"
commandL[23]="WORLD TOUR"
commandL[24]="MOVE"
break;
case 1: ///ESPANOL
commandL[0]="SELECCIONAR"
commandL[1]="CANCELAR"
commandL[2]="PALETA"
commandL[3]="PARA CAMBIAR DE VARIACIÓN"
commandL[4]="ZOOM"
commandL[5]="OCULTAR TEXTO"
commandL[6]="ANTERIOR" //anterior
commandL[7]="SIGUIENTE" ///prox
commandL[8]="REPETIR"
commandL[9]="OCULTAR"
commandL[10]="SALIR"
commandL[11]="MANTENER PRESIONADO PARA APLICAR\nA TODOS LOS COLORES"
commandL[12]="RESET"
commandL[13]="COPIAR"
commandL[14]="PEGAR"
commandL[15]="CAMBIAR CARÁCTER"
commandL[16]="EDITOR DE PALETA"
commandL[17]="APUESTA"
commandL[18]="GIRAR"
commandL[19]="DETENER"
commandL[20]="TECLADO"
commandL[21]="JOYSTICK"
commandL[22]="BORRAR"
commandL[23]="VIAJE MUNDIAL"
commandL[24]="MOVER"
break;
case 2: ///PORTUGUESE
commandL[0]="SELECIONAR"
commandL[1]="CANCELAR"
commandL[2]="PALETA"
commandL[3]="TROCAR VARIANTE"
commandL[4]="ZOOM"
commandL[5]="OCULTAR TEXTO"
commandL[6]="ANTERIOR" //prev
commandL[7]="PRÓXIMO" ///prox
commandL[8]="LOOP"
commandL[9]="OCULTAR"
commandL[10]="SAIR"
commandL[11]="SEGURE PARA APLICAR\nA TODAS AS CORES"
commandL[12]="REINICIAR"
commandL[13]="COIAR"
commandL[14]="COLAR"
commandL[15]="ALTERAR PERSONAGEM"
commandL[16]="EDITOR DE PALETA"
commandL[17]="APOSTA"
commandL[18]="GIRAR"
commandL[19]="PARAR"
commandL[20]="TECLADO"
commandL[21]="CONTROLE"
commandL[22]="EXCLUIR"
commandL[23]="TURNE MUNDIAL"
commandL[24]="MOVER"
break;
}

}