// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function globalcontrols_save(_controlno){


///Keyboard
ini_write_string("CONTROLST"+string(_controlno), "0", global.ControlAttack[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "1", global.ControlCharge[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "2", global.ControlRelease[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "3", global.ControlJump[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "4", global.ControlJumpH[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "5", global.ControlShield[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "6", global.ControlShieldP[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "7", global.ControlSuper[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "8", global.ControlTaunt[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "9", global.ControlPunchback[_controlno])
ini_write_string("CONTROLST"+string(_controlno), "10", global.ControlInteract[_controlno])

///Gamepad
ini_write_string("gpCONTROLST"+string(_controlno), "0", global.gpControlAttack[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "1", global.gpControlCharge[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "2", global.gpControlRelease[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "3", global.gpControlJump[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "4", global.gpControlJumpH[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "5", global.gpControlShield[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "6", global.gpControlShieldP[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "7", global.gpControlSuper[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "8", global.gpControlTaunt[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "9", global.gpControlPunchback[_controlno])
ini_write_string("gpCONTROLST"+string(_controlno), "10", global.gpControlInteract[_controlno])
}