%Nayaab Ali
%April 1, 2018
%Ms Krasteva
%Will output my creation

View.Set ("graphics,offscreenonly")

procedure background
    for ocean : 0 .. 650
	drawline (0 + ocean, 0, 0 + ocean, 400, blue) %ocean
	drawline (0 + ocean, 350, 0 + ocean, 400, 77) %sky
	drawline (0 + ocean, 0, 0 + ocean, 20, 138) %ground sand
    end for

    for waves : 0 .. 20
	drawarc (56, 350, 55, 20 - waves, 180, 0, 77) %wave arc 1
	drawarc (144, 350, 55, 20 - waves, 180, 0, 77) %wave arc 2
	drawarc (232, 350, 55, 20 - waves, 180, 0, 77) %wave arc 3
	drawarc (320, 350, 55, 20 - waves, 180, 0, 77) %wave arc 4
	drawarc (408, 350, 55, 20 - waves, 180, 0, 77) %wave arc 5
	drawarc (496, 350, 55, 20 - waves, 180, 0, 77) %wave arc 6
	drawarc (584, 350, 55, 20 - waves, 180, 0, 77) %wave arc 7
    end for

    for rocc : 0 .. 20
	drawarc (30, 20, 20, 20 - rocc, 0, 180, 24) %rock1 (left most)
    end for


    for seeweedz : 0 .. 10
	drawarc (200 + seeweedz, 25, 5, 5, 270, 90, 191) %seaweed 1 bott
	drawarc (200 + seeweedz, 35, 5, 5, 90, 270, 191) %seaweed 1 mid1
	drawarc (200 + seeweedz, 45, 5, 5, 270, 90, 191) %seaweed 1 mid2
	drawarc (200 + seeweedz, 55, 5, 5, 90, 270, 191) %seaweed 1 top

	drawarc (350 + seeweedz, 25, 5, 5, 270, 90, 191) %seaweed 3 bott
	drawarc (350 + seeweedz, 35, 5, 5, 90, 270, 191) %seaweed 3 mid1
	drawarc (350 + seeweedz, 45, 5, 5, 270, 90, 191) %seaweed 3 mid2
	drawarc (350 + seeweedz, 55, 5, 5, 90, 270, 191) %seaweed 3 top
    end for    
    
    for seeweed : 0 .. 5
	drawarc (140, 20, 15, 5 - seeweed, 0, 180, 24) %rock2
	drawarc (300, 20, 10, 5 - seeweed, 0, 180, 24) %rock3
    end for
end background

procedure titlescreen
    var myfont : int %declare my font
    myfont := Font.New ("Chiller:40")
    Draw.Text ("The Hat; A Horror Story", 150, 240, myfont, green) %title

    myfont := Font.New ("Calibri:20")
    Draw.Text ("By Nayaab Ali", 260, 200, myfont, green) %name

    for title : 0 .. 400
	myfont := Font.New ("Chiller:40")
	Draw.Text ("The Hat; A Horror Story", -200 + title, 240, myfont, blue) %title erase

	myfont := Font.New ("Calibri:20")
	Draw.Text ("By Nayaab Ali", -90 + title, 200, myfont, blue) %name erase

	View.Update
	delay (20)
    end for
    play ("<D C BbG D C BbCD C BbGEbD C BbGFD C BbDD C Bb GBb Bb ACCBb  CD DC CBbD C Bb G F D C Bb G FD C Bb Bb")
end titlescreen

