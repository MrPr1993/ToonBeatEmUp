// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function globalcontrols(_controlno){
if _controlno=1
{
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
else
{
global.LegacyMode[_controlno]=0;

///Keyboard
global.ControlLeft[_controlno]="";
global.ControlRight[_controlno]="";
global.ControlUp[_controlno]="";
global.ControlDown[_controlno]="";

global.ControlAttack[_controlno]="";
global.ControlCharge[_controlno]="";
global.ControlRelease[_controlno]="";
global.ControlJump[_controlno]="";
global.ControlJumpH[_controlno]="";
global.ControlShield[_controlno]="";
global.ControlShieldP[_controlno]="";
global.ControlSuper[_controlno]="";
global.ControlTaunt[_controlno]="";
global.ControlPunchback[_controlno]="";
global.ControlInteract[_controlno]="";



///Gamepad
global.gpControlLeft[_controlno]="";
global.gpControlRight[_controlno]="";
global.gpControlUp[_controlno]="";
global.gpControlDown[_controlno]="";

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

}