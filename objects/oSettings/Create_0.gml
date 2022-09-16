/// @description Insert description here
// You can write your code in this editor
menuSelect=0
canControl=1
controlNO=9
controller_setup()

stagePause=0

TVfx=0

isPause=0

StarY=0
StarSpace=0
selectStar=0

setting1Text=""
setting2Text=""
setting3Text="" //Screen Size
setting4Text=""
setting5Text=""
setting6Text=""
setting7Text=""
setting8Text=""
setting9Text=""


controlSettings=0

p1=instance_create_depth(0,0,0,oPlayerDisembodied) p1.controlNO=1 p1.canControl=1
p2=instance_create_depth(0,0,0,oPlayerDisembodied) p2.controlNO=2 p2.canControl=1
p3=instance_create_depth(0,0,0,oPlayerDisembodied) p3.controlNO=3 p3.canControl=1
p4=instance_create_depth(0,0,0,oPlayerDisembodied) p4.controlNO=4 p4.canControl=1