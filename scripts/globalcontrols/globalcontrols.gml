// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function globalcontrols(_controlno){

global.LegacyMode[_controlno]=0;

///Keyboard
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
global.gpControlAttack[_controlno]=gp_face3;
global.gpControlCharge[_controlno]=gp_face3;
global.gpControlRelease[_controlno]=gp_face3;
global.gpControlJump[_controlno]=gp_face1;
global.gpControlJumpH[_controlno]=gp_face1;
global.gpControlShield[_controlno]=gp_face2;
global.gpControlShieldP[_controlno]=gp_face2;
global.gpControlSuper[_controlno]=gp_face4;
global.gpControlTaunt[_controlno]=gp_shoulderl;
global.gpControlPunchback[_controlno]=gp_shoulderr;   
global.gpControlInteract[_controlno]=gp_face3;

}