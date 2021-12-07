if hitID!=-1
if !instance_exists(hitID) hitID=-1

if atk=0 {image_blend=c_blue} else image_blend=c_white

if hitCheck!=0 hitCheck-=1 else hitCheck=0

if oControl.betatest=1 and oControl.ColBeta=1 visible=1 else visible=0

if comboHit!=0 comboHit-=1 else comboHit=0



