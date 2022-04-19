press = clamp(press,0,maxlevel);

if keyboard_check_pressed(ord("W")) level-=1
if keyboard_check_pressed(ord("S")) level+=1

if keyboard_check(ord("W"))
{press+=1 if press>12 {press=10 level-=1}}
if keyboard_check(ord("S"))
{press+=1 if press>12 {press=10 level+=1}}

if keyboard_check_pressed(ord("A")) level-=5
if keyboard_check_pressed(ord("D")) level+=5

if keyboard_check(ord("A"))
{press+=1 if press>12 {press=10 level-=5}}
if keyboard_check(ord("D"))
{press+=1 if press>12 {press=10 level+=5}}


if keyboard_check_released(ord("W")) press=0
if keyboard_check_released(ord("S")) press=0
if keyboard_check_released(ord("A")) press=0
if keyboard_check_released(ord("D")) press=0

if level=0 roomGo=rm_titlescreen
if level=1 roomGo=rm_characterselect
if level=2 roomGo=rm_stage1
if level=3 roomGo=rm_stage2
if level=4 roomGo=rm_stage3
if level=5 roomGo=rm_stage4
if level=6 roomGo=rm_stage5
if level=7 roomGo=rm_stage6
if level=8 roomGo=rm_stage7
if level=9 roomGo=rm_stage8

if level=10 roomGo=rm_testarea
if level=11 roomGo=rm_testarea2
if level=12 roomGo=rm_testarea3
if level=13 roomGo=rm_hiscore
if level=14 roomGo=rm_animeditor
if level=15 roomGo=rm_blankvoid
if level=16 roomGo=rm_testarea4
if level=17 roomGo=rm_newspaper
if level=18 roomGo=rm_opening
if level=19 roomGo=rm_credits
if level=20 roomGo=rm_map
if level=21 roomGo=rm_chardata
if level=22 roomGo=rm_feats
if level=23 roomGo=rm_shop
if level=24 roomGo=rm_training

if level=30 roomGo=rm_stagemermaid
if level=31 roomGo=rm_stageswamp

if level=51 roomGo=rm_cutscene1





