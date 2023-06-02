// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function globalcontrols_load(_controlno){


///Keyboard
global.ControlAttack[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "0", global.ControlAttack[_controlno])
global.ControlCharge[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "1", global.ControlCharge[_controlno])
global.ControlRelease[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "2", global.ControlRelease[_controlno])
global.ControlJump[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "3", global.ControlJump[_controlno])
global.ControlJumpH[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "4", global.ControlJumpH[_controlno])
global.ControlShield[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "5", global.ControlShield[_controlno])
global.ControlShieldP[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "6", global.ControlShieldP[_controlno])
global.ControlSuper[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "7", global.ControlSuper[_controlno])
global.ControlTaunt[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "8", global.ControlTaunt[_controlno])
global.ControlPunchback[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "9", global.ControlPunchback[_controlno])
global.ControlInteract[_controlno]=ini_read_string("CONTROLST"+string(_controlno), "10", global.ControlInteract[_controlno])
///Gamepad
global.gpControlAttack[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "0", global.gpControlAttack[_controlno])
global.gpControlCharge[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "1", global.gpControlCharge[_controlno])
global.gpControlRelease[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "2", global.gpControlRelease[_controlno])
global.gpControlJump[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "3", global.gpControlJump[_controlno])
global.gpControlJumpH[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "4", global.gpControlJumpH[_controlno])
global.gpControlShield[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "5", global.gpControlShield[_controlno])
global.gpControlShieldP[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "6", global.gpControlShieldP[_controlno])
global.gpControlSuper[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "7", global.gpControlSuper[_controlno])
global.gpControlTaunt[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "8", global.gpControlTaunt[_controlno])
global.gpControlPunchback[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "9", global.gpControlPunchback[_controlno])
global.gpControlInteract[_controlno]=ini_read_real("gpCONTROLST"+string(_controlno), "10", global.gpControlInteract[_controlno])
}