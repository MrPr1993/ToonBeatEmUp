// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function globalcontrols(_controlno){
global.LegacyMode[_controlno]=0;

///Keyboard
global.ControlLeft[_controlno]="A";
global.ControlRight[_controlno]="D";
global.ControlUp[_controlno]="W";
global.ControlDown[_controlno]="S";

global.ControlAttack[_controlno]="J";
global.ControlCharge[_controlno]="J";
global.ControlRelease[_controlno]="J";
global.ControlJump[_controlno]="K";
global.ControlJumpH[_controlno]="K";
global.ControlShield[_controlno]="L";
global.ControlShieldP[_controlno]="L";
global.ControlSuper[_controlno]="H";
global.ControlTaunt[_controlno]="Y";
global.ControlPunchback[_controlno]="U";
global.ControlInteract[_controlno]="J";

///Gamepad
global.gpControlLeft[_controlno]="A";
global.gpControlRight[_controlno]="D";
global.gpControlUp[_controlno]="W";
global.gpControlDown[_controlno]="S";

global.gpControlAttack[_controlno]="key_XBUTTON";
global.gpControlCharge[_controlno]="key_XBUTTON";
global.gpControlRelease[_controlno]="key_XBUTTON";
global.gpControlJump[_controlno]="key_ABUTTON";
global.gpControlJumpH[_controlno]="key_ABUTTON";
global.gpControlShield[_controlno]="key_BBUTTON";
global.gpControlShieldP[_controlno]="key_BBUTTON";
global.gpControlSuper[_controlno]="key_YBUTTON";
global.gpControlTaunt[_controlno]="key_RTBUTTON";
global.gpControlPunchback[_controlno]="key_LTBUTTON";   
global.gpControlInteract[_controlno]="key_BBUTTON";
}