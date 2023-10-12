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
if level=3 roomGo=rm_stage2b
if level=4 roomGo=rm_stage2
if level=5 roomGo=rm_stage2c
if level=6 roomGo=rm_stage4 ///Graveyard
if level=7 roomGo=rm_stage3
if level=8 roomGo=rm_stage5 ///Ninja
if level=9 roomGo=rm_stageswamp
if level=10 roomGo=rm_stagecarnival
if level=11 roomGo=rm_stagebeach
if level=12 roomGo=rm_stageufo
if level=13 roomGo=rm_stagemermaid
if level=14 roomGo=rm_stagedesert
if level=15 roomGo=rm_stagesnow
if level=16 roomGo=rm_stagecave
if level=17 roomGo=rm_stageclouds
if level=18 roomGo=rm_stagelab
if level=19 roomGo=rm_stagefinal
if level=20 roomGo=rm_map
if level=21 roomGo=rm_chardata
if level=22 roomGo=rm_feats
if level=23 roomGo=rm_shop
if level=24 roomGo=rm_training


if level=25 roomGo=rm_soundtest
if level=26 roomGo=rm_gallery
if level=27 roomGo=rm_settings
if level=28 roomGo=rm_menu
if level=29 roomGo=rm_hiscore
if level=30 roomGo=rm_animeditor
if level=31 roomGo=rm_blankvoid
if level=32 roomGo=rm_newspaper
if level=33 roomGo=rm_opening
if level=34 roomGo=rm_creditscene
if level=35 roomGo=rm_cargame
if level=36 roomGo=rm_brickbreak
if level=37 roomGo=rm_eatinggame
if level=38 roomGo=rm_cargame
if level=39 roomGo=rm_cargame
if level=40 roomGo=rm_cargame
if level=41 roomGo=rm_testarea//
if level=42 roomGo=rm_testarea2//
if level=43 roomGo=rm_testarea3//
if level=44 roomGo=rm_testarea4//

if level=45 roomGo=rm_paletteeditor
if level=46 roomGo=rm_fishing
if level=47 roomGo=rm_slotmachine

if level=51 roomGo=rm_cutscene1





