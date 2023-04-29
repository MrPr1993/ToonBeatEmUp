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
break;	
case 1:
languagetext[0]="¡LUCHA EN TODAS LAS ETAPAS DEL MODO ARCADE!"
languagetext[1]="MODO ARCADE"
languagetext[2]="¡SELECCIONA UNA ETAPA PARA REPETIR!"
languagetext[3]="SELECCIÓN DE ETAPA"
languagetext[4]="¡COMPRUEBA LO QUE GANASTE EN EL JUEGO!"
languagetext[5]="LOGROS"
languagetext[6]="¡RECONFIGURA TU JUEGO!"
languagetext[7]="AJUSTES"
languagetext[8]="¡VISITA A BETTY O'HARA Y COMPRA ARTÍCULOS!"
languagetext[9]="COMPRAR"
languagetext[10]="¡PRACTICA LAS HABILIDADES DE TU DIVA!"
languagetext[11]="ENTRENAMIENTO"
languagetext[12]="¡JUEGAN ALGUNOS JUEGOS O LUCHEN ENTRE USTEDES!"
languagetext[13]="MINIJUEGOS Y VS"
languagetext[14]="¡COMPROBAR DATOS DE LOS PERSONAJES Y ETAPAS!"
languagetext[15]="PERFIL E INFORMACIÓN"
languagetext[16]="¡COMPRUEBE EL ARTE Y EL ARTE CONCEPTUAL!"
languagetext[17]="GALERÍA"
languagetext[18]="¡REPRODUCE CANCIONES Y SONIDOS DE PRUEBA!"
languagetext[19]="PRUEBA DE SONIDO"
languagetext[20]="¡MIRA LAS ESCENAS MÁS CINEMÁTICAS!"
languagetext[21]="ESCENARIOS"
languagetext[22]="¡MIRA QUIÉN ESTÁ ARRIBA!"
languagetext[23]="PUNTUACIÓN ALTA"
break;}

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
languagetext[13]="CONTINUES"
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
languagetext[31]="SETTINGS"
languagetext[32]="SETTINGS"
languagetext[33]="SETTINGS"
languagetext[34]="SETTINGS"
languagetext[35]="SETTINGS"
languagetext[36]="SETTINGS"
languagetext[37]="SETTINGS"
languagetext[38]="SETTINGS"
languagetext[39]="SETTINGS"
languagetext[40]="SETTINGS"
break;
case 1:
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
languagetext[13]="CONTINÚA"
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
languagetext[31]="AJUSTES"
languagetext[32]="AJUSTES"
languagetext[33]="AJUSTES"
languagetext[34]="AJUSTES"
languagetext[35]="AJUSTES"
languagetext[36]="AJUSTES"
languagetext[37]="AJUSTES"
languagetext[38]="AJUSTES"
languagetext[39]="AJUSTES"
languagetext[40]="AJUSTES"
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
break;
case 1:
languagetext[0]="DIVAS"
languagetext[1]="ENEMIGOS"
languagetext[2]="JEFES"
languagetext[3]="UBICACIONES"
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
break;
case 1:
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
break;

}

}