procedure fishoctopuscene
    for octopenter : 0 .. 600 %moving the octopus
	drawfillbox (-66, 142, -26 + octopenter, 193, blue) %octopus erase

	drawfilloval (-40 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (-60 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (-53 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (-39 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (-26 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (-45 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (-30 + octopenter, 175, 2, 2, black) %right eye
	drawarc (-37 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (-55 + octopenter, 185, -25 + octopenter, 190, white) %sushi bandana
	drawfilloval (-38 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (-45 + octopenter, 185, -45 + octopenter, 190, black) %left bandana line
	drawline (-30 + octopenter, 185, -30 + octopenter, 190, black) %right bandana line

	View.Update
	delay (4)
    end for

    for fishenter : 0 .. 600 %moving fishy
	drawfillbox (-160, 155, -90 + fishenter, 190, blue) %fish erase

	drawfilloval (-120 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (-160 + fishenter, 160, -140 + fishenter, 180, 41) %fish tail
	drawline (-150 + fishenter, 160, -150 + fishenter, 180, white) %tail line
	drawfillbox (-128 + fishenter, 183, -108 + fishenter, 190, 41) %dorsal
	drawfilloval (-100 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (-95 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (-120 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (-151 + fishenter, 250, 130, 30, blue) %fish speech bubble erase
	drawline (-151 + fishenter, 250, -136 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (-150 + fishenter, 250, 130, 30, white) %fish speech bubble
	drawline (-150 + fishenter, 250, -135 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Calamari! Help! I've lost my hat!", -260 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (2)
    end for

    for dialogue : 0 .. 30 %fish dialogue
	drawoval (500, 90, 90, 20 - dialogue, white) %speech bubble
	drawline (500, 90, 525, 130, white) %speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Oh no! Let's go find it!", 430, 85, myfont, 63) %octopus dialogue
    end for

    for dialogue : 0 .. 30 %fish dialogue erase
	drawoval (450, 250, 130, 30 - dialogue, blue) % fish speech bubble erase
	drawline (450, 250, 465, 200, blue) %fish speech line erase

	delay (10)
    end for

    for octopenter : 0 .. 200 %moving the octopus
	drawfillbox (534, 142, 574 + octopenter, 193, blue) %octopus erase

	drawfilloval (560 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (540 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (547 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (561 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (574 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (555 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (570 + octopenter, 175, 2, 2, black) %right eye
	drawarc (563 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (545 + octopenter, 185, 575 + octopenter, 190, white) %sushi bandana
	drawfilloval (562 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (555 + octopenter, 185, 555 + octopenter, 190, black) %left bandana line
	drawline (570 + octopenter, 185, 570 + octopenter, 190, black) %right bandana line

	View.Update
	delay (5)
    end for

    for dialogue : 0 .. 20 %octopus dialogue
	drawoval (500, 90, 90, 20 - dialogue, blue) %calamari speech bubble erase
	drawline (500, 90, 525, 130, blue) %calamari speech line

	delay (20)
    end for

    for fishenter : 0 .. 200 %moving fishy
	drawfillbox (439, 155, 510 + fishenter, 190, blue) %fish erase

	drawfilloval (480 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (440 + fishenter, 160, 460 + fishenter, 180, 41) %fish tail
	drawline (450 + fishenter, 160, 450 + fishenter, 180, white) %tail line
	drawfillbox (472 + fishenter, 183, 492 + fishenter, 190, 41) %dorsal
	drawfilloval (500 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (505 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (480 + fishenter, 170, 5, 4, 90, 270, black) %fin

	View.Update
	delay (4)
    end for
end fishoctopuscene

procedure turtlescene
    for turtlenter : 0 .. 200 %move the turt
	drawfillbox (658 - turtlenter, 22, 731 - turtlenter, 55, blue) %turt erase

	drawfillarc (700 - turtlenter, 22, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (664 - turtlenter, 37, 9, 9, 119) %turtle head
	drawfilloval (700 - turtlenter, 34, 13, 6, 119) %turtle fin
	drawfilloval (661 - turtlenter, 40, 1, 2, black) %left eye
	drawfilloval (667 - turtlenter, 40, 1, 2, black) %left eye
	drawarc (664 - turtlenter, 35, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (658 - turtlenter, 46, 672 - turtlenter, 46, 3, 6) %hat line
	drawfillbox (661 - turtlenter, 46, 669 - turtlenter, 55, 183) %hat

	View.Update
	delay (10)
    end for

    for octopenter : 0 .. 600 %moving the octopus
	drawfillbox (-66, 142, -26 + octopenter, 193, blue)

	drawfilloval (-40 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (-60 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (-53 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (-39 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (-26 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (-45 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (-30 + octopenter, 175, 2, 2, black) %right eye
	drawarc (-37 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (-55 + octopenter, 185, -25 + octopenter, 190, white) %sushi bandana
	drawfilloval (-38 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (-45 + octopenter, 185, -45 + octopenter, 190, black) %left bandana line
	drawline (-30 + octopenter, 185, -30 + octopenter, 190, black) %right bandana line

	View.Update
	delay (4)
    end for

    for fishenter : 0 .. 600 %moving fishy
	drawfillbox (-160, 155, -90 + fishenter, 190, blue)

	drawfilloval (-120 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (-160 + fishenter, 160, -140 + fishenter, 180, 41) %fish tail
	drawline (-150 + fishenter, 160, -150 + fishenter, 180, white) %tail line
	drawfillbox (-128 + fishenter, 183, -108 + fishenter, 190, 41) %dorsal
	drawfilloval (-100 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (-95 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (-120 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (-151 + fishenter, 250, 130, 30, blue) %fish speech bubble erase
	drawline (-151 + fishenter, 250, -136 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (-150 + fishenter, 250, 130, 30, white) %fish speech bubble
	drawline (-150 + fishenter, 250, -135 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Kurt, do you have my hat?", -240 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (2)
    end for

    for dialogue : 0 .. 30 %erase bubble
	drawoval (450, 250, 130, 30 - dialogue, blue) %fish speech bubble erase
	drawline (450, 250, 465, 200, blue) %fish speech line erase

	delay (10)
    end for

    for dialogue : 0 .. 30
	drawfilloval (500, 110, 80, 30 - dialogue, white) %kurt speech bubble
	drawline (500, 90, 480, 60, white) %kurt speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Uh, no, sorry.", 450, 105, myfont, 6) %kurt dialogue

	delay (30)
    end for

    for octopenter : 0 .. 200 %moving the octopus
	drawfillbox (534, 142, 574 + octopenter, 193, blue) %octopus erase

	drawfilloval (560 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (540 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (547 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (561 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (574 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (555 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (570 + octopenter, 175, 2, 2, black) %right eye
	drawarc (563 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (545 + octopenter, 185, 575 + octopenter, 190, white) %sushi bandana
	drawfilloval (562 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (555 + octopenter, 185, 555 + octopenter, 190, black) %left bandana line
	drawline (570 + octopenter, 185, 570 + octopenter, 190, black) %right bandana line

	View.Update
	delay (5)
    end for

    for fishenter : 0 .. 300 %moving fishy
	drawfillbox (439, 155, 510 + fishenter, 190, blue) %fish erase

	drawfilloval (480 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (440 + fishenter, 160, 460 + fishenter, 180, 41) %fish tail
	drawline (450 + fishenter, 160, 450 + fishenter, 180, white) %tail line
	drawfillbox (472 + fishenter, 183, 492 + fishenter, 190, 41) %dorsal
	drawfilloval (500 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (505 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (480 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (449 + fishenter, 250, 100, 30, blue) %fish speech bubble erase
	drawline (449 + fishenter, 250, 464 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (450 + fishenter, 250, 100, 30, white) %fish speech bubble
	drawline (450 + fishenter, 250, 465 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("COME HELP ME FIND IT!", 370 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (9)
    end for

    for dialogue : 0 .. 30
	drawfilloval (500, 110, 80, 30 - dialogue, blue) %kurt speech bubble erase
	drawline (500, 90, 480, 60, blue) %kurt speech line erase
    end for

    for turtlenter : 0 .. 200
	drawfillbox (460, 22, 545 + turtlenter, 55, blue) %turt erase

	drawfillarc (500 + turtlenter, 22, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (536 + turtlenter, 37, 9, 9, 119) %turtle head
	drawfilloval (500 + turtlenter, 34, 13, 6, 119) %turtle fin
	drawfilloval (539 + turtlenter, 40, 1, 2, black) %left eye
	drawfilloval (533 + turtlenter, 40, 1, 2, black) %left eye
	drawarc (536 + turtlenter, 35, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (528 + turtlenter, 46, 542 + turtlenter, 46, 3, 6) %hat line
	drawfillbox (531 + turtlenter, 46, 539 + turtlenter, 55, 183) %hat

	drawfilloval (464, 37, 9, 9, blue) %turtle head erase
	Draw.ThickLine (458, 46, 472, 46, 3, blue) %hat line
	drawfillbox (461, 46, 469, 55, blue) %hat

	View.Update
	delay (10)
    end for
end turtlescene


procedure crabscene
    for crabenter : 0 .. 300
	drawfillbox (665 - crabenter, 25, 776, 75, blue)

	drawfilloval (720 - crabenter, 45, 30, 20, 40) %crab bod
	drawfilloval (708 - crabenter, 65, 6, 6, white) %left eyeball
	drawfilloval (708 - crabenter, 65, 3, 3, black) %left pupil
	drawfilloval (732 - crabenter, 65, 6, 6, white) %right eyeball
	drawfilloval (732 - crabenter, 65, 3, 3, black) %right pupil
	drawfillarc (720 - crabenter, 55, 3, 3, 180, 0, black) %smiiiiile
	drawarc (700 - crabenter, 60, 20, 10, 180, 270, 40) %left claw string
	drawfillarc (675 - crabenter, 65, 10, 10, 180, 90, 40) %left claw
	drawarc (740 - crabenter, 60, 20, 10, 270, 0, 40) %right claw string
	drawfillarc (765 - crabenter, 65, 10, 10, 90, 0, 40) %right claw
	drawfillbox (680 - crabenter, 40, 690 - crabenter, 45, 40) %left leg top
	drawfillbox (690 - crabenter, 30, 700 - crabenter, 33, 40) %left leg bottom
	drawfillbox (750 - crabenter, 40, 760 - crabenter, 45, 40) %right leg top
	drawfillbox (740 - crabenter, 30, 750 - crabenter, 33, 40) %right leg bottom
	drawline (680 - crabenter, 43, 670 - crabenter, 33, 40) %left foot top
	drawline (690 - crabenter, 33, 680 - crabenter, 25, 40) %left foot bottom
	drawline (760 - crabenter, 43, 770 - crabenter, 33, 40) %right foot top
	drawline (750 - crabenter, 33, 760 - crabenter, 25, 40) %right foot bottom

	View.Update
	delay (10)
    end for

    for octopenter : 0 .. 600 %moving the octopus
	drawfillbox (-66, 142, -26 + octopenter, 193, blue)

	drawfilloval (-40 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (-60 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (-53 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (-39 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (-26 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (-45 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (-30 + octopenter, 175, 2, 2, black) %right eye
	drawarc (-37 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (-55 + octopenter, 185, -25 + octopenter, 190, white) %sushi bandana
	drawfilloval (-38 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (-45 + octopenter, 185, -45 + octopenter, 190, black) %left bandana line
	drawline (-30 + octopenter, 185, -30 + octopenter, 190, black) %right bandana line

	View.Update
	delay (4)
    end for

    for fishenter : 0 .. 600 %moving fishy
	drawfillbox (-160, 155, -90 + fishenter, 190, blue)

	drawfilloval (-120 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (-160 + fishenter, 160, -140 + fishenter, 180, 41) %fish tail
	drawline (-150 + fishenter, 160, -150 + fishenter, 180, white) %tail line
	drawfillbox (-128 + fishenter, 183, -108 + fishenter, 190, 41) %dorsal
	drawfilloval (-100 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (-95 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (-120 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (-151 + fishenter, 250, 100, 30, blue) %fish speech bubble erase
	drawline (-151 + fishenter, 250, -136 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (-150 + fishenter, 250, 100, 30, white) %fish speech bubble
	drawline (-150 + fishenter, 250, -135 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:11")
	Draw.Text ("Crabby Pat, do you have my hat?", -250 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (2)
    end for

    for turtlenter : 0 .. 550
	drawfillbox (-231, 162, -155 + turtlenter, 195, blue) %turt erase

	drawfillarc (-200 + turtlenter, 162, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (-164 + turtlenter, 177, 9, 9, 119) %turtle head
	drawfilloval (-200 + turtlenter, 174, 13, 6, 119) %turtle fin
	drawfilloval (-161 + turtlenter, 180, 1, 2, black) %left eye
	drawfilloval (-167 + turtlenter, 180, 1, 2, black) %left eye
	drawarc (-164 + turtlenter, 175, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (-158 + turtlenter, 186, -172 + turtlenter, 186, 3, 6) %hat line
	drawfillbox (-169 + turtlenter, 186, -161 + turtlenter, 195, 183) %hat

	View.Update
	delay (5)
    end for

    for dialogue : 0 .. 30
	drawfilloval (500, 110, 80, 30 - dialogue, white) %crab speech bubble
	drawline (500, 90, 480, 60, white) %crab speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Uh, no, sorry.", 450, 105, myfont, 40) %crab dialogue

	delay (30)
    end for

    for octopenter : 0 .. 200 %moving the octopus
	drawfillbox (534, 142, 574 + octopenter, 193, blue) %octopus erase

	drawfilloval (560 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (540 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (547 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (561 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (574 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (555 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (570 + octopenter, 175, 2, 2, black) %right eye
	drawarc (563 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (545 + octopenter, 185, 575 + octopenter, 190, white) %sushi bandana
	drawfilloval (562 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (555 + octopenter, 185, 555 + octopenter, 190, black) %left bandana line
	drawline (570 + octopenter, 185, 570 + octopenter, 190, black) %right bandana line

	View.Update
	delay (5)
    end for

    for fishenter : 0 .. 300 %moving fishy
	drawfillbox (439, 155, 510 + fishenter, 190, blue) %fish erase

	drawfilloval (480 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (440 + fishenter, 160, 460 + fishenter, 180, 41) %fish tail
	drawline (450 + fishenter, 160, 450 + fishenter, 180, white) %tail line
	drawfillbox (472 + fishenter, 183, 492 + fishenter, 190, 41) %dorsal
	drawfilloval (500 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (505 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (480 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (449 + fishenter, 250, 100, 30, blue) %fish speech bubble erase
	drawline (449 + fishenter, 250, 464 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (450 + fishenter, 250, 100, 30, white) %fish speech bubble
	drawline (450 + fishenter, 250, 465 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("COME HELP ME FIND IT!", 370 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (9)
    end for

    for turtlenter : 0 .. 330
	drawfillbox (319, 162, 395 + turtlenter, 195, blue) %turt erase

	drawfillarc (350 + turtlenter, 162, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (386 + turtlenter, 177, 9, 9, 119) %turtle head
	drawfilloval (350 + turtlenter, 174, 13, 6, 119) %turtle fin
	drawfilloval (389 + turtlenter, 180, 1, 2, black) %left eye
	drawfilloval (383 + turtlenter, 180, 1, 2, black) %left eye
	drawarc (386 + turtlenter, 175, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (392 + turtlenter, 186, 378 + turtlenter, 186, 3, 6) %hat line
	drawfillbox (381 + turtlenter, 186, 389 + turtlenter, 195, 183) %hat

	View.Update
	delay (5)
    end for

    for dialogue : 0 .. 30
	drawfilloval (500, 110, 80, 30 - dialogue, blue) %crab speech bubble erase
	drawline (500, 90, 480, 60, blue) %crab speech line erase
    end for

    for crabenter : 0 .. 300
	drawfillbox (364, 25, 475 + crabenter, 75, blue) %crab erase

	drawfilloval (420 + crabenter, 45, 30, 20, 40) %crab bod
	drawfilloval (408 + crabenter, 65, 6, 6, white) %left eyeball
	drawfilloval (408 + crabenter, 65, 3, 3, black) %left pupil
	drawfilloval (432 + crabenter, 65, 6, 6, white) %right eyeball
	drawfilloval (432 + crabenter, 65, 3, 3, black) %right pupil
	drawfillarc (420 + crabenter, 55, 3, 3, 180, 0, black) %smiiiiile
	drawarc (400 + crabenter, 60, 20, 10, 180, 270, 40) %left claw string
	drawfillarc (375 + crabenter, 65, 10, 10, 180, 90, 40) %left claw
	drawarc (440 + crabenter, 60, 20, 10, 270, 0, 40) %right claw string
	drawfillarc (465 + crabenter, 65, 10, 10, 90, 0, 40) %right claw
	drawfillbox (380 + crabenter, 40, 390 + crabenter, 45, 40) %left leg top
	drawfillbox (390 + crabenter, 30, 400 + crabenter, 33, 40) %left leg bottom
	drawfillbox (450 + crabenter, 40, 460 + crabenter, 45, 40) %right leg top
	drawfillbox (440 + crabenter, 30, 450 + crabenter, 33, 40) %right leg bottom
	drawline (380 + crabenter, 43, 370 + crabenter, 33, 40) %left foot top
	drawline (390 + crabenter, 33, 380 + crabenter, 25, 40) %left foot bottom
	drawline (460 + crabenter, 43, 470 + crabenter, 33, 40) %right foot top
	drawline (450 + crabenter, 33, 460 + crabenter, 25, 40) %right foot bottom

	View.Update
	delay (10)
    end for
end crabscene

procedure starscene
    for starenter : 0 .. 250
	drawfillbox (750 - starenter, 22, 801, 83, blue) %star erase

	drawfillstar (750 - starenter, 22, 800 - starenter, 72, 3) %star bod
	drawfilloval (769 - starenter, 49, 2, 2, black) %left eye
	drawfilloval (781 - starenter, 49, 2, 2, black) %right eye
	drawline (772 - starenter, 45, 778 - starenter, 45, black) %mouth
	drawfillbox (765 - starenter, 63, 785 - starenter, 83, 39) %hat square
	drawfillarc (775 - starenter, 65, 10, 10, 0, 180, 44)
	drawfilloval (775 - starenter, 63, 20, 4, 39) %hat bottom

	View.Update
	delay (10)
    end for

    for octopenter : 0 .. 600 %moving the octopus
	drawfillbox (-66, 142, -26 + octopenter, 193, blue)

	drawfilloval (-40 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (-60 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (-53 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (-39 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (-26 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (-45 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (-30 + octopenter, 175, 2, 2, black) %right eye
	drawarc (-37 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (-55 + octopenter, 185, -25 + octopenter, 190, white) %sushi bandana
	drawfilloval (-38 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (-45 + octopenter, 185, -45 + octopenter, 190, black) %left bandana line
	drawline (-30 + octopenter, 185, -30 + octopenter, 190, black) %right bandana line

	View.Update
	delay (4)
    end for

    for fishenter : 0 .. 600 %moving fishy
	drawfillbox (-160, 155, -90 + fishenter, 190, blue)

	drawfilloval (-120 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (-160 + fishenter, 160, -140 + fishenter, 180, 41) %fish tail
	drawline (-150 + fishenter, 160, -150 + fishenter, 180, white) %tail line
	drawfillbox (-128 + fishenter, 183, -108 + fishenter, 190, 41) %dorsal
	drawfilloval (-100 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (-95 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (-120 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (-151 + fishenter, 250, 100, 30, blue) %fish speech bubble erase
	drawline (-151 + fishenter, 250, -136 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (-150 + fishenter, 250, 100, 30, white) %fish speech bubble
	drawline (-150 + fishenter, 250, -135 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Star, do you have my hat?", -240 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (2)
    end for

    for turtlenter : 0 .. 550
	drawfillbox (-231, 162, -155 + turtlenter, 195, blue) %turt erase

	drawfillarc (-200 + turtlenter, 162, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (-164 + turtlenter, 177, 9, 9, 119) %turtle head
	drawfilloval (-200 + turtlenter, 174, 13, 6, 119) %turtle fin
	drawfilloval (-161 + turtlenter, 180, 1, 2, black) %left eye
	drawfilloval (-167 + turtlenter, 180, 1, 2, black) %left eye
	drawarc (-164 + turtlenter, 175, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (-158 + turtlenter, 186, -172 + turtlenter, 186, 3, 6) %hat line
	drawfillbox (-169 + turtlenter, 186, -161 + turtlenter, 195, 183) %hat

	View.Update
	delay (5)
    end for

    for crabenter : 0 .. 325
	drawfillbox (-135, 155, -24 + crabenter, 205, blue)

	drawfilloval (-80 + crabenter, 175, 30, 20, 40) %crab bod
	drawfilloval (-92 + crabenter, 195, 6, 6, white) %left eyeball
	drawfilloval (-92 + crabenter, 195, 3, 3, black) %left pupil
	drawfilloval (-68 + crabenter, 195, 6, 6, white) %right eyeball
	drawfilloval (-68 + crabenter, 195, 3, 3, black) %right pupil
	drawfillarc (-80 + crabenter, 185, 3, 3, 180, 0, black) %smiiiiile
	drawarc (-100 + crabenter, 190, 20, 10, 180, 270, 40) %left claw string
	drawfillarc (-125 + crabenter, 195, 10, 10, 180, 90, 40) %left claw
	drawarc (-60 + crabenter, 190, 20, 10, 270, 0, 40) %right claw string
	drawfillarc (-35 + crabenter, 195, 10, 10, 90, 0, 40) %right claw
	drawfillbox (-120 + crabenter, 170, -110 + crabenter, 175, 40) %left leg top
	drawfillbox (-110 + crabenter, 160, -100 + crabenter, 163, 40) %left leg bottom
	drawfillbox (-50 + crabenter, 170, -40 + crabenter, 175, 40) %right leg top
	drawfillbox (-60 + crabenter, 160, -50 + crabenter, 163, 40) %right leg bottom
	drawline (-120 + crabenter, 173, -130 + crabenter, 163, 40) %left foot top
	drawline (-110 + crabenter, 163, -120 + crabenter, 155, 40) %left foot bottom
	drawline (-40 + crabenter, 173, -30 + crabenter, 163, 40) %right foot top
	drawline (-50 + crabenter, 163, -40 + crabenter, 155, 40) %right foot bottom

	View.Update
	delay (6)
    end for

    for dialogue : 0 .. 30
	drawfilloval (470, 110, 80, 30 - dialogue, white) %star speech bubble
	drawline (470, 110, 500, 60, white) %star speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Uh, no, sorry.", 420, 105, myfont, 40) %star dialogue

	delay (30)
    end for

    for octopenter : 0 .. 200 %moving the octopus
	drawfillbox (534, 142, 574 + octopenter, 193, blue) %octopus erase

	drawfilloval (560 + octopenter, 170, 20, 23, 64) %Calamari body
	drawfilloval (540 + octopenter, 160, 5, 5, 64) %first leg
	drawfilloval (547 + octopenter, 150, 5, 5, 64) %second leg
	drawfilloval (561 + octopenter, 147, 5, 5, 64) %third leg
	drawfilloval (574 + octopenter, 152, 5, 5, 64) %fourth leg
	drawfilloval (555 + octopenter, 175, 2, 2, black) %left eye
	drawfilloval (570 + octopenter, 175, 2, 2, black) %right eye
	drawarc (563 + octopenter, 172, 3, 2, 170, 10, black) %mouth
	drawfillbox (545 + octopenter, 185, 575 + octopenter, 190, white) %sushi bandana
	drawfilloval (562 + octopenter, 187, 2, 2, red) %red circle on bandana
	drawline (555 + octopenter, 185, 555 + octopenter, 190, black) %left bandana line
	drawline (570 + octopenter, 185, 570 + octopenter, 190, black) %right bandana line

	View.Update
	delay (5)
    end for

    for fishenter : 0 .. 300 %moving fishy
	drawfillbox (439, 155, 510 + fishenter, 190, blue) %fish erase

	drawfilloval (480 + fishenter, 170, 30, 15, 41) %Fish body
	drawfillbox (440 + fishenter, 160, 460 + fishenter, 180, 41) %fish tail
	drawline (450 + fishenter, 160, 450 + fishenter, 180, white) %tail line
	drawfillbox (472 + fishenter, 183, 492 + fishenter, 190, 41) %dorsal
	drawfilloval (500 + fishenter, 175, 2, 2, black) %eyeball
	drawarc (505 + fishenter, 167, 2, 3, 0, 180, black) %mouth
	drawarc (480 + fishenter, 170, 5, 4, 90, 270, black) %fin

	drawfilloval (449 + fishenter, 250, 100, 30, blue) %fish speech bubble erase
	drawline (449 + fishenter, 250, 464 + fishenter, 200, blue) %fish speech line erase

	drawfilloval (450 + fishenter, 250, 100, 30, white) %fish speech bubble
	drawline (450 + fishenter, 250, 465 + fishenter, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("COME HELP ME FIND IT!", 370 + fishenter, 245, myfont, 40) %fish dialogue

	View.Update
	delay (9)
    end for

    for turtlenter : 0 .. 330
	drawfillbox (319, 162, 395 + turtlenter, 195, blue) %turt erase

	drawfillarc (350 + turtlenter, 162, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (386 + turtlenter, 177, 9, 9, 119) %turtle head
	drawfilloval (350 + turtlenter, 174, 13, 6, 119) %turtle fin
	drawfilloval (389 + turtlenter, 180, 1, 2, black) %left eye
	drawfilloval (383 + turtlenter, 180, 1, 2, black) %left eye
	drawarc (386 + turtlenter, 175, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (392 + turtlenter, 186, 378 + turtlenter, 186, 3, 6) %hat line
	drawfillbox (381 + turtlenter, 186, 389 + turtlenter, 195, 183) %hat

	View.Update
	delay (5)
    end for

    for dialogue : 0 .. 30
	drawfilloval (470, 110, 80, 30 - dialogue, blue) %star speech bubble erase
	drawline (470, 110, 500, 60, blue) %star speech line erase
    end for

    for crabenter : 0 .. 450
	drawfillbox (190, 155, 301 + crabenter, 205, blue)

	drawfilloval (245 + crabenter, 175, 30, 20, 40) %crab bod
	drawfilloval (233 + crabenter, 195, 6, 6, white) %left eyeball
	drawfilloval (233 + crabenter, 195, 3, 3, black) %left pupil
	drawfilloval (257 + crabenter, 195, 6, 6, white) %right eyeball
	drawfilloval (257 + crabenter, 195, 3, 3, black) %right pupil
	drawfillarc (245 + crabenter, 185, 3, 3, 180, 0, black) %smiiiiile
	drawarc (225 + crabenter, 190, 20, 10, 180, 270, 40) %left claw string
	drawfillarc (200 + crabenter, 195, 10, 10, 180, 90, 40) %left claw
	drawarc (265 + crabenter, 190, 20, 10, 270, 0, 40) %right claw string
	drawfillarc (290 + crabenter, 195, 10, 10, 90, 0, 40) %right claw
	drawfillbox (205 + crabenter, 170, 215 + crabenter, 175, 40) %left leg top
	drawfillbox (215 + crabenter, 160, 225 + crabenter, 163, 40) %left leg bottom
	drawfillbox (275 + crabenter, 170, 285 + crabenter, 175, 40) %right leg top
	drawfillbox (265 + crabenter, 160, 275 + crabenter, 163, 40) %right leg bottom
	drawline (205 + crabenter, 173, 195 + crabenter, 163, 40) %left foot top
	drawline (215 + crabenter, 163, 205 + crabenter, 155, 40) %left foot bottom
	drawline (285 + crabenter, 173, 295 + crabenter, 163, 40) %right foot top
	drawline (275 + crabenter, 163, 285 + crabenter, 155, 40) %right foot bottom

	View.Update
	delay (6)
    end for

    for starenter : 0 .. 200
	drawfillbox (499, 22, 550 + starenter, 83, blue) %star erase

	drawfillstar (500 + starenter, 22, 550 + starenter, 72, 3) %star bod
	drawfilloval (519 + starenter, 49, 2, 2, black) %left eye
	drawfilloval (531 + starenter, 49, 2, 2, black) %right eye
	drawline (522 + starenter, 45, 528 + starenter, 45, black) %mouth
	drawfillbox (515 + starenter, 63, 535 + starenter, 83, 39) %hat square
	drawfillarc (525 + starenter, 65, 10, 10, 0, 180, 44)
	drawfilloval (525 + starenter, 63, 20, 4, 39) %hat bottom

	View.Update
	delay (10)
    end for
end starscene

procedure sharkscenebackground
    for ocean : 0 .. 650
	drawline (0 + ocean, 0, 0 + ocean, 400, 176) %ocean
	drawline (0 + ocean, 0, 0 + ocean, 25, 137)
    end for

    for corals : 0 .. 20
	drawline (10 + corals, 25, 10 + corals, 50, 111) %coral 1
	drawline (70 + corals, 25, 70 + corals, 90, 190) %coral 2
	drawline (90 + corals, 25, 90 + corals, 80, 115) %coral 3

	drawarc (250, 25, 30, 20 - corals, 0, 180, 21) %rock 2
    end for

    for rocks : 0 .. 10
	drawarc (180, 25, 20, 10 - rocks, 0, 180, 21) %rock 1
    end for

    for seeweedz : 0 .. 10
	drawarc (200 + seeweedz, 30, 5, 5, 270, 90, 191) %seaweed 1 bott
	drawarc (200 + seeweedz, 40, 5, 5, 90, 270, 191) %seaweed 1 mid1
	drawarc (200 + seeweedz, 50, 5, 5, 270, 90, 191) %seaweed 1 mid2
	drawarc (200 + seeweedz, 60, 5, 5, 90, 270, 191) %seaweed 1 top

	drawarc (335 + seeweedz, 30, 5, 5, 270, 90, 191) %seaweed 2 bott
	drawarc (335 + seeweedz, 40, 5, 5, 90, 270, 191) %seaweed 2 mid1
	drawarc (335 + seeweedz, 50, 5, 5, 270, 90, 191) %seaweed 2 mid2
	drawarc (335 + seeweedz, 60, 5, 5, 90, 270, 191) %seaweed 2 top

	drawarc (350 + seeweedz, 30, 5, 5, 270, 90, 191) %seaweed 3 bott
	drawarc (350 + seeweedz, 40, 5, 5, 90, 270, 191) %seaweed 3 mid1
	drawarc (350 + seeweedz, 50, 5, 5, 270, 90, 191) %seaweed 3 mid2
	drawarc (350 + seeweedz, 60, 5, 5, 90, 270, 191) %seaweed 3 top
    end for
end sharkscenebackground


procedure sharkscene
    for octopenter : 0 .. 300 %moving the octopus
	drawfillbox (535, 442 - octopenter, 580, 494, 176) %octopus erase

	drawfilloval (560, 470 - octopenter, 20, 23, 64) %Calamari body
	drawfilloval (540, 460 - octopenter, 5, 5, 64) %first leg
	drawfilloval (547, 450 - octopenter, 5, 5, 64) %second leg
	drawfilloval (561, 447 - octopenter, 5, 5, 64) %third leg
	drawfilloval (574, 452 - octopenter, 5, 5, 64) %fourth leg
	drawfilloval (555, 475 - octopenter, 2, 2, black) %left eye
	drawfilloval (570, 475 - octopenter, 2, 2, black) %right eye
	drawarc (563, 472 - octopenter, 3, 2, 170, 10, black) %mouth
	drawfillbox (545, 485 - octopenter, 575, 490 - octopenter, white) %sushi bandana
	drawfilloval (562, 487 - octopenter, 2, 2, red) %red circle on bandana
	drawline (555, 485 - octopenter, 555, 490 - octopenter, black) %left bandana line
	drawline (570, 485 - octopenter, 570, 490 - octopenter, black) %right bandana line

	View.Update
	delay (5)
    end for

    for fishenter : 0 .. 300 %moving fishy
	drawfillbox (440, 455 - fishenter, 510, 491, 176) %fish erase

	drawfilloval (480, 470 - fishenter, 30, 15, 41) %Fish body
	drawfillbox (440, 460 - fishenter, 460, 480 - fishenter, 41) %fish tail
	drawline (450, 460 - fishenter, 450, 480 - fishenter, white) %tail line
	drawfillbox (472, 483 - fishenter, 492, 490 - fishenter, 41) %dorsal
	drawfilloval (500, 475 - fishenter, 2, 2, black) %eyeball
	drawarc (505, 467 - fishenter, 2, 3, 0, 180, black) %mouth
	drawarc (480, 470 - fishenter, 5, 4, 90, 270, black) %fin

	drawfilloval (450, 551 - fishenter, 130, 30, 176) %fish speech bubble erase
	drawline (450, 550 - fishenter, 465, 500, 176) %fish speech line erase

	drawfilloval (450, 550 - fishenter, 130, 30, white) %fish speech bubble
	drawline (450, 550 - fishenter, 465, 500 - fishenter, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("Maybe my hat is down here.", 360, 545 - fishenter, myfont, 40) %fish dialogue

	View.Update
	delay (2)
    end for

    for turtlenter : 0 .. 550
	drawfillbox (-231, 162, -155 + turtlenter, 195, 176) %turt erase

	drawfillarc (-200 + turtlenter, 162, 30, 30, 0, 180, 191) %kurt the turt's bod
	drawfilloval (-164 + turtlenter, 177, 9, 9, 119) %turtle head
	drawfilloval (-200 + turtlenter, 174, 13, 6, 119) %turtle fin
	drawfilloval (-161 + turtlenter, 180, 1, 2, black) %right eye
	drawfilloval (-167 + turtlenter, 180, 1, 2, black) %left eye
	drawarc (-164 + turtlenter, 175, 2, 2, 170, 10, black) %mouth
	Draw.ThickLine (-158 + turtlenter, 186, -172 + turtlenter, 186, 3, 6) %hat line
	drawfillbox (-169 + turtlenter, 186, -161 + turtlenter, 195, 183) %hat

	View.Update
	delay (5)
    end for

    for dialogue : 0 .. 30 %octopus dialogue
	drawoval (500, 90, 90, 20 - dialogue, white) %octopus speech bubble
	drawline (500, 90, 525, 130, white) %octopus speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("I don't see it...", 460, 85, myfont, 63) %octopus dialogue

	drawarc (563, 172, 3, 2, 170, 10, 64) %octopus mouth erase
	drawarc (563, 170, 3, 2, 10, 170, black) %new sad mouth

	drawarc (386, 175, 2, 2, 170, 10, 119) %turt mouth erase
	drawarc (386, 173, 3, 2, 10, 170, black) %new sad mouth
    end for

    for dialogue : 0 .. 30
	drawfilloval (450, 250, 130, 30 - dialogue, 176) %fish speech bubble erase
	drawline (450, 250, 465, 200, 176) %fish speech line erase
    end for

    for crabenter : 0 .. 325
	drawfillbox (-135, 155, -24 + crabenter, 205, 176) %crab erase

	drawfilloval (-80 + crabenter, 175, 30, 20, 40) %crab bod
	drawfilloval (-92 + crabenter, 195, 6, 6, white) %left eyeball
	drawfilloval (-92 + crabenter, 195, 3, 3, black) %left pupil
	drawfilloval (-68 + crabenter, 195, 6, 6, white) %right eyeball
	drawfilloval (-68 + crabenter, 195, 3, 3, black) %right pupil
	drawfillarc (-80 + crabenter, 185, 3, 3, 180, 0, black) %smiiiiile
	drawarc (-100 + crabenter, 190, 20, 10, 180, 270, 40) %left claw string
	drawfillarc (-125 + crabenter, 195, 10, 10, 180, 90, 40) %left claw
	drawarc (-60 + crabenter, 190, 20, 10, 270, 0, 40) %right claw string
	drawfillarc (-35 + crabenter, 195, 10, 10, 90, 0, 40) %right claw
	drawfillbox (-120 + crabenter, 170, -110 + crabenter, 175, 40) %left leg top
	drawfillbox (-110 + crabenter, 160, -100 + crabenter, 163, 40) %left leg bottom
	drawfillbox (-50 + crabenter, 170, -40 + crabenter, 175, 40) %right leg top
	drawfillbox (-60 + crabenter, 160, -50 + crabenter, 163, 40) %right leg bottom
	drawline (-120 + crabenter, 173, -130 + crabenter, 163, 40) %left foot top
	drawline (-110 + crabenter, 163, -120 + crabenter, 155, 40) %left foot bottom
	drawline (-40 + crabenter, 173, -30 + crabenter, 163, 40) %right foot top
	drawline (-50 + crabenter, 163, -40 + crabenter, 155, 40) %right foot bottom

	View.Update
	delay (6)
    end for

    for dialogue : 0 .. 20
	drawfilloval (450, 230, 50, 20 - dialogue, white) %fish speech bubble
	drawline (450, 250, 465, 200, white) %fish speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("...", 440, 230, myfont, 40) %fish dialogue

	drawoval (500, 90, 90, 20 - dialogue, 176) %octopus speech bubble erase
	drawline (500, 90, 525, 130, 176) %octopus speech line erase
    end for

    for cri : 0 .. 6
	drawfilloval (500, 174 - cri, 1, 2, 41) %erase
	drawfilloval (500, 173 - cri, 1, 2, 53) %teardrop

	View.Update
	delay (50)
    end for

    for starenter : 0 .. 300
	drawfillbox (100, 452 - starenter, 150, 514, 176) %star erase

	drawfillstar (100, 452 - starenter, 150, 502 - starenter, 3) %star bod
	drawfilloval (119, 479 - starenter, 2, 2, black) %left eye
	drawfilloval (131, 479 - starenter, 2, 2, black) %right eye
	drawline (122, 475 - starenter, 128, 475 - starenter, black) %mouth
	drawfillbox (115, 493 - starenter, 135, 513 - starenter, 39) %hat square
	drawfillarc (125, 495 - starenter, 10, 10, 0, 180, 44) %hat decor
	drawfilloval (125, 493 - starenter, 20, 4, 39) %hat bottom

	View.Update
	delay (4)
    end for

    for look : 0 .. 3
	drawfilloval (234 - look, 195, 3, 3, white) %left pupil eras
	drawfilloval (258 - look, 195, 3, 3, white) %right pupil erase

	drawfilloval (233 - look, 195, 3, 3, black) %left pupil
	drawfilloval (257 - look, 195, 3, 3, black) %right pupil

	View.Update
	delay (100)
    end for

    for shook : 0 .. 6 %widening eyes
	drawfilloval (233, 195, 6 + shook, 6 + shook, white) %left eyeball
	drawfilloval (257, 195, 6 + shook, 6 + shook, white) %right eyeball

	drawfilloval (230, 195, 3, 3, black) %left pupil
	drawfilloval (254, 195, 3, 3, black) %right pupil

	drawfillarc (245, 185 - shook, 2 + shook, 2 + shook, 0, 180, black) %mouth

	View.Update
	delay (100)
    end for

    for dialogue : 0 .. 30
	drawoval (255, 100, 80, 30 - dialogue, white) %crab speech bubble
	drawline (255, 100, 240, 140, white) %crab speech line

	var myfont : int %declare my font
	myfont := Font.New ("Calibri:12")
	Draw.Text ("G-guys... look...", 210, 100, myfont, 40) %crab dialogue

	drawfilloval (450, 230, 50, 20 - dialogue, 176) %fish speech bubble erase
	drawline (450, 250, 465, 200, 176) %fish speech line erase
    end for

play (">1BBBB")
    
    for look : 0 .. 5 %everyone but fish looks at the incoming shark
	drawfilloval (556 - look, 175, 2, 2, 64) %octopus left eye erase
	drawfilloval (571 - look, 175, 2, 2, 64) %octopus right eye erase
	drawarc (564 - look, 170, 3, 2, 10, 170, 64) %octopus mouth erase

	drawfilloval (555 - look, 175, 2, 2, black) %octopus left eye
	drawfilloval (570 - look, 175, 2, 2, black) %octopus right eye
	drawarc (563 - look, 170, 3, 2, 10, 170, black) %octopus mouth

	drawfilloval (384 - look, 180, 1, 2, 119) %turt left eye erase
	drawfilloval (390 - look, 180, 1, 2, 119) %turt right eye erase

	drawfilloval (383 - look, 180, 1, 2, black) %turt left eye
	drawfilloval (389 - look, 180, 1, 2, black) %turt right eye

	drawfilloval (120 - look, 179, 2, 2, 3) %star left eye erase
	drawfilloval (132 - look, 179, 2, 2, 3) %star right eye erase
	drawline (123 - look, 175, 129 - look, 175, black) %star mouth erase

	drawfilloval (119 - look, 179, 2, 2, black) %star left eye
	drawfilloval (131 - look, 179, 2, 2, black) %star right eye
	drawline (122 - look, 175, 128 - look, 175, black) %star mouth

	View.Update
	delay (500)
    end for

    for shook : 0 .. 3 %widening eyes
	drawfilloval (550, 175, 2 + shook, 2 + shook, white) %octopus left eye
	drawfilloval (565, 175, 2 + shook, 2 + shook, white) %octopus right eye

	drawfilloval (378, 180, 1 + shook, 2 + shook, white) %turt left eye
	drawfilloval (384, 180, 1 + shook, 2 + shook, white) %turt right eye

	drawfilloval (114, 179, 2 + shook, 2 + shook, white) %star left eye
	drawfilloval (126, 179, 2 + shook, 2 + shook, white) %star right eye

	drawfilloval (550, 175, 2, 2, black) %octopus left eye
	drawfilloval (565, 175, 2, 2, black) %octopus right eye
	drawarc (558, 170 - shook, 3, 2, 10, 170, black) %octopus mouth

	drawfilloval (378, 180, 1, 2, black) %turt left eye
	drawfilloval (384, 180, 1, 2, black) %turt right eye
	drawarc (386, 173 - shook, 3, 2, 10, 170, black) %turt mouth

	drawfilloval (114, 179, 2, 2, black) %star left eye
	drawfilloval (126, 179, 2, 2, black) %star right eye

	View.Update
	delay (500)
    end for

    for dialogue : 0 .. 30
	drawoval (255, 100, 80, 30 - dialogue, 176) %crab speech bubble erase
	drawline (255, 100, 240, 140, 176) %crab speech line erase
    end for

    for sharkenter : 0 .. 1100 %move the sharky boi
	drawfillbox (-376, 100, -50 + sharkenter, 335, 176) %shark erase

	drawfilloval (-200 + sharkenter, 200, 150, 100, 223) %shark bod
	drawfillarc (-200 + sharkenter, 140, 120, 40, 180, 0, 224) %shark belly
	drawfillbox (-240 + sharkenter, 190, -180 + sharkenter, 210, 224) %flipper
	drawfillarc (-210 + sharkenter, 295, 40, 40, 0, 90, 224) %fin
	drawfillarc (-375 + sharkenter, 200, 30, 100, 270, 90, 224) %tail
	drawfilloval (-90 + sharkenter, 240, 5, 5, white) %eyeball
	drawfilloval (-90 + sharkenter, 240, 3, 3, 40) %pupil
	drawline (-100 + sharkenter, 249, -80 + sharkenter, 242, black) %eyebrow
	drawfillarc (-50 + sharkenter, 170, 50, 35, 90, 270, white) %open the mouth

	View.Update
	delay (5)
    end for

    for dialogue : 0 .. 30
	drawoval (500, 200, 55, 30 - dialogue, white) %shark words
	drawline (500, 200, 570, 190, white) %shark speech line
	
	var myfont : int %declare my font
	myfont := Font.New ("Chiller:15")
	Draw.Text ("... Yum! >u<", 460, 200, myfont, 40) %shark dialogue
    end for

    var myfont : int %declare my font
    myfont := Font.New ("Chiller:50")
    Draw.Text ("Fin.", 7, 340, myfont, green) %title

    myfont := Font.New ("Calibri:10")
    Draw.Text ("Haha, get it? Fin?", 7, 320, myfont, green) %name

    play ("4E 4E 4E 1C")
end sharkscene

background
titlescreen
fishoctopuscene
turtlescene
crabscene
starscene
sharkscenebackground
sharkscene
