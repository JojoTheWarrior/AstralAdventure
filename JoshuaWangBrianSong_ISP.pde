// Name: Joshua Wang 
// Date: 5/10/22
// Teacher: Ms. Basaraba 
// Description: 

// declaration section

//IMPORTANT
float screenIndex = 0; //this variable, when at an integer, displays task slides. otherwise, it is used to display fun fact slides, which allow the user to learn various facts about space travel
//IMPORTANT

PFont titleFont, wordFont, errorFont;
color backgroundMerge1, backgroundMerge2, errorMerge1, errorMerge2, wall, helmet, star, starShadow, highlight, complete, redTank, blueTank, greenTank, black, 
      completeColor3, sky1, sky2, sun1, sun2, sunsetMerge1, sunsetMerge2, oceanMerge1, oceanMerge2, woodplank, woodplankStroke; //different colors used throughout the program
int astroRotate = 0, astroX = 400, astroY = 250; //variables to move the astronaut's body
int astroRightFootX = 0, astroRightFootY = 0, astroLeftFootX = 0, astroLeftFootY = 0; //variables to move the astronaut's feet
int astroRightHandX = 0, astroRightHandY = 0, astroLeftHandX = 0, astroLeftHandY = 0; //variables to move the astronaut's hands
int astro1XDirection = 1, astro1YDirection = 1; //the direction that the astronaut bounces in for the title screen
int rotationSlide2Count = 0; //the angle at which the lights rotate at
float extensionSlide2Count = 0; //the extra extension which the lights receive, matched with a sin function to create an expanding and contracting motion
color colorSwitchSlide2 = color(0); //flashes the color of "LOW FUEL" on slide 2
color colorSwitchSlide3 = color(229, 39, 39); //flashes the color of "ERROR" on slide 3
int exitColor = 255; //background color for when the user leaves the game
int exitVariable = 255; //variable for when the game closes
int astro1X = 0; //astronaut's current X location, which changes according to astro1XDirection
int astro1Y = 0; //astronaut's current Y location, which changes according to astro1YDirection
int slide2WheelRotate = 0; //the rotation of the wheel on slide 2 (must be rotated counterclockwise)
float fluidY = -262.5; //the fluid's y level as it comes down
float fluidFillY = 340; //the fluid's Y level as it begins to rise in the tank
float fluidCoverFillY = 340; //also draws the fluid's Y level, but it uses a non-curved rectangle to cover up gaps
boolean tankFill2 = false; //boolean to check if the fuel tank is completely full
int shifter = 250; //variable that moves the astronaut's hands in a shrugging motion on slide 3 (navigation counting task)
int finStars, finMoons, finPlanets; //three variables that count the total number of stars, moons and planets as the starOrMoonOrPlanet array stops
int userStars, userMoons, userPlanets; //three variables that allow the user to count the stars, moons and planets
int correctGuessSlide3 = 0; //this variable works as a 3-way boolean, -1 means the user lost, 0 means it is neutral, and 1 means that the user won
color arrow1Col, arrow2Col, arrow3Col, arrow4Col; //variables for the color of the arrows on slide 3
float rectCover = 100.0; //variable for slowing revealing the second task, goes until 200
String confirm = ""; //variable that waits for the user to understand how to play the memory game (they must enter "start");
boolean selectionOnce = false; // makes sure that the selections are only done one time
int sel1, sel2, sel3, sel4, sel5, sel6; // selected lights for the pattern (will be random)
boolean memoryGameStarted = false; //checks whether the user has inputted "start" yet
int sixRepeats = 0; //variable to allow the pattern to repeat 6 times
int armSwing3 = 325; //variable that lets the astronaut's arms swing around as if he were shrugging in confusion
int currentUserSelection = 0; //variable that collects the user's selected input
int userChoices = 0; //the correstponding value of "sel_" to compare with, to a maximum of 6
int userWon3 = 0; //works as a three-way boolean to determine whether the user has won the game (0 means undecided, 1 means yes, -1 means no)
boolean userStart3 = false; //boolean for whether or not the user has inputted "start" yet
String input3 = ""; //string that collects the user's input
int oxySelect = 0; //variable representing which tank the user selected
int slide3Extend25 = 0; //variable that shows the astronaut picking up the tank
float throwingVar = 0; //variable for moving the tank that is thrown 
float throwingRotate = 0; //variable for spinning the tank that is thrown
int droppingVar = 75; //variable for dropping the selected tank into the oxygen tank
float sunSpikeSpin = 0; //variable that lets the sun's spikes spin
float wave1, wave2, wave3, wave4; //variables that control the waves moving
float rocketShake = 0; //variable for shaking the rocket
int takeOffCountDown = 150; //variable for the rocket shaking before taking off
float rocketSpeed = 0.5; //variable for how much the rocket adds by each time
float rocketY = 275; //variable for the rocket blasting off
String slide3DeathMessage = ""; //string that changes depending on how the user died (what tank he chose)
int colorSlide3Star = 0; //variable for the alternating stars
int starFrame = -1; //variable intialized as the first stars are drawn, and then subsequently repeated every once in a while
color tubeColor, waterColor; //colors for changing the tube and the tank as the electricity passes through
float electricitySwitch = 0; //variable for gradually changing the electricity's impact on the colors over time
int astronautCheering3 = 0; //variable for the astronaut moving his hand in a "cheering" manner on the second fun fact slide
int movingOcean = 0; //variable for the ocean waves moving
float rocketDescending5 = -150; //variable for the rocket descending
float rocketDecrease5 = 4.5; //the speed at which the rocket decreases by
boolean astronautShowHead = true; //variable for whether or not the astronaut's head is visible in the rocket
int astronautLeaveRocket5 = 720, astronautLeaveRocketLeftFoot5 = 720, astronautLeaveRocketRightFoot5 = 720; //varible for the astronaut leaving the rocket ship
int rocketStandStillFrame5 = 0;
float rocketFireTransparencyLevel = 255.0; //variable for the rocket fire's transparency level, which decreases as the rocket stands still
boolean astroJump5 = false; //boolean for the astronaut jumping in joy
float leftFootMove4; //moving the left leg on slide 4
float rightFootMove4; //moving the right leg on slide 4
float astroMoveX4; //moving the body on slide 4
String startTask4 = ""; //collects user input to determine whether or not task 4 should be started
int clockMoveAngle = 0; //moves the arrow hand of the clock, small detail for fun
color chickenRoastColor1, chickenRoastColor2, chickenRoastColor3, chickenRoastColor4, chickenRoastColor5, chickenRoastColorDone, 
      chickenRoastColorBurnt; //five different colors for the chicken's level of being cooked (done means the task is complete, burnt means the user burnt it)
int chickenClicks = 1; //the value corresponds to which chicken color it is
color currentChickenColor; //color used as the current chicken color
String userBurnChickenWarn = ""; //variable used to warn the user that he should not burn the chicken
boolean timeStops = false; //sets this variable true when the user burns the chicken, to show the severity level of his consequences
float timeSpeed = 0.1; //moves the time backwards faster and faster
float randomShakeAmount = 0; //randomly shakes the screen to show the severity level of his consequences
int hasWonTask3 = 0; //0 means undetermined, 1 means yes, -1 means no
color spaceMerge1, spaceMerge2;
float rotateISS = -30; //rotates the ISS, ranging from -30 degrees to 30 degrees
float rotateSpeedISS = 0.7; //rotates the ISS at the given speed
boolean rotateDirectionISS = true; //true for up, false for down
float cargoX = -150, cargoY = 350; //variables for moving the cargo

// setup method
void setup(){

  size(800, 500);
  frameRate(90);
  // loads all the variables with values
  titleFont = createFont("Dosis-ExtraBold.ttf", 72); // used for large and concise texts, such as titles and subtitles
  wordFont = createFont("JosefinSans-Medium.ttf", 72); // more casual font, used for large blocks of text
  errorFont = createFont("ReactiveAnchor-L3L0n.ttf", 72); //serious font, used for error messages when the user loses
  backgroundMerge1 = color(14, 36, 100); //color for the background in the splash screen
  backgroundMerge2 = color(126, 26, 162); //the other color merge for the background in the splash screen
  //colors for when the user loses
  errorMerge1 = color(0, 0, 0); 
  errorMerge2 = color(229, 39, 39);
  //color for the stars
  star = color(108, 141, 237, 200);
  starShadow = color(173, 194, 255, 100);
  highlight = color(252, 140, 54);
  complete = color(35, 229, 59);
  completeColor3 = color(255);
  //initializes the waves
  wave1 = random(-300, -200);
  wave2 = random(-500, -300);
  wave3 = random(-150, -50);
  wave4 = random(-600, -500);
  //color of the sky
  sky1 = color(89, 216, 227);
  sky2 = color(89, 124, 227);
  sun1 = color(224, 232, 28);
  sun2 = color(234, 205, 38);
  //color for the electrolysis process
  tubeColor = color(157, 157, 157);
  waterColor = color(63, 23, 188);
  sunsetMerge1 = color(255, 163, 64); //darker, orange color
  sunsetMerge2 = color(245, 191, 82); //lighter, yellow color
  oceanMerge1 = color(40, 194, 234); //lighter water color
  oceanMerge2 = color(52, 30, 198); //darker blue color
  woodplank = color(149, 107, 23); //dark brown color for wood
  woodplankStroke = color(103, 74, 15); //darker brown color for the outline of the wood
  chickenRoastColor1 = color(255, 241, 214); //primary color for completely raw chicken
  chickenRoastColorDone = color(147, 107, 33); //primary color for fully cooked chicken
  chickenRoastColor2 = lerpColor(chickenRoastColor1, chickenRoastColorDone, 0.2);
  chickenRoastColor3 = lerpColor(chickenRoastColor1, chickenRoastColorDone, 0.4);
  chickenRoastColor4 = lerpColor(chickenRoastColor1, chickenRoastColorDone, 0.6);
  chickenRoastColor5 = lerpColor(chickenRoastColor1, chickenRoastColorDone, 0.8);
  chickenRoastColorBurnt = color(52, 38, 14); //primary color for burnt chicken, meaning the user lost
  currentChickenColor = chickenRoastColor1;
  spaceMerge1 = color(5); //dark space color
  spaceMerge2 = color(81, 21, 211); //blue space color
}

void draw(){
  if (screenIndex == -1){
    //leaving the game
    quitScreen();
    exitVariable -= 2;
    if (exitVariable <= 0){
      //closes the game once the exit variable is gone
      exit();
    }
  } else if (screenIndex == 0){
    //used right at the beginning, or at a restart
    splashScreen();
  } else if (screenIndex == 1){
    //first introduction slide
    slide1();
  } else if (screenIndex == 2){
    //first task
    slide2();
  } else if (screenIndex == 2.5){
    //first fun fact
    funFact1Background(); //branching for the fun fact slide (the user can choose to skip this slide instantly if he wants)
  } else if (screenIndex == 3){
    //second task
    slide3();
  } else if (screenIndex == -3){
    //second not-so-fun-fact, if the user loses
    slide3LoseScreen(); //branching for the death slide, changes depending on how the user died, also used for the third task
  } else if (screenIndex == 3.5){
    //second fun fact, if the user wins
    funFact2Background(); //branching for the second fun fact slide (the user can choose to skip this slide instantly if he wants)
  } else if (screenIndex == 4){
    //third task
    slide4();
  } else if (screenIndex == 4.5){
    //third fun fact
    funFact3();
  } else if (screenIndex == 5){
    //wins the game
    winningScreenBackground(); //goes to the last slide and the user has won the game
  }
}

// method for the splash screen
void splashScreen(){
  background(92, 134, 203);
  //creates a gradient that spans across the entire screen, imitating a stream of light through space
  for (int i = 0; i < 1900; i += 3){
    noStroke();
    rectMode(CORNERS);
    color gradient = lerpColor(backgroundMerge1, backgroundMerge2, i/2800.0);
    if (i < 900){
      gradient += i/1200.0;
    }
    fill(gradient);
    quad(i, 0, i + 15, 0, 0, 5 * i/7.0, 0, (5 * i/7.0) + 15);
  }
  
  // draws the glowing stars
  for (int i = 0; i < 120; i++){
    noStroke();
    float starSize = random(5, 10);
    float starX = random(0, 800);
    float starY = random(0, 500);
    
    fill(starShadow + random(0, 50));
    ellipse(starX - starSize/50, starY - starSize/50, starSize, starSize);
    fill(star);
    ellipse(starX, starY, starSize, starSize);
  }
  
  
  
  // writes the title in the center of the screen
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(titleFont);
  textSize(72);
  text("Astral Adventure", 400, 100);
  
  // writes the start and quit buttons
  textFont(wordFont);
  textSize(48);
  // branching for the start button
  if (mouseX >= 142 && mouseX <= 253 && mouseY >= 337 && mouseY <= 367){
    fill(highlight);
  }
  text("Start", 200, 350);
  
  fill(255);
  if (mouseX >= 550 && mouseX <= 645 && mouseY >= 330 && mouseY <= 365){
    fill(highlight);
  }
  text("Quit", 600, 350);
  textFont(wordFont, 24);
  textAlign(CENTER, BASELINE);
  text("Age Rating: 14+ (Contains mild horror and flashing scenes)", 400, 450);
}

//code for the first slide
void slide1(){
  background(0);
  strokeWeight(3);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(48);
  text("INTRODUCTION", 400, 50);
  textFont(wordFont);
  textSize(18);
  text("You are an astronaut travelling alone in space. \n\nHowever, after a collision with some space debris, \nyou are knocked out and wake up to a blaring alarm." +
  " Time is running out, \nand your only hope is to use your emergency shuttle to return to Earth. \nHowever, you must prepare for your journey by completing tasks." + 
  "\nIt will be a long and risky adventure. \nBest of luck, astronaut!\n\nTo progress through the story, you must click \"Next\" after completing each task.\nYou can also press 'q' at anytime to quit," + 
  " or 'r' to restart.\nThere are also 6 facts (both fun and not-so-fun) hidden throughout the game,\ntry your best to find them all!", 400, 250);
  
  //draws the astronaut on the side
  pushMatrix();
  translate(astroX, astroY);
  rotate(radians(astroRotate));
  
  //bouncing logic
  if (astroX <= 100){
    astro1XDirection = 1;
  } else if (astroX >= 700){
    astro1XDirection = -1;
  }
  
  if (astroY <= 100){
    astro1YDirection = 1;
  } else if (astroY >= 450){
    astro1YDirection = -1;
  }
  
  astroX += astro1XDirection * 2;
  astroY += astro1YDirection * 2;
  astroRotate += 1;
  
  scale(0.5);
  astronaut();
  astronautLeftHand();
  astronautRightHand();
  astronautLeftFoot();
  astronautRightFoot();
  popMatrix();
  
  textFont(wordFont);
  textSize(48);
  // branching for the "next" button
  if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
    fill(highlight);
  }
  text("Next", 400, 460);
  fill(255);
}

void slide2(){
  //drawing the engine room
  rectMode(CORNERS);
  background(183, 183, 183);
  noStroke();
  fill(103, 95, 95);
  rect(0, 450, 800, 500);
  
  //draws the ladder
  fill(231, 232, 16);
  rect(50, 450, 60, 100);
  rect(100, 450, 110, 100);
  
  for (int i = 400; i >= 150; i-=50){
    rect(55, i, 105, i - 10);
  }
  
  fill(255);
  strokeWeight(3);
  stroke(0);
  rectMode(CORNERS);
  rect(480, 385, 470, 450);
  rect(620, 385, 630, 450);
  
  rectMode(CENTER);
  //draws the tank
  strokeWeight(7);
  rect(550, 300, 300, 180, 50);
  
  pushMatrix();
  translate(50, 0);
  if (frameCount % 100 == 0){
    if (colorSwitchSlide2 == color(0)){
      colorSwitchSlide2 = color(216, 48, 48);
    } else {
      colorSwitchSlide2 = color(0);
    }
  } 
  
  if (tankFill2 == false){
    pushMatrix();
    translate(50, 0);
    strokeWeight(10);
    fill(137, 135, 135);
    rectMode(CORNERS);
    rect(119, 86, 269, 287);
  
    //draws a gauge on the wall
    fill(255, 255, 237);
    strokeWeight(3);
    stroke(0);
    fill(lerp(0, 255, abs(0.5 - (frameCount % 100)/100.0)));
    ellipse(194, 161, 50, 50);

    translate(194, 161);
    if (frameCount % 25 == 0){
      rotationSlide2Count++;
    }
    extensionSlide2Count = 5 * (sin(rotationSlide2Count));
    rotate(radians(30 * (rotationSlide2Count % 12)));
    for (int i = 0; i < 12; i++){
      rotate(radians(30));
      strokeWeight(5);
      stroke(lerp(-100, 255, i/11.0), 0, lerp(-100, 225, i/11.0));
      line(0, 50 + extensionSlide2Count, 0, 40 + extensionSlide2Count);
    }
    popMatrix();
  
    pushMatrix();
    translate(50, 0);
    //draws a sign under the light
    stroke(232, 72, 54);
    fill(0);
    rectMode(CENTER);
    rect(194, 250, 80, 40, 155);
    textAlign(CENTER, CENTER);
    
    fill(colorSwitchSlide2);
    textFont(wordFont);
    textSize(12);
    text("LOW FUEL", 194, 250);
    popMatrix();
    popMatrix();
  } else {
    pushMatrix();
    translate(50, 0);
    strokeWeight(10);
    fill(137, 135, 135);
    rectMode(CORNERS);
    rect(119, 86, 269, 287);
  
    //draws a gauge on the wall
    fill(255, 255, 237);
    strokeWeight(3);
    stroke(0);
    fill(lerp(0, 255, abs(0.5 - (frameCount % 100)/100.0)));
    ellipse(194, 161, 50, 50);

    translate(194, 161);
    if (frameCount % 25 == 0){
      rotationSlide2Count++;
    }
    
    extensionSlide2Count = 5 * (sin(rotationSlide2Count));
    rotate(radians(30 * (rotationSlide2Count % 12)));
    for (int i = 0; i < 12; i++){
      rotate(radians(30));
      strokeWeight(5);
      stroke(lerp(30, 40, i/11.0), 229, lerp(54, 64, i/11.0));
      line(0, 50 + extensionSlide2Count, 0, 40 + extensionSlide2Count);
    }
    popMatrix();
    
    pushMatrix();
    translate(50, 0);
    //draws a sign under the light
    stroke(complete);
    fill(0);
    rectMode(CENTER);
    rect(194, 250, 80, 40, 155);
    textAlign(CENTER, CENTER);
    
    fill(complete);
    textFont(wordFont);
    textSize(12);
    text("FULL", 194, 250);
    popMatrix();
    popMatrix();
  }
     
  //draws the pipe above the tank
  fill(255);
  stroke(0);
  rectMode(CENTER);
  rect(550, 150, 50, 425, 10);
  noStroke();
  
  //draws the fluid coming in through the pipe
  fill(93, 44, 5);
  rect(550, fluidY, 50, 425, 10);
  
  //draws the fluid filling up the tank
  rectMode(CORNERS);
  rect(400, fluidFillY, 700, 340, 50);
  rect(400, fluidCoverFillY, 700, 340);

  //draws in the residual fuel (still in the tank)
  beginShape();
  noStroke();
  arc(450, 340, 100, 100, HALF_PI, PI);
  rect(450, 340, 650, 390);
  arc(650, 340, 100, 100, 0, HALF_PI);
  endShape();
  
  //draws the wheel
  pushMatrix();
  translate(450, 300);
  strokeWeight(10);
  if (dist(mouseX, mouseY, 450, 300) <= 32 && astroX >= 310){
    stroke(240, 19, 19);
  } else {
    stroke(113, 3, 3);
  }
  strokeCap(ROUND);
  noFill();
  ellipse(0, 0, 50, 50);
  strokeWeight(7);
  rotate(radians(slide2WheelRotate));
  for (int i = 0; i < 6; i++){
    rotate(radians(45 * i));
    line(-35, 0, 35, 0);
  }
  popMatrix();
  
  //the astronaut walks in
  if (astroX <= 325){
    astroX++;
    astroRightHandX++;
    astroLeftHandX++;
    if ((astroX + 100) % 20 == 0){
      astroLeftFootX += 20;
    } else if ((astroX + 100) % 20 == 10){
      astroRightFootX += 20;
    }

    pushMatrix();
    translate(astroX, 300);
    astronaut();
    astronautLeftHand();
    popMatrix();
    
    pushMatrix();
    translate(astroRightHandX, 300);
    astronautRightHand();
    popMatrix();
    
    pushMatrix();
    translate(astroLeftFootX, 300);
    astronautLeftFoot();
    popMatrix();
    
    pushMatrix();
    translate(astroRightFootX, 300);
    astronautRightFoot();
    popMatrix();
  } else {
    //draws everything except the right hand
    pushMatrix();
    translate(325, 300);
    astronaut();
    astronautLeftHand();
    astronautLeftFoot();
    astronautRightFoot();
    popMatrix();
    //draws the right hand
    pushMatrix();
    translate(350, 270);
    astronautRightHand();
    popMatrix();
  }
  
  if (tankFill2){
    textFont(wordFont);
    textSize(48);
    //draws this rectangle under the button
    noStroke();
    fill(0);
    rectMode(CENTER);
    rect(400, 460, 116, 74);
    fill(255);
    //branching for the "Next" button
    if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
      fill(highlight);
    }
    text("Next", 400, 460);
  }
  
  //text at the top, explaining the task
  fill(0);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  //draws the shadow for the task name
  text("Task 1: Fuel Tanks", 45, 55); 
  
  //note: all task texts shall be size 30, title font, fill(255)
  fill(255);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  text("Task 1: Fuel Tanks", 50, 50);
}

void funFact1Background(){
  noStroke();
  rectMode(CORNERS);
  //draws the background
  for (int i = 350; i >= 0; i -= 10){
    fill(lerpColor(sky2, sky1, i/350.0));
    rect(0, i, 800, i + 10);
  }
  
  //draws the rocks
  fill(100, 50, 11);
  bezier(-350, 360, -50, 200, 250, 180, 350, 360);
  fill(147, 95, 55);
  bezier(200, 360, 500, 225, 600, 300, 1100, 360);
  fill(147, 78, 25);
  bezier(450, 360, 600, 250, 700, 270, 900, 360);
  fill(188, 182, 177);
  bezier(-30, 360, 100, 300, 210, 300, 240, 360);
  fill(155, 134, 119);
  bezier(150, 360, 300, 300, 500, 325, 800, 360);
  fill(193, 146, 109);
  bezier(-40, 360, 75, 340, 280, 300, 400, 360);
  
  //draws the sun
  fill(sun1);
  ellipse(30, 30, 100, 100);
  
  //draws the "spikes" around the sun
  pushMatrix();
  translate(30, 30);
  rotate(sunSpikeSpin);
  for (int i = 0; i <= 360; i += 30){
    pushMatrix();
    rotate(radians(i));
    triangle(-30, 40, 30, 40, 0, -100);
    popMatrix();
  }
  popMatrix();
  sunSpikeSpin += 0.5;
  
  fill(sun2);
  ellipse(30, 30, 80, 80);
  
  if (takeOffCountDown >= 0){
    takeOffCountDown--;
    //draws the rocket
    pushMatrix();
    translate(400, 275);
    rotate(abs(1 - (frameCount % 2)) * random(radians(100 - takeOffCountDown))/25.0);
    rocket();
    popMatrix();
  } else if (rocketY >= -200){
    //makes the rocket blast off
    rocketSpeed *= 1.05;
    rocketY -= rocketSpeed;
    pushMatrix();
    translate(400, rocketY);
    rocket();
    popMatrix();
  }
  
  //draws the ocean
  fill(38, 190, 234);
  rect(0, 350, 800, 500);
  
  //draws the ground
  fill(160, 168, 170);
  rect(0, 350, 800, 380);
  fill(29, 193, 77);
  rect(0, 350, 800, 360);
  
  //draws the rocket's launchpad
  stroke(0);
  fill(148, 150, 150);
  rect(325, 300, 475, 340);
  noStroke();
  fill(0);
  rect(250, 325, 550, 350);
  
  noStroke();
  fill(29, 193, 77);
  //draws the grass on the ground
  for (int i = 0; i < 800; i += 15){
    triangle(i - 10, 350, i + 10, 350, i, 335);
  }
  
  //draws the waves in the ocean
  noFill();
  strokeWeight(5);
  stroke(29, 48, 191);
  
  //branching for the waves resetting
  if (wave1 > 900){
    wave1 = random(-300, -200);;
  }
  if (wave2 > 900){
    wave2 = random(-500, -300);
  }
  if (wave3 > 900){
    wave3 = random(-150, -50);
  }
  if (wave4 > 900){
    wave4 = random(-600, -500);
  }

  wave1 += 5;
  wave2 += 5;
  wave3 += 5;
  wave4 += 5;
  
  pushMatrix();
  translate(wave1, 400);
  wave();
  popMatrix();
  
  pushMatrix();
  translate(wave2, 425);
  wave();
  popMatrix();
  
  pushMatrix();
  translate(wave3, 450);
  wave();
  popMatrix();
  
  pushMatrix();
  translate(wave4, 475);
  wave();
  popMatrix();
  
  //text at the top, explaining the task
  fill(0);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  //draws the shadow for the task name
  text("Fun Fact 1: Rocket Fuel", 45, 55); 
  
  //note: all task texts shall be size 30, title font, fill(255)
  fill(255);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  text("Fun Fact 1: Rocket Fuel", 50, 50);
  
  //writes the name of the fact
  textFont(wordFont, 18);
  text("Did you know that a rocket uses \n11,000 pounds of fuel per second during takeoff?\n\nTo put that into perspective, a car\nuses around 4 pounds per hour!", 50, 100);
  
  //lets the user skip this slide, since it's not part of the game
  textAlign(CENTER, CENTER);
  textFont(wordFont);
  textSize(48);
  //draws this rectangle under the button
  noStroke();
  fill(0);
  rectMode(CENTER);
  rect(400, 460, 116, 74);
  
  fill(255);
  //branching for the "Next" button
  if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
    fill(highlight);
  }
  text("Next", 400, 460);
  
  //draws a "restart" button 
  strokeWeight(3);
  stroke(150);
  fill(waterColor);
  if (sqrt(pow((mouseX - 725), 2) + pow((mouseY - 75), 2)) < 37.5){ //collision between mouse and the button
    fill(116, 152, 222);
  }
  
  //draws the button
  ellipse(725, 75, 75, 75);
  noFill();
  strokeWeight(8);
  stroke(0);
  //draws the arrow inside the button
  arc(725, 75, 40, 40, radians(270), radians(540));
  strokeCap(PROJECT);
  pushMatrix();
  translate(705, 75);
  rotate(radians(-22.5));
  line(0, 0, -10, 10);
  line(0, 0, 10, 10);
  strokeCap(ROUND);
  popMatrix();
}

void wave(){
  for (int i = 0; i < 3; i++){
    pushMatrix();
    translate(i * 30.5, 0);
    bezier(-25, 12.5, -25, 0, 25, 0, 25, -12.5);
    bezier(5.5, 12.5, 12.5, 0, 25, 0, 25, -12.5);
    popMatrix();
  }
}

void rocket(){
  rectMode(CENTER);
  //draws the body of the rocket
  stroke(0);
  strokeWeight(4);
  fill(227, 229, 245);
  arc(0, 0, 90, 200, radians(110), radians(270));
  arc(0, 0, 90, 200, radians(270), radians(430));
  noStroke();
  triangle(-17, 92, 17, 92, 0, 0);
  stroke(0);
  strokeWeight(4);
  line(-17, 92, 17, 92);
  
  fill(206, 37, 37);
  //draws the wings
  beginShape();
  vertex(-45, 0);
  bezierVertex(-45, 0, -75, 0, -75, 50);
  vertex(-75, 50);
  bezierVertex(-75, 50, -75, 45, -46, 21);
  endShape();
  
  beginShape();
  vertex(45, 0);
  bezierVertex(45, 0, 75, 0, 75, 50);
  vertex(75, 50);
  bezierVertex(75, 50, 75, 45, 46, 21);
  endShape();
  
  //draws the window in the middle, with the astronaut in it
  fill(0);
  ellipse(0, -15, 50, 60);
  pushMatrix();
  translate(0, -20);
  scale(0.3);
  //same as the astronaut() method, but with a shorter body
  rectMode(CENTER);
  //head of astronaut
  strokeWeight(3);
  stroke(0, 0, 0, rocketFireTransparencyLevel); //rocketFireTransparencyLevel is also used to fade the astronaut's face out
  fill(255, 255, 255, rocketFireTransparencyLevel);
  ellipse(0, 0, 100, 87.5);
  strokeWeight(1);
  fill(142, 142, 142, rocketFireTransparencyLevel);
  ellipse(0, -5, 75, 60);
  fill(59, 155, 232, rocketFireTransparencyLevel);
  ellipse(0, -5, 60, 45);
  
  //body of astronaut
  strokeWeight(4);
  fill(255, 255, 255, rocketFireTransparencyLevel);
  strokeWeight(2);
  rect(0, 70, 85, 70, 15);
  
  //draws the lights
  pushMatrix();
  translate(0, 15);
  rectMode(CORNERS);
  fill(255, 0, 0, rocketFireTransparencyLevel);
  rect(-32, 47, -22, 57);
  fill(0, 255, 0, rocketFireTransparencyLevel);
  rect(-22, 47, -12, 57);
  fill(0, 0, 255, rocketFireTransparencyLevel);
  rect(-12, 46, -2, 57);
  popMatrix();
  popMatrix();
  
  //draws the outer window
  noFill();
  strokeWeight(15);
  stroke(26, 228, 242);
  ellipse(0, -15, 50, 60);
  //first layer
  strokeWeight(5);
  stroke(0);
  ellipse(0, -15, 57.5, 67.5);
  
  //draws the inner window
  noStroke();
  fill(26, 228, 242, 50);
  ellipse(0, -15, 42.5, 52.5);
  rectMode(CORNERS);
  
  //draws the fire
  //first layer
  fill(250, 156, 15, rocketFireTransparencyLevel);
  beginShape();
  vertex(-20, 100);
  vertex(-30, 140);
  vertex(-10, 125);
  vertex(0, 150);
  vertex(10, 124);
  vertex(34, 140);
  vertex(17, 100);
  endShape();
  
  //second layer
  fill(250, 66, 15, rocketFireTransparencyLevel);
  beginShape();
  vertex(-10, 90);
  vertex(-20, 130);
  vertex(-10, 115);
  vertex(0, 140);
  vertex(5, 114);
  vertex(24, 130);
  vertex(7, 90);
  endShape();
  
  fill(0);
  //draws the base of the rocket
  rect(-35, 75, 35, 105);
}

void slide3Background(){
  //method that draws every stationary part of the 3rd slide
  rectMode(CORNERS);
  noStroke();
  for (int i = 0; i < 800; i += 10){
    fill(lerpColor(backgroundMerge1, backgroundMerge2, i/800.0));
    rect(i, 0, i + 10, 500);
  }
  fill(216, 211, 177);
  strokeWeight(3);
  stroke(160, 156, 137);
  rectMode(CORNERS);
  rect(0, 450, 800, 500);
  line(0, 475, 800, 475);
  for (int i = 0; i < 800; i += 50){
    line(i, 450, i + 15, 500);
  }
  
  //this is the exact same font as the minigame's name, except it's black and it's aligned in the center
  fill(0);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  //draws the shadow for the task name's shadow
  text("Task 2: Oxygen Tanks (Logic Puzzle)", 45, 55); 
  textAlign(CENTER, CENTER);
  
  //draws the text boxes for each tank
  fill(237, 74, 74); //red message
  rectMode(CORNERS);
  rect(181, 91, 550, 143, 15);
  fill(0);
  text("Tank #2 contains oxygen.", 365.5, 117);
  fill(74, 121, 237); //blue message
  rect(181, 141, 550, 193, 15);
  fill(0);
  text("Tank #3 contains chlorine.", 365.5, 167);
  fill(74, 237, 132); //green message
  rect(181, 191, 550, 293, 15);
  fill(0);
  text("Tank #1 or #3 contains", 365.5, 217);
  text("chlorine, (but not both).", 365.5, 242);
  rectMode(CENTER);
  
  
  //oxygen tank
  oxygenTank3();
  
  //writes the name of the minigame
  fill(255);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  text("Task 2: Oxygen Tanks (Logic Puzzle)", 50, 50);
}

void oxygenTank3(){
  noStroke();
  rectMode(CORNERS);
  //draws a partial background, which helps to obscure the tanks when they are dropping
  for (int i = 620; i <= 780; i += 10){
    fill(lerpColor(backgroundMerge1, backgroundMerge2, i/800.0));
    rect(i, 135, i + 10, 250);
  }
  
  rectMode(CENTER);
  //draws the tip protruding from the top of the tank
  fill(57, 52, 85);
  rect(700, 210, 60, 50);
  strokeWeight(3);
  stroke(0);
  
  //draws the body of the tank  
  fill(178, 180, 179);
  rect(700, 335, 120, 250, 15); //extends from a Y range of 210 to 460
  
  //draws the opening on top of the tip
  quad(670, 185, 620, 135, 780, 135, 730, 185);
  noStroke();
  
  //draws stripes on the large tank
  fill(completeColor3);
  rect(700, 250, 115, 30);
  rect(700, 420, 115, 30);
  
  //writes the symbol for Oxygen, letting the user know that he must pick oxygen correctly
  ellipse(700, 335, 90, 90);
  textFont(wordFont, 48);
  textAlign(CENTER, CENTER);
  fill(0);
  text("O2", 700, 335);
}

void slide3(){
  //automatically changes the color variables
  redTank = color(237, 74, 74);
  blueTank = color(74, 121, 237);
  greenTank = color(74, 237, 132);
  black = color(0);
  //red one
  strokeWeight(3);
  stroke(0);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  slide3Background();
  
  if (slide3Extend25 == 0){
    //calls the three methods that draw tanks
    pushMatrix();
    translate(225, 400);
    redTank3();
    translate(150, 0);
    blueTank3();
    translate(150, 0);
    greenTank3();
    popMatrix();
  }
 
  if (astroX <= 100){ //while the astronaut is still entering
    if ((astroX + 160) % 16 == 0){
      astroRightFootX += 16;
    } else if ((astroX + 160) % 16 == 8){
      astroLeftFootX += 16;
    }
    
    //defaults if it's the last frame
    if (astroX == 100){
      astroRightFootX = 85;
      astroLeftFootX = 95;
    }
    astroX++;
    pushMatrix();
    translate(astroX, 300);
    astronaut();
    astronautRightHand();
    astronautLeftHand();
    popMatrix();
    pushMatrix();
    translate(astroLeftFootX, 300);
    astronautLeftFoot();
    popMatrix();
    pushMatrix();
    translate(astroRightFootX, 300);
    astronautRightFoot();
    popMatrix();
  }
  else if (astroX > 99 && oxySelect == 0){ // branching for once the astronaut walks 100 pixels
    pushMatrix();
    translate(100, 300);
    astronaut();
    astronautRightHand();
    astronautLeftHand();
    popMatrix();
    pushMatrix();
    translate(85, 300);
    astronautRightFoot();
    translate(10, 0);
    astronautLeftFoot();
    popMatrix();
    while (!input3.equals("start")){
      input3 = getString("In this task, three tanks are filled with Oxygen, Chlorine, and Cesium.\nHowever, they are not labelled, and you must choose the tank that contains oxygen.\nNote: Only one sign is telling the truth.\n\nEnter \"start\" when you are ready.");
      print(input3.equals("start"));
    }
  }
  if (oxySelect != 0){
    if (oxySelect == 1){
        //astronaut picks the red tank
        if (astroX < 150){
          if (astroX % 16 == 0){
          astroRightFootX += 16;
        } else if (astroX % 16 == 8){
          astroLeftFootX += 16;
        }
        astroX++;
        pushMatrix();
        translate(astroX, 300);
        astronaut();
        astronautRightHand();
        astronautLeftHand();
        popMatrix();
        pushMatrix();
        translate(astroLeftFootX, 300);
        astronautLeftFoot();
        popMatrix();
        pushMatrix();
        translate(astroRightFootX, 300);
        astronautRightFoot();
        popMatrix();
      } else if (slide3Extend25 <= 25){
        pushMatrix();
        //draws the astronaut's main body
        translate(150, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        translate(slide3Extend25, -slide3Extend25);
        //draws the astronaut's right hand independantly, while also drawing the red tank moving
        astronautRightHand();
        popMatrix();
        pushMatrix();
        translate(slide3Extend25 + 225, 400 - slide3Extend25);
        redTank3();
        popMatrix();
        slide3Extend25++;
        
        //draws the other two tanks
        pushMatrix();
        translate(375, 400);
        blueTank3();
        translate(150, 0);
        greenTank3();
        popMatrix();
      } else {
        pushMatrix();
        //draws the astronaut's main body
        translate(150, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        translate(25, -25);
        //draws the astronaut's right hand independantly
        astronautRightHand();
        popMatrix();
        if (throwingVar < 450){
          //draws the tank being thrown
          pushMatrix();
          translate(250 + throwingVar, 375 - (0.7263 * throwingVar));
          rotate(radians(throwingRotate));
          redTank3();
          popMatrix();
          
          //draws the other two tanks
          pushMatrix();
          translate(375, 400);
          blueTank3();
          translate(150, 0);
          greenTank3();
          popMatrix();
          
          //adds onto the moving and spinning variables
          throwingVar += 3;
          throwingRotate += 4.8;
        } else if (droppingVar < 200){
          //draws a background to cover the previous astronaut
          slide3Background();
          
          pushMatrix();
          translate(700, droppingVar);
          redTank3();
          popMatrix();
          
          //draws the other two tanks
          pushMatrix();
          translate(375, 400);
          blueTank3();
          translate(150, 0);
          greenTank3();
          popMatrix();
          
          //covers up the red tank using an oxygen tank
          oxygenTank3();
          
          pushMatrix();
          //draws the astronaut's main body, reset to its original position
          translate(150, 300);
          astronaut();
          astronautLeftFoot();
          astronautRightFoot();
          astronautLeftHand();
          astronautRightHand();
          popMatrix();
          
          droppingVar++;
        } else {
          //covers the previous background
          slide3Background();
          
          completeColor3 = color(250, 38, 38);
          pushMatrix();
          //draws the astronaut's main body, reset to its original position
          translate(150, 300);
          astronaut();
          astronautLeftFoot();
          astronautRightFoot();
          astronautLeftHand();
          astronautRightHand();
          popMatrix();
          
          //draws the other two tanks
          pushMatrix();
          translate(375, 400);
          blueTank3();
          translate(150, 0);
          greenTank3();
          popMatrix();
          
          //draws a thin red film over the entire screen, a subtle note that the player lost
          fill(255, 0, 0, 50);
          rectMode(CORNERS);
          rect(0, 0, 800, 500);
          
          textFont(wordFont);
          textSize(48);
          //draws this rectangle under the button
          noStroke();
          fill(0);
          rectMode(CENTER);
          rect(400, 460, 116, 74);
          
          fill(255);
          //branching for the "Next" button
          if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
            fill(highlight);
          }
          text("Next", 400, 460);
          //sets the winning variable to -1
          userWon3 = -1;
        }
      }
    } else if (oxySelect == 2){
      //astronaut picks the blue tank
        if (astroX < 300){
          if (astroX % 16 == 0){
          astroRightFootX += 16;
        } else if (astroX % 16 == 8){
          astroLeftFootX += 16;
        }
        astroX++;
        pushMatrix();
        translate(astroX, 300);
        astronaut();
        astronautRightHand();
        astronautLeftHand();
        popMatrix();
        pushMatrix();
        translate(astroLeftFootX, 300);
        astronautLeftFoot();
        popMatrix();
        pushMatrix();
        translate(astroRightFootX, 300);
        astronautRightFoot();
        popMatrix();
      } else if (slide3Extend25 <= 25){
        //draws the other two tanks
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(300, 0);
        greenTank3();
        popMatrix();
        
        //draws the astronaut
        pushMatrix();
        translate(300, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        popMatrix();
        
        pushMatrix();
        //draws the astronaut's right hand independantly, while also drawing the tank being thrown
        translate(300 + slide3Extend25, 300 - slide3Extend25);
        astronautRightHand();
        popMatrix();
        
        pushMatrix();
        translate(slide3Extend25 + 375, 400 - slide3Extend25);
        blueTank3();
        popMatrix();
        slide3Extend25++;
      } else if (throwingVar < 300){
        //draws the tank being thrown
        pushMatrix();
        translate(400 + throwingVar, 375 - (throwingVar * 1.0833333));
        rotate(radians(throwingRotate));
        blueTank3();
        popMatrix();
        
        //draws the other two tanks
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(300, 0);
        greenTank3();
        popMatrix();
        
        //draws the astronaut
        pushMatrix();
        translate(300, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        translate(25, -25);
        astronautRightHand();
        popMatrix();
        
        //adds onto the moving and spinning variables
        throwingVar += 3;
        throwingRotate += 4.8;
      } else if (droppingVar < 200){
        //draws a background to cover the previous astronaut
        slide3Background();
        
        pushMatrix();
        translate(700, droppingVar);
        blueTank3();
        popMatrix();
        
        //draws the other two tanks
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(300, 0);
        greenTank3();
        popMatrix();
        
        //covers up the blue tank using an oxygen tank
        oxygenTank3();
        
        pushMatrix();
        //draws the astronaut's main body, reset to its original position
        translate(300, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        astronautRightHand();
        popMatrix();
        
        droppingVar++;
      } else {
        completeColor3 = color(250, 38, 38);
        
        //draws the other two tanks
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(300, 0);
        greenTank3();
        popMatrix();
        
        //draws the astronaut's main body, reset to its original position
        pushMatrix();
        translate(300, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        astronautRightHand();
        popMatrix();
        
        //draws a thin red film over the entire screen, a subtle note that the player lost
        fill(255, 0, 0, 50);
        rectMode(CORNERS);
        rect(0, 0, 800, 500);
        
        textFont(wordFont);
        textSize(48);
        //draws this rectangle under the button
        noStroke();
        fill(0);
        rectMode(CENTER);
        rect(400, 460, 116, 74);
        
        fill(255);
        //branching for the "Next" button
        if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
          fill(highlight);
        }
        text("Next", 400, 460);
        
        //changes the winning variable to -1
        userWon3 = -1;
      }
    } else if (oxySelect == 3){
      //astronaut picks the green tank
      if (astroX < 450){
          if (astroX % 16 == 0){
          astroRightFootX += 16;
        } else if (astroX % 16 == 8){
          astroLeftFootX += 16;
        }
        astroX++;
        pushMatrix();
        translate(astroX, 300);
        astronaut();
        astronautRightHand();
        astronautLeftHand();
        popMatrix();
        pushMatrix();
        translate(astroLeftFootX, 300);
        astronautLeftFoot();
        popMatrix();
        pushMatrix();
        translate(astroRightFootX, 300);
        astronautRightFoot();
        popMatrix();
      } else if (slide3Extend25 < 25){
        //draws the other tanks to cover up
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(150, 0);
        blueTank3();
        popMatrix();
        
        //moves the astronaut's arm up while also throwing the tank
        pushMatrix();
        translate(450, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        translate(slide3Extend25, -slide3Extend25);
        astronautRightHand();
        popMatrix();
        
        pushMatrix();
        translate(525 + slide3Extend25, 400 - slide3Extend25);
        greenTank3();
        popMatrix();
        
        slide3Extend25++;
      } else if (throwingVar <= 150){
        //draws the other tanks to cover up
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(150, 0);
        blueTank3();
        popMatrix();
        
        //draws the astronaut, with his right hand extended
        pushMatrix();
        translate(450, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        translate(25, -25);
        astronautRightHand();
        popMatrix();
        
        //throws the tank
        pushMatrix();
        translate(550 + throwingVar, 375 - (throwingVar * 2));
        rotate(radians(throwingRotate));
        greenTank3();
        popMatrix();
        
        //adds onto the moving and spinning variables
        throwingVar += 1.5;
        throwingRotate += 7.2;
      } else if (droppingVar < 200){
        //draws a background to cover the previous astronaut
        slide3Background();
        
        pushMatrix();
        translate(700, droppingVar);
        greenTank3();
        popMatrix();
        
        //draws the other tanks to cover up
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(150, 0);
        blueTank3();
        popMatrix();
        
        //covers up the green tank using the oxygen tank
        oxygenTank3();
        
        pushMatrix();
        //draws the astronaut's main body, reset to its original position
        translate(450, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        astronautRightHand();
        popMatrix();
        
        droppingVar++;
      } else {
        completeColor3 = complete;
        
        //draws the other tanks to cover up
        pushMatrix();
        translate(225, 400);
        redTank3();
        translate(150, 0);
        blueTank3();
        popMatrix();
        
        //draws the astronaut's main body, reset to its original position
        pushMatrix();
        translate(450, 300);
        astronaut();
        astronautLeftFoot();
        astronautRightFoot();
        astronautLeftHand();
        astronautRightHand();
        popMatrix();
        
        //draws a thin green film over the entire screen, a subtle note that the player won
        fill(0, 200, 0, 40);
        rectMode(CORNERS);
        rect(0, 0, 800, 500);
        
        textFont(wordFont);
        textSize(48);
        //draws this rectangle under the button
        noStroke();
        fill(0);
        rectMode(CENTER);
        rect(400, 460, 116, 74);
        
        fill(255);
        //branching for the "Next" button
        if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
          fill(highlight);
        }
        text("Next", 400, 460);
        
        //changes the winning variable to -1
        userWon3 = 1;
      }
    }
  }
}

//exclusive methods
void redTank3(){
  //changes the stroke for the tanks
  strokeWeight(3);
  stroke(0);
  rectMode(CENTER);
  //branching for the first tank's highlight
  if (((mouseX > 185 && mouseX < 265 && mouseY >= 395 && mouseY <= 455) || (mouseX > 195 && mouseX < 255 && mouseY >= 355 && mouseY <= 395)) && astroX > 99 && oxySelect == 0){
    redTank = highlight;
    black = color(255);
  }
  fill(redTank);
  rect(0, 25, 80, 60, 5);
  fill(redTank + 10);
  rect(0, -25, 60, 40, 5);
  fill(black);
  rect(0, 25, 60, 40);
  textAlign(CENTER, CENTER);
  fill(redTank);
  text("1", 0, 20);
}

void blueTank3(){
  //changes the stroke for the tanks
  strokeWeight(3);
  stroke(0);
  rectMode(CENTER);
  //blue one
  black = color(0);
  //branching for the second tank's highlight
  if (((mouseX > 335 && mouseX < 415 && mouseY >= 395 && mouseY <= 455) || (mouseX > 345 && mouseX < 405 && mouseY >= 355 && mouseY <= 395)) && astroX > 99 && oxySelect == 0){
    blueTank = highlight;
    black = color(255);
  }
  fill(blueTank);
  rect(0, 25, 80, 60, 5);
  fill(blueTank + 10);
  rect(0, -25, 60, 40, 5);
  fill(black);
  rect(0, 25, 60, 40);
  textAlign(CENTER, CENTER);
  fill(blueTank);
  text("2", 0, 20);
}

void greenTank3(){
  //changes the stroke for the tanks
  strokeWeight(3);
  stroke(0);
  rectMode(CENTER);
  //green one
  black = color(0);
  //branching for the third tank's highlight
  if (((mouseX > 485 && mouseX < 565 && mouseY >= 395 && mouseY <= 455) || (mouseX > 495 && mouseX < 555 && mouseY >= 355 && mouseY <= 395)) && astroX > 99 && oxySelect == 0){
    greenTank = highlight;
    black = color(255);
  }
  fill(greenTank);
  rect(0, 25, 80, 60, 5);
  fill(greenTank + 10);
  rect(0, -25, 60, 40, 5);
  fill(black);
  rect(0, 25, 60, 40);
  textAlign(CENTER, CENTER);
  fill(greenTank);
  text("3", 0, 20);
}

void slide3Lose(){
  background(0);
  rectMode(CENTER);
  for (int i = 800; i >= 600; i += 3){
    fill(lerpColor(errorMerge1, errorMerge2, (800.0 - i)/200.0));
    rect(800, 500, i, 5.0 * i/8.0);
  }
  fill(errorMerge2);
  rect(800, 500, 600, 375);
}

void error(){
  textFont(errorFont, 30);
  noStroke();
  rectMode(CENTER);
  for (int i = 45; i >= 0; i--){
    color thisCol = lerpColor(errorMerge1, errorMerge2, ((45.0 - i)/45.0));
    fill(thisCol, i);
    rect(400, 250, 230 + (2 * i), 60 + i, 30);
  }
  fill(0);
  strokeWeight(3);
  stroke(errorMerge2);
  rect(400, 250, 230, 60, 15);
  textAlign(CENTER, CENTER);
  fill(229, 39, 39);
  text("INCORRECT", 400, 250);
}

void funFact2Background(){ //second fun fact slide
  //draws the back wall
  background(255, 247, 247);
  //draws the floor and the ceiling
  fill(121, 117, 117);
  rectMode(CORNERS);
  noStroke();
  rect(0, 450, 800, 500);
  rect(0, 0, 800, 50);
  //draws the lining across the background
  noFill();
  for (int i = -100; i < 900; i += 125){
    strokeWeight(5);
    stroke(0, 0, 0, 120);
    arc(i, 250, 30, 400, radians(270), radians(450));
    stroke(0);
    line(i - 10, 50, i + 10, 50);
    line(i - 10, 450, i + 10, 450);
    line(i, 50, i, 0);
    line(i, 450, i, 500);
  }
  
  //draws the ground
  fill(150);
  strokeWeight(3);
  rect(0, 450, 800, 500);
  for (int i = -100; i < 900; i+= 125){
    strokeWeight(5);
    line(i, 450, i - 25, 500);
  }
  
  if (electricitySwitch <= 500){
    //draws the water
    rectMode(CENTER);
    fill(lerpColor(waterColor, color(118, 168, 201), electricitySwitch/500.0));
    strokeWeight(15);
    stroke(0);
    pushMatrix();
    rotate(radians(0.3));
    rect(400, 250, 600, 250, 75); //coordinates of the water
    popMatrix();
    //draws the bonds between the atoms
    strokeWeight(5);
    stroke(0);
    line(300, 230, 350, 255);
    line(350, 255, 400, 280);
    line(400, 280, 450, 255);
    line(450, 255, 500, 230);
    //draws the three molecules
    textFont(titleFont, 30);
    textAlign(CENTER, CENTER);
    noStroke();
    pushMatrix();
    translate(400, 280);
    scale(0.5);
    oxygenSkyStar();
    fill(0);
    text("O", 0, 0);
    translate(-200, -100);
    hydrogenSkyStar();
    fill(0);
    text("H", 0, 0);
    translate(400, 0);
    hydrogenSkyStar();
    fill(0);
    text("H", 0, 0);
    popMatrix();
    //draws the stand for the display
    fill(0);
    noStroke();
    quad(225, 375, 275, 375, 285, 500, 215, 500);
    quad(525, 375, 575, 375, 585, 500, 515, 500);
    
    //draws the tube on the side of the tank
    fill(lerpColor(tubeColor, color(195, 201, 118), electricitySwitch/500.0));
    noStroke();
    rectMode(CORNERS);
    rect(700, 230, 800, 270);
    quad(700, 230, 700, 270, 630, 290, 630, 210);
    //small electrcity symbol
    fill(240);
    stroke(0);
    strokeWeight(3);
    ellipse(660, 250, 40, 40);
    pushMatrix();
    translate(658.5, 236.2);
    scale(0.5);
    fill(218, 232, 35);
    electricity();
    popMatrix();
    
    //increase the variable 
    electricitySwitch++;
    //note: all task texts shall be size 30, title font, fill(255)
    fill(255);
    textFont(titleFont);
    textSize(30);
    textAlign(LEFT, BASELINE);
    fill(0);
    text("Fun Fact 2: Astronauts' Oxygen", 45, 55);
    fill(255);
    text("Fun Fact 2: Astronauts' Oxygen", 50, 50);
    
    //writes the name of the fact
    textFont(wordFont, 18);
    fill(highlight);
    text("Using a process called \"electrolysis\",\nscientists are able to use electricity\nto break an H20 (water) molecule into \n2 Hydrogen atoms and 1\nOxygen atom, thereby \"creating\" oxygen from water.", 50, 105);
  } else if (electricitySwitch <= 600){
    //says "ZAP" for 100 milliseconds
    //draws the water
    rectMode(CENTER);
    if (frameCount % 2 == 0){ //flashes electricity
      fill(118, 168, 201);
    } else {
      fill(254, 255, 3);
    }
    strokeWeight(15);
    stroke(0);
    pushMatrix();
    rotate(radians(0.3));
    rect(400, 250, 600, 250, 75); //coordinates of the water
    popMatrix();
    //draws the bonds between the atoms, disintegrating
    strokeWeight(5);
    if (frameCount % 2 == 0){ //flashes electricity
      stroke(lerpColor(0, color(118, 168, 201), (electricitySwitch - 500.0)/100.0));
    } else {
      stroke(lerpColor(0, color(254, 255, 3), (electricitySwitch - 500.0)/100.0));
    }
    line(300, 230, 350, 255);
    line(350, 255, 400, 280);
    line(400, 280, 450, 255);
    line(450, 255, 500, 230);
    //draws the three molecules
    textFont(titleFont, 30);
    textAlign(CENTER, CENTER);
    noStroke();
    pushMatrix();
    translate(400, 280);
    scale(0.5);
    oxygenSkyStar();
    fill(0);
    text("O", 0, 0);
    translate(-200, -100);
    hydrogenSkyStar();
    fill(0);
    text("H", 0, 0);
    translate(400, 0);
    hydrogenSkyStar();
    fill(0);
    text("H", 0, 0);
    popMatrix();
    //draws the stand for the display
    fill(0);
    noStroke();
    quad(225, 375, 275, 375, 285, 500, 215, 500);
    quad(525, 375, 575, 375, 585, 500, 515, 500);
    
    //draws the tube on the side of the tank
    if (frameCount % 2 == 0){ //flashes electricity
      fill(195, 201, 118);
    } else {
      fill(254, 255, 3);
    }
    noStroke();
    rectMode(CORNERS);
    rect(700, 230, 800, 270);
    quad(700, 230, 700, 270, 630, 290, 630, 210);
    //small electrcity symbol
    fill(240);
    stroke(0);
    strokeWeight(3);
    ellipse(660, 250, 40, 40);
    pushMatrix();
    translate(658.5, 236.2);
    scale(0.5);
    fill(218, 232, 35);
    electricity();
    popMatrix();
    
    //increases the variable
    electricitySwitch++;
    
    //note: all task texts shall be size 30, title font, fill(255)
    fill(255);
    textFont(titleFont);
    textSize(30);
    textAlign(LEFT, BASELINE);
    fill(0);
    text("Fun Fact 2: Astronauts' Oxygen", 45, 55);
    fill(255);
    text("Fun Fact 2: Astronauts' Oxygen", 50, 50);
    
    //writes the name of the fact
    textFont(wordFont, 18);
    fill(highlight);
    text("Using a process called \"electrolysis\",\nscientists are able to use electricity\nto break an H20 (water) molecule into \n2 Hydrogen atoms and 1\nOxygen atom, thereby \"creating\" oxygen from water.", 50, 105);
  } else {
    //broken bonds, circled oxygen
    //says "ZAP" for 100 milliseconds
    //draws the water
    rectMode(CENTER);
    strokeWeight(15);
    stroke(0);
    pushMatrix();
    fill(waterColor);
    rotate(radians(0.3));
    rect(400, 250, 600, 250, 75); //coordinates of the water
    popMatrix();
    //draws the three molecules
    textFont(titleFont, 30);
    textAlign(CENTER, CENTER);
    noStroke();
    pushMatrix();
    translate(400, 280);
    scale(0.5);
    oxygenSkyStar();
    fill(0);
    text("O", 0, 0);
    translate(-200, -100);
    hydrogenSkyStar();
    fill(0);
    text("H", 0, 0);
    translate(400, 0);
    hydrogenSkyStar();
    fill(0);
    text("H", 0, 0);
    popMatrix();
    //draws the stand for the display
    fill(0);
    noStroke();
    quad(225, 375, 275, 375, 285, 500, 215, 500);
    quad(525, 375, 575, 375, 585, 500, 515, 500);
    noStroke();
    //draws the tube, now neutral
    rectMode(CORNERS);
    fill(tubeColor);
    rect(700, 230, 800, 270);
    quad(700, 230, 700, 270, 630, 290, 630, 210);
    //small electrcity symbol
    fill(240);
    stroke(0);
    strokeWeight(3);
    ellipse(660, 250, 40, 40);
    pushMatrix();
    translate(658.5, 236.2);
    scale(0.5);
    fill(218, 232, 35);
    electricity();
    popMatrix();
    
    //circles the oxygen atom
    noFill();
    strokeWeight(3);
    stroke(3, 255, 80);
    ellipse(400, 280, 40, 40);
    
    //note: all task texts shall be size 30, title font, fill(255)
    fill(255);
    textFont(titleFont);
    textSize(30);
    textAlign(LEFT, BASELINE);
    fill(0);
    text("Fun Fact 2: Astronauts' Oxygen", 45, 55);
    fill(255);
    text("Fun Fact 2: Astronauts' Oxygen", 50, 50);
    
    //writes the name of the fact
    textFont(wordFont, 18);
    fill(highlight);
    text("Using a process called \"electrolysis\",\nscientists are able to use electricity\nto break an H20 (water) molecule into \n2 hydrogen atoms and 1\noxygen atom, thereby" + 
    " \"creating\" oxygen from water.", 50, 105);
    textAlign(CENTER, CENTER);
    text("As you can see, now the \noxygen has been separated from the rest.\nThis is how astronauts breathe in space.", 400, 335);
    
    electricitySwitch++; //increases electricity switch anyways, to stimulate the astronaut's arm movement
  }
  //draws a "restart" button
  strokeWeight(3);
  stroke(150);
  fill(waterColor);
  if (sqrt(pow((mouseX - 725), 2) + pow((mouseY - 75), 2)) < 37.5){ //collision between mouse and the button
    fill(116, 152, 222);
  }
  
  //draws the button
  ellipse(725, 75, 75, 75);
  noFill();
  strokeWeight(8);
  stroke(0);
  //draws the arrow inside the button
  arc(725, 75, 40, 40, radians(270), radians(540));
  strokeCap(PROJECT);
  pushMatrix();
  translate(705, 75);
  rotate(radians(-22.5));
  line(0, 0, -10, 10);
  line(0, 0, 10, 10);
  strokeCap(ROUND);
  popMatrix();
  
  //lets the user skip this slide right away, since it's not part of the game
  textAlign(CENTER, CENTER);
  textFont(wordFont);
  textSize(48);
  //draws this rectangle under the button
  noStroke();
  fill(0);
  rectMode(CENTER);
  rect(400, 460, 116, 74);
  
  fill(255);
  //branching for the "Next" button
  if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
    fill(highlight);
  }
  text("Next", 400, 460);
  
  //draws the astronaut, cheering
  if (electricitySwitch >= 600){
    if (electricitySwitch % 50 == 0){
        //branching for his arms moving
      if (astronautCheering3 == 0){
          astronautCheering3 = 25;
      } else {
        astronautCheering3 = 0;
      }
    }
    //drawing the astronaut
    pushMatrix();
    translate(100, 300);
    astronaut();
    astronautLeftFoot();
    astronautRightFoot();
    popMatrix();
    pushMatrix(); //draws his right hand
    translate(100 + astronautCheering3, 300 - astronautCheering3);
    astronautRightHand();
    popMatrix();
    pushMatrix(); //draws his left hand
    translate(100 - astronautCheering3, 300 - astronautCheering3);
    astronautLeftHand();
    popMatrix();
  } else {
    //otherwise, just draws the astronaut as neutral
    pushMatrix();
    translate(100, 300);
    astronaut();
    astronautLeftHand();
    astronautRightHand();
    astronautLeftFoot();
    astronautRightFoot();
    popMatrix();
  }
}

void electricity(){
  strokeWeight(1);
  stroke(0);
  beginShape();
  vertex(0, 0);
  vertex(25, 0);
  vertex(5, 30);
  vertex(25, 30);
  vertex(-10, 60);
  vertex(-3, 30);
  vertex(-15, 30);
  vertex(0, 0);
  endShape();
}

void oxygenSkyStar(){
  fill(209, 48, 107);
  bloodyStar();
  pushMatrix();
  translate(5, 5);
  fill(232, 21, 21);
  bloodyStar();
  popMatrix();
}

void hydrogenSkyStar(){
  fill(200);
  bloodyStar();
  pushMatrix();
  translate(5, 5);
  fill(255);
  bloodyStar();
  popMatrix();
}

void astronaut(){
  rectMode(CENTER);
  //head of astronaut
  strokeWeight(3);
  stroke(0);
  fill(255);
  ellipse(0, 0, 100, 87.5);
  strokeWeight(1);
  fill(142);
  ellipse(0, -5, 75, 60);
  fill(59, 155, 232);
  ellipse(0, -5, 60, 45);
  
  //body of astronaut
  strokeWeight(4);
  fill(255);
  strokeWeight(2);
  rect(0, 80, 85, 100, 15);
  noStroke();
  fill(0);
  rect(0, 100, 85, 15);
  
  //draws the lights
  rectMode(CORNERS);
  fill(255, 0, 0);
  rect(-32, 47, -22, 57);
  fill(0, 255, 0);
  rect(-22, 47, -12, 57);
  fill(0, 0, 255);
  rect(-12, 46, -2, 57);
}

void astronautLeftHand(){
  fill(255);
  strokeWeight(3);
  stroke(0);
  ellipse(-75, 67, 25, 20);
}

void astronautRightHand(){
  fill(255);
  strokeWeight(3);
  stroke(0);
  ellipse(75, 67, 25, 20);
}

void astronautLeftFoot(){
  //draws the feet
  fill(255);
  stroke(0);
  
  pushMatrix();
  translate(0, -15);
  
  beginShape();
  vertex(-38, 158);
  //fills in the lines
  noStroke();
  rect(-38, 158, -23, 173);
  rect(-50, 173, -23, 188);
  
  strokeWeight(3);
  stroke(0);
  line(-38, 158, -23, 158);
  line(-23, 188, -23, 158);
  line(-50, 188, -23, 188);

  //centered at (350, 430.5);
  arc(-50, 180.5, 15, 15, PI/2, PI + PI/2, OPEN);
  line(-50, 173, -38, 173);
  vertex(-38, 173);
  endShape(CLOSE);
  popMatrix();
}

void astronautRightFoot(){
  fill(255);
  stroke(0);
  
  pushMatrix();
  translate(0, -15);
  //other foot
  beginShape();
  fill(255);
  vertex(38, 158);
  //fills in the lines
  noStroke();
  rect(38, 158, 23, 173);
  rect(50, 173, 23, 188);
  
  //draws the lines
  strokeWeight(3);
  stroke(0); 
  line(38, 158, 23, 158);
  line(23, 188, 23, 158);
  line(50, 188, 23, 188);
  //centered at (350, 430.5);
  arc(50, 180.5, 15, 15, PI + PI/2, TWO_PI + PI/2, OPEN);
  line(50, 173, 38, 173);
  vertex(38, 173);
  endShape(CLOSE);
  popMatrix();
}

void slide3LoseScreen(){
  //branching for the not-so-fun-fact
  if (hasWonTask3 == -1){
    slide3DeathMessage = "Why would you burn the chicken...\nI specifically told you not to...\nIt was such a delicious chicken...\n\nNot-so-fun-fact: You choked on the burnt chicken, \nand you did not have any water to wash it down \nbecause you were using the water to create oxygen.\nNext time, just don't burn the chicken, please." +
    "\nChoose \"Restart\" to play again,\nor choose \"Quit\" to leave.";
  } else if (oxySelect == 1){
    slide3DeathMessage = "Not-so-fun-fact: Exposure to\n chlorine gas causes dyspnea,\n violent cough, nausea, vomiting,\n lightheadedness, headache, chest pain,\n" + 
    "abdominal discomfort,\n and corneal burns.\n\nIn other words, you chose the wrong tank!\nChoose \"Restart\" to play again,\nor choose \"Quit\" to leave.";
  } else if (oxySelect == 2){
    slide3DeathMessage = "Not-so-fun-fact: Cesium reacts\nextremely violently with oxygen. Upon \nexposure to air, " +
    "it forms cesium superoxide,\n an orange-yellow substance,\n on the surface of the metal.\n\nThis product is a stable salt that is known to be harmful\n to molecules in its environment.\n" +
    "It is involved in the pathogenesis of common\n diseases, and is able to damage DNA.\n\nIn other words, you chose the wrong tank!\nChoose \"Restart\" to play again,\nor choose \"Quit\" to leave.";
  }
  
  if (frameCount % 25 == 0){
    if (colorSlide3Star == 0){
      colorSlide3Star = 1;
    } else {
      colorSlide3Star = 0;
    }
  }
  
  //draws the background
  background(0);
  //first pair of stars
  if (colorSlide3Star == 1){
    fill(errorMerge2);
  } else {
    fill(32, 39, 210);
  }
  pushMatrix();
  translate(100, 100);
  bloodyStar();
  translate(600, 300);
  bloodyStar();
  popMatrix();
  //second pair of stars
  if (colorSlide3Star == 0){
    fill(errorMerge2);
  } else {
    fill(32, 39, 210);
  }
  pushMatrix();
  translate(100, 400);
  bloodyStar();
  translate(600, -300);
  bloodyStar();
  popMatrix();
  
  //draws the title text
  fill(errorMerge2);
  strokeWeight(3);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(48);
  text("YOU DIED!", 400, 50);
  //draws the explanation text
  textFont(wordFont);
  textSize(18);
  if (hasWonTask3 == -1){
    text(slide3DeathMessage, 400, 250);
  } else if (oxySelect == 1){
    text(slide3DeathMessage, 400, 250);
  } else if (oxySelect == 2){
    text(slide3DeathMessage, 400, 260);
  }
  
  textFont(wordFont);
  textSize(48);
  //restart and quit buttons
  fill(255);
  if (mouseX > 120 && mouseX < 274 && mouseY < 460 && mouseY > 417){ //branching for the "restart" button
    fill(highlight);
  }
  text("Restart", 200, 440);
  fill(255);
  if (mouseX > 578 && mouseY > 418 && mouseX < 678 && mouseY < 458){ //branching for the "quit" button
    fill(highlight); 
  }
  text("Quit", 635, 440);
}

void bloodyStar(){
  beginShape();
  vertex(50, 0);
  bezierVertex(50, 0, 5, 5, 0, 50);
  bezierVertex(0, 50, -5, 5, -50, 0);
  bezierVertex(-50, 0, -5, -5, 0, -50);
  bezierVertex(0, -50, 5, -5, 50, 0);
  vertex(50, 0);
  endShape();
}

void resetVariables(){
  backgroundMerge1 = color(14, 36, 100);
  backgroundMerge2 = color(126, 26, 162);
  errorMerge1 = color(0, 0, 0); 
  errorMerge2 = color(229, 39, 39);
  star = color(108, 141, 237, 200);
  starShadow = color(173, 194, 255, 100);
  highlight = color(252, 140, 54);
  complete = color(35, 229, 59);
  completeColor3 = color(255);
  //initializes the waves
  wave1 = random(-300, -200);
  wave2 = random(-500, -300);
  wave3 = random(-150, -50);
  wave4 = random(-600, -500);
  sky1 = color(89, 216, 227);
  sky2 = color(89, 124, 227);
  sun1 = color(224, 232, 28);
  sun2 = color(234, 205, 38);
  astroRotate = 0;
  astroX = 400;
  astroY = 250;
  astroRightFootX = 0;
  astroRightFootY = 0;
  astroLeftFootX = 0;
  astroLeftFootY = 0;
  astroRightHandX = 0;
  astroRightHandY = 0;
  astroLeftHandX = 0;
  astroLeftHandY = 0;
  astro1XDirection = 1;
  astro1YDirection = 1; //the direction that the astronaut bounces in for the title screen
  rotationSlide2Count = 0; //the angle at which the lights rotate at
  extensionSlide2Count = 0; //the extra extension which the lights receive, matched with a sin function to create an expanding and contracting motion
  colorSwitchSlide2 = color(0); //flashes the color of "LOW FUEL" on slide 2
  colorSwitchSlide3 = color(229, 39, 39); //flashes the color of "ERROR" on slide 3
  exitColor = 255; //background color for when the user leaves the game
  exitVariable = 255; //variable for when the game closes
  astro1X = 0; //astronaut's current X location, which changes according to astro1XDirection
  astro1Y = 0; //astronaut's current Y location, which changes according to astro1YDirection
  slide2WheelRotate = 0; //the rotation of the wheel on slide 2 (must be rotated counterclockwise)
  fluidY = -262.5; //the fluid's y level as it comes down
  fluidFillY = 340; //the fluid's Y level as it begins to rise in the tank
  fluidCoverFillY = 340; //also draws the fluid's Y level, but it uses a non-curved rectangle to cover up gaps
  tankFill2 = false; //boolean to check if the fuel tank is completely full
  confirm = ""; //variable that waits for the user to understand how to play the memory game (they must enter "start");
  currentUserSelection = 0; //variable that collects the user's selected input
  userChoices = 0; //the correstponding value of "sel_" to compare with, to a maximum of 6
  userWon3 = 0; //works as a three-way boolean to determine whether the user has won the game (0 means undecided, 1 means yes, -1 means no)
  userStart3 = false; //boolean for whether or not the user has inputted "start" yet
  input3 = ""; //string that collects the user's input
  oxySelect = 0; //variable representing which tank the user selected
  slide3Extend25 = 0; //variable that shows the astronaut picking up the tank
  throwingVar = 0; //variable for moving the tank that is thrown 
  throwingRotate = 0; //variable for spinning the tank that is thrown
  droppingVar = 75; //variable for dropping the selected tank into the oxygen tank
  sunSpikeSpin = 0; //variable that lets the sun's spikes spin
  rocketShake = 0; //variable for shaking the rocket
  takeOffCountDown = 150; //variable for the rocket shaking before taking off
  rocketSpeed = 0.5; //variable for how much the rocket adds by each time
  rocketY = 275; //variable for the rocket blasting off
  slide3DeathMessage = ""; //string that changes depending on how the user died (what tank he chose)
  colorSlide3Star = 0; //variable for the alternating stars
  movingOcean = 0;
  rocketDescending5 = -150;
  rocketDecrease5 = 4.5;
  astronautShowHead = true; //variable for whether or not the astronaut's head is visible in the rocket
  //variables for the astronaut leaving the rocket ship
  astronautLeaveRocket5 = 720;
  astronautLeaveRocketLeftFoot5 = 720;
  astronautLeaveRocketRightFoot5 = 720; 
  rocketStandStillFrame5 = 0; //frames that the rocket stands still for, so that the astronaut can exit
  rocketFireTransparencyLevel = 255.0; //variable for the rocket fire's transparency level, which decreases as the rocket stands still
  astroJump5 = false; //boolean for the astronaut jumping in joy
  sunsetMerge1 = color(255, 163, 64); //darker, orange color
  sunsetMerge2 = color(245, 191, 82); //lighter, yellow color
  oceanMerge1 = color(40, 194, 234); //lighter water color
  oceanMerge2 = color(52, 30, 198); //darker blue color
  woodplank = color(149, 107, 23); //dark brown color for wood
  woodplankStroke = color(103, 74, 15); //darker brown color for the outline of the wood
  leftFootMove4 = 0; //moving the left leg on slide 4
  rightFootMove4 = 0; //moving the right leg on slide 4
  astroMoveX4 = 0; //moving the body on slide 4
  startTask4 = ""; //collects user input to determine whether or not task 4 should be started
  clockMoveAngle = 0; //moves the arrow hand of the clock, small detail for fun
  chickenClicks = 1; //the value corresponds to which chicken color it is
  currentChickenColor = chickenRoastColor1; //changes the default color of the chicken back
  userBurnChickenWarn = ""; //variable used to warn the user that he should not burn the chicken
  timeStops = false; //sets this variable true when the user burns the chicken, to show the severity level of his consequences
  timeSpeed = 0.1; //moves the time backwards faster and faster
  randomShakeAmount = 0; //randomly shakes the screen to show the severity level of his consequences
  hasWonTask3 = 0; //0 means undetermined, 1 means yes, -1 means no
  rotateISS = -30; //rotates the ISS, ranging from -30 degrees to 30 degrees
  rotateSpeedISS = 0.7; //rotates the ISS at the given speed
  cargoX = -150; //variables for moving the cargo horizontally
  cargoY = 350; //variables for moving the cargo vertically
}

void task3Background(){
  //draws all the static and non-interactive parts of task 3
  background(230);
  //use this for added shaking
  pushMatrix();
  //re-adjusts the screen so that it is centered
  translate(-randomShakeAmount * 400, -randomShakeAmount * 250);
  scale(randomShakeAmount + 1);
  //draws the background's wall tiles
  strokeWeight(3);
  stroke(0);
  for (int i = 0; i <= 800; i += 50){
    line(i, 0, i, 500);
  }
  for (int i = 0; i <= 500; i += 50){
    line(0, i, 800, i);
  }
  strokeWeight(7);
  stroke(0);
  fill(255);
  rectMode(CORNERS);
  rect(0, 350, 800, 500);
  
  task3Objects();
  popMatrix();
}

void slide4() {
  task3Background();
  
  //branching for the astronaut's feet
  if (astroMoveX4 <= 275){
    //while the astronaut is still walking in
    if (astroMoveX4 % 16 == 0){
      leftFootMove4 += 16;    
    } else if (astroMoveX4 % 16 == 8){
      rightFootMove4 += 16;
    }
    //draws his feet
    pushMatrix();
    translate(leftFootMove4, 315);
    astronautLeftFoot();
    popMatrix();
    pushMatrix();
    translate(rightFootMove4, 315);
    astronautRightFoot();
    popMatrix();
    astroMoveX4++;
    
    //draws his body
    pushMatrix();
    translate(astroMoveX4, 315);
    astronaut();
    astronautLeftHand();
    astronautRightHand();
    popMatrix();
  } else if (astroMoveX4 >= 275) {
    //once the astronaut has stopped moving
    if (!startTask4.equals("start")) {
      //draws the astronaut, with his right arm raised
      pushMatrix();
      translate(275, 315);
      astronaut();
      astronautLeftHand();
      astronautLeftFoot();
      astronautRightFoot();
      translate(25, -25);
      astronautRightHand();
      popMatrix();
      startTask4 = getString(" In this task, you will be cooking rations to keep yourself full. \nClick the fire to cook the chicken, and once you've cooked it fully, you will\n have completed the last task. Enter 'start' if you understand.\n\nNote: You only need to click the chicken 5 times!");  
    } else {
      //draws the astronaut, with his right arm raised
      pushMatrix();
      translate(275, 315);
      astronaut();
      astronautLeftHand();
      astronautLeftFoot();
      astronautRightFoot();
      translate(25, -25);
      astronautRightHand();
      popMatrix();
      
      //logical branching for the current state of the chicken
      if (chickenClicks == 1){
        currentChickenColor = chickenRoastColor1;
      } else if (chickenClicks == 2){
        currentChickenColor = chickenRoastColor2;
      } else if (chickenClicks == 3){
        currentChickenColor = chickenRoastColor3;
      } else if (chickenClicks == 4){
        currentChickenColor = chickenRoastColor4;
      } else if (chickenClicks == 5){
        currentChickenColor = chickenRoastColor5;
      } else if (chickenClicks == 6){
        currentChickenColor = chickenRoastColorDone;
      } else if (chickenClicks == 7){
        currentChickenColor = chickenRoastColorBurnt;
      }
    }
    
    if (chickenClicks == 6){
      //draws a thin green film over the entire screen, a subtle note that the player won
      fill(0, 200, 0, 40);
      rectMode(CORNERS);
      rect(0, 0, 800, 500);
      //draws the "Next" button
      textAlign(CENTER, CENTER);
      textFont(wordFont);
      textSize(48);
      //draws this rectangle under the button
      noStroke();
      fill(0);
      rectMode(CENTER);
      rect(600, 460, 116, 74);
      
      fill(255);
      //branching for the "Next" button
      if (mouseX >= 547 && mouseX <= 643 && mouseY >= 424 && mouseY <= 484){
        fill(highlight);
      }
      text("Next", 600, 460);
      //prompts the user
      if (!userBurnChickenWarn.equals("i promise i will not burn the chicken")){
        userBurnChickenWarn = getString("Your chicken is cooked very well! \nIt smells absolutely delightful.\nPlease do not burn the chicken, okay?\nType in \"i promise i will not burn the chicken\", " + 
                                        "\nand then you will win the game. Thanks!\n\n(You can try burning the chicken, though)");
      }
      rectMode(CORNERS);
      hasWonTask3 = 1;
    } else if (chickenClicks == 7){
      task3Background();
      //pulls the astronaut's hand back
      pushMatrix();
      translate(275, 315);
      astronaut();
      astronautRightHand();
      astronautLeftHand();
      astronautLeftFoot();
      astronautRightFoot();
      popMatrix();
      //sets timeStops to true
      timeStops = true;
      
      strokeWeight(1);
      stroke(0);
      //draws the shaking floor
      for (int i = 0; i < 800; i++){
        line(i, 500, i, 475 - random(0, timeSpeed)); //progressively worsens the shaking
      }
      //draws a thin red sheet over everything, a subtle note that the user lost
      fill(200, 0, 0, 40);
      rectMode(CORNERS);
      rect(0, 0, 800, 500);
      textFont(wordFont, 48);
      if (timeSpeed >= 1500){
        //once the screen has gone far enough
        hasWonTask3 = -1;
        fill(255);
        //branching for the "Next" button
        if (mouseX >= 597 && mouseX <= 693 && mouseY >= 424 && mouseY <= 484){
          fill(255, 0, 0);
        }
        text("Next", 600, 460);
        rectMode(CORNERS);
      }
    }
  }
  
  strokeWeight(1);
  stroke(0);
  for (int i = 500; i >= 0; i--){
    line(0, i/3.0, 500 - (i + random(0, 20)), i/3.0);
  }
    
  //text at the top, explaining the task
  fill(0);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  //draws the shadow for the task name
  text("Task 3: Space Food", 45, 55); 
  
  //note: all task texts shall be size 30, title font, fill(255)
  fill(255);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  text("Task 3: Space Food", 50, 50);
    
  //draws the floor (thin layer)
  fill(0);
  rect(0, 480, 800, 500);
  
  fill(255);
}
void task3Objects() { //draws the static objects in the background of task 3
  refrigerator();
  clock();
  cabinet();
  cabinet2();  
  chicken();
}

void refrigerator() {
  rectMode(CORNERS); 
  strokeWeight(5);
  fill(160);
  rect(100,200,250,300,7);
  fill(120);
  rect(250,300,100,325,7);
  fill(160);
  rect(250,325,100,500,7);
  line(225,230,225,270);
  line(225,350,225,400);
} 

void clock(){
  strokeWeight(1);
  fill(#edc147);
  ellipse(400,150,65,65);
  fill(#ebd391);
  ellipse(400,150,55,55);
  fill(0);
  ellipse(400,150,5,5);
  strokeWeight(2);
  
  //draws the minute hand of the clock
  pushMatrix();
  translate(400, 150);
  rotate(radians(clockMoveAngle));
  line(0, 0, 0, 25);
  popMatrix();
  
  //draws the hour hand of the clock
  pushMatrix();
  translate(400, 150);
  rotate(radians(clockMoveAngle)/12.0);
  line(0, 0, 0, 15);
  popMatrix();
  
  if (!timeStops){
    //increases the angle 
    clockMoveAngle++;
  } else {
    if (timeSpeed <= 15000){
      clockMoveAngle -= timeSpeed;
      timeSpeed *= 1.025;
    }
  }
  
  //randomly shakes the screen by an amount related to the time speed
  randomShakeAmount = random(0, log(timeSpeed)/7.0);
}

void cabinet(){
  strokeWeight(5);
  fill(#7a5a36);
  rectMode(CORNERS);
  rect(275,350,475,500,3);
  rect(475,500,600,350,3);
  rect(600,350,725,500,3);
  fill(#b89670);
  rect(275,350,475,325,3);
  rect(475,325,600,350,3);
  rect(600,350,725,325,3);
  fill(#a0d9db);
  //highlights the oven once the user's mouse is on it
  if (mouseX > 300 && mouseX < 450 && mouseY > 375 && mouseY < 475 && astroMoveX4 >= 275 && chickenClicks < 6){
    fill(highlight);
  } else if (mouseX > 300 && mouseX < 450 && mouseY > 375 && mouseY < 475 && chickenClicks == 6){
    fill(118, 13, 13);
  }
  //draws the oven, perhaps with the color changed to the chicken mode that it is currently on
  rect(300,375,450,475,10);
  line(290,337.5,375,337.5);
  strokeWeight(1);
  fill(#d12515);
  ellipse(435,337.5,8,8);
  fill(#e6e609);
  ellipse(450,337.5,8,8);
  fill(#07db11);
  ellipse(465,337.5,8,8);
  
  strokeWeight(1);
  fill(#e68b15);
  if (chickenClicks == 6){
    fill(255, 40, 40);
  }
  beginShape();
  vertex(350,473);
  vertex(330,425);
  vertex(360,440);
  vertex(380,395);
  vertex(395,450);
  vertex(420,430);
  vertex(410,473);
  endShape(CLOSE);
  
  strokeWeight(5);
  line(500,337.5,575,337.5);
  line(625,337.5,700,337.5);
  
  rectMode(CORNERS);
  fill(#e3ba86);
  rect(495,365,580,485);
  rect(620,365,705,485);
}

void cabinet2() {
  rectMode(CORNERS);
  fill(#241215);
  rect(465,75,590,250,15);
  rect(590,75,715,250,15);
  fill(#3d221a);
  rect(480,90,575,235,15);
  rect(605,90,700,235,15);
  line(555,140,555,185);
  line(620,140,620,185);
}

void chicken() {
  fill(chickenRoastColor1);
  strokeWeight(15);
  beginShape();
  vertex(315,265);
  vertex(340,315);
  vertex(415,315);
  vertex(440,265);
  endShape();
  
  //draws the bone;
  strokeWeight(3);
  pushMatrix();
  translate(130,100);
  scale(0.7);
  fill(currentChickenColor);
  beginShape();
  vertex(285, 285);
  vertex(344, 260);
  vertex(350, 275);
  vertex(300, 300);
  
  //middle point should be (285, 300)
  bezierVertex(300, 300, 292.5, 315, 285, 300);
  bezierVertex(285, 300, 270, 292.5, 285, 285);
  vertex(285, 285);
  endShape();
  
  fill(currentChickenColor);
  //body of the chicken
  beginShape();
  vertex(330, 260);
  bezierVertex(330, 260, 355, 265, 370, 250);
  bezierVertex(370, 250, 370, 220, 400, 220);
  bezierVertex(400, 220, 430, 220, 430, 250);
  bezierVertex(430, 250, 430, 280, 400, 280);
  bezierVertex(400, 280, 375, 275, 360, 290);
  bezierVertex(360, 290, 330, 290, 330, 260);
  endShape();
  popMatrix();
}

void funFact3(){
  //draws a gradianted background of space
  noStroke();
  for (int i = 641; i >= 0; i-=10){
    fill(lerpColor(spaceMerge1, spaceMerge2, i/900.0));
    arc(400, 500, 2 * i, 2 * i, radians(180), radians(360));
  }
  
  //text at the top, explaining the task
  fill(0);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  //draws the shadow for the task name
  text("Fun Fact 3: Stellar Sustenance", 45, 55); 
  
  //note: all task texts shall be size 30, title font, fill(255)
  fill(255);
  textFont(titleFont);
  textSize(30);
  textAlign(LEFT, BASELINE);
  text("Fun Fact 3: Stellar Sustenance", 50, 50);
  
  if (cargoX <= 749){
    //writes the name of the fact
    textFont(wordFont, 18);
    text("Where do astronauts get their food from?\nInterestingly, astronauts do not only eat food out of tubes, contrary to popular\n belief." + 
    "In fact, cargo ships usually deliver a variety of normal Earth foods to the ISS every\n90 days. Some of these foods include fresh produce, yogurt, meat, etc.", 50, 100);
  }
  
  //logical branching for the rotation
  if (rotateISS <= -30){
    rotateSpeedISS = 1;
  } else if (rotateISS >= 30){
    rotateSpeedISS = -1;
  }
  
  rotateISS += rotateSpeedISS;
  
  //draws the international space station, slightly rotating back and forth
  pushMatrix();
  translate(750, 450);
  rotate(radians(45 + rotateISS));
  ISS();
  popMatrix();
  
  //as the cargo ship is moving in
  if (cargoX <= 400){
    pushMatrix();
    translate(cargoX, 350);
    cargoShip();
    popMatrix();
    cargoX += 3;
  } else if (cargoX <= 749){
    //moves towards the ISS
    pushMatrix();
    translate(cargoX, cargoY);
    scale((350 - (cargoX - 400))/351.0);
    cargoShip();
    popMatrix();
    cargoX += 2;
    cargoY += 0.57;
  } else {
    //draws the remainder of the text
    fill(255);
    textFont(wordFont, 18);
    text("Where do astronauts get their food from?\nInterestingly, astronauts do not only eat food out of tubes, contrary to popular\n belief. " + 
    "In fact, cargo ships usually deliver a variety of normal Earth foods to the ISS every\n90 days. Some of these foods include fresh produce, yogurt, meat, etc.\n" + 
    "\nAstronauts also follow a very strict diet. They must eat 3 nutritious meals a day, \njust like us.Over a long period of time in space, bone density \nand muscle mass " + 
    "can decrease by over 20%, which is why \nit is very important for astronauts to consume a lot \nof calcium, sodium, and other minerals.", 50, 100);
  }
  
  //draws the "next" button
  textFont(wordFont);
  textSize(48);
  //draws this rectangle under the button
  noStroke();
  fill(0);
  rectMode(CENTER);
  rect(400, 460, 116, 74);
  textAlign(CENTER, CENTER);
  fill(255);
  //branching for the "Next" button
  if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
    fill(highlight);
  }
  text("Next", 400, 460);
  
  //draws a "restart" button 
  strokeWeight(3);
  stroke(150);
  fill(waterColor);
  if (sqrt(pow((mouseX - 725), 2) + pow((mouseY - 75), 2)) < 37.5){ //collision between mouse and the button
    fill(116, 152, 222);
  }
  
  //draws the button
  ellipse(725, 75, 75, 75);
  noFill();
  strokeWeight(8);
  stroke(0);
  //draws the arrow inside the button
  arc(725, 75, 40, 40, radians(270), radians(540));
  strokeCap(PROJECT);
  pushMatrix();
  translate(705, 75);
  rotate(radians(-22.5));
  line(0, 0, -10, 10);
  line(0, 0, 10, 10);
  strokeCap(ROUND);
  popMatrix();
}

void ISS(){ //draws a rough diagram of the international space station
  //default theme: white fill, gray stroke
  strokeWeight(3);
  strokeCap(ROUND);
  stroke(140);
  rectMode(CORNERS);
  
  //draws eight solar panels, all attached to a rectangle very similar to the one that crosses the body of the main ISS
  //top left left
  rect(-145, -10, -150, -40);
  pushMatrix();
  translate(-147.5, -100);
  solarPanel();
  popMatrix();
  
  //top left right
  pushMatrix();
  translate(65, 0);
  rect(-145, -10, -150, -40);
  pushMatrix();
  translate(-147.5, -100);
  solarPanel();
  popMatrix();
  popMatrix();
  
  //bottom left left
  rect(-145, 10, -150, 40);
  pushMatrix();
  translate(-147.5, 100);
  solarPanel();
  popMatrix();
  
  //bottom left right
  pushMatrix();
  translate(65, 0);
  rect(-145, 10, -150, 40);
  pushMatrix();
  translate(-147.5, 100);
  solarPanel();
  popMatrix();
  popMatrix();
  
  //draws a metal rod that passes below everything
  stroke(75);
  strokeWeight(20);
  strokeCap(PROJECT);
  line(-150, 0, 150, 0);
  //draws the line passing through the rod
  stroke(196, 194, 189);
  strokeWeight(10);
  strokeCap(ROUND);
  line(-170, 0, 170, 0);
  
  //draws two rectangles that cross the body, default theme
  fill(237);
  strokeWeight(3);
  strokeCap(ROUND);
  stroke(140);
  rectMode(CORNERS);
  rect(-15, -20, -10, 20);
  rect(15, -20, 10, 20);
  //draws the body of the ISS
  rect(-25, -10, 25, 10);
}

void solarPanel(){ //draws a solar panel for the ISS
  //one rectangle, 120 in height, 30 in length, centered around the middle
  //draws the first half of the solar panel
  rectMode(CENTER);
  fill(75);
  rect(-15, 0, 30, 120);
  //draws the second half of the solar panel, lighter in color
  fill(105);
  rect(15, 0, 30, 120);
  strokeWeight(0.5);
  stroke(210);
  //draws vertical lines crossing over these two boards
  for (int i = -30; i <= 30; i += 3){
    line(i, -60, i, 60);
  }
  //draws horizontal lines crossing over these two boards
  for (int i = -60; i <= 60; i+= 5){
    line(-30, i, 30, i);
  }
  //changes the theme back to the default for the ISS
  rectMode(CORNERS);
  fill(237);
  strokeWeight(3);
  strokeCap(ROUND);
  stroke(140);
}

void cargoShip(){ //draws a rough diagram of a cargo ship approaching the ISS, containing food 
  //draws in three engines
  cargoEngine();
  pushMatrix();
  translate(0, -30);
  cargoEngine();
  translate(0, 60);
  cargoEngine();
  popMatrix();
  //default: white fill, light blue window, orange contours and writing, black lining
  fill(255);
  stroke(216, 149, 13);
  //draws the main body of the cargo ship
  strokeWeight(3);
  beginShape();
  vertex(-100, -70);
  vertex(-90, -80);
  vertex(90, -80);
  vertex(100, -70);
  vertex(100, -40);
  vertex(140, -40);
  vertex(150, -30);
  vertex(100, 40);
  vertex(100, 70);
  vertex(90, 80);
  vertex(-90, 80);
  vertex(-100, 70);
  vertex(-100, 30);
  vertex(-140, 60);
  vertex(-150, 50);
  vertex(-150, -70);
  endShape(CLOSE);
  //draws the black lining across it
  noStroke();
  fill(0);
  rectMode(CORNERS);
  rect(-148.5, -65, 98.5, -55);
  rect(-98.5, 45, 98.5, 55);
  //draws the windows
  strokeWeight(1);
  stroke(0);
  fill(73, 213, 250);
  quad(70, -25, 130, -25, 90, 25, 70, 25);
  rect(0, 25, 60, -25);
  rect(-70, 25, -10, -25);
  rect(-140, 25, -80, -25);
  
  fill(0);
  textFont(wordFont, 16);
  textAlign(CENTER, BASELINE);
  text("Cargo Ship #0828", 0, 70);
}

void cargoEngine(){ //draws a cargo engine
  //draws the fire
  noStroke();
  fill(219, 95, 33);
  beginShape();
  vertex(-200, -8);
  vertex(-240, -10);
  vertex(-250, -15);
  vertex(-230, -5);
  vertex(-260, 0);
  vertex(-230, 5);
  vertex(-250, 15);
  vertex(-240, 10);
  vertex(-200, 8);
  endShape();
  fill(250, 212, 61);
  //draws the inner layer of the fire
  beginShape();
  vertex(-190, -5);
  vertex(-230, -6);
  vertex(-240, -9);
  vertex(-220, -3);
  vertex(-250, 0);
  vertex(-220, 3);
  vertex(-240, 9);
  vertex(-230, 6);
  vertex(-190, 5);
  endShape();
  //engine on the back
  stroke(216, 149, 13);
  strokeWeight(3);
  fill(121, 125, 126);
  arc(-240, 0, 240, 30, radians(290), radians(430), CLOSE);
}

void winningScreenBackground(){
  //draws the sunset in the background
  background(0);
  noStroke();
  rectMode(CORNERS);
  for (int i = 0; i <= 350; i++){
    fill(lerpColor(sunsetMerge1, sunsetMerge2, i/350.0));
    rect(0, i, 800, i + 1);
  }
  //draws the "spikes" around the sun
  fill(sun1);
  pushMatrix();
  translate(400, 325);
  rotate(radians(sunSpikeSpin));
  for (int i = 0; i <= 360; i += 30){
    pushMatrix();
    rotate(radians(i));
    triangle(-30, 40, 30, 40, 0, -100);
    popMatrix();
  }
  popMatrix();
  sunSpikeSpin += 0.6; //increases the spin of the sun
  //draws the sun
  fill(sun2);
  ellipse(400, 325, 80, 80);
  fill(89, 102, 237);
  //draws the ocean, moving
  for (int i = -800; i <= 800; i++){
    if (movingOcean % 1600 < 800){
      fill(lerpColor(oceanMerge1, oceanMerge2, abs(i)/800.0));
      rect(i + (movingOcean % 800), 350, i + (movingOcean % 800) + 1, 500);
    } else {
      fill(lerpColor(oceanMerge2, oceanMerge1, abs(i)/800.0));
      rect(i + (movingOcean % 800), 350, i + (movingOcean % 800) + 1, 500);
    }
  }
  movingOcean += 5; //moves the ocean

  //draws the birds flying in the background
  //draws the wood planks on the ground
  fill(woodplank);
  strokeWeight(3);
  stroke(woodplankStroke);
  rectMode(CORNERS);
  rect(0, 420, 800, 440);
  rect(0, 460, 800, 480);
  for (int i = -50; i < 850; i += 30){
    quad(i, 410, i + 20, 410, i, 490, i - 20, 490);
  }
  
  
  //draws a tree behind the left island
  noStroke();
  pushMatrix();
  translate(-90, -25);
  fill(woodplankStroke); //fills the tree trunk
  rect(126, 236, 161, 316);
  fill(83, 118, 65);
  ellipse(152, 201, 90, 90);
  ellipse(113, 210, 80, 80);
  ellipse(169, 217, 60, 60);
  ellipse(140, 240, 30, 30);
  ellipse(180, 198, 40, 40);
  ellipse(120, 173, 50, 50);
  popMatrix();
  //draws another tree
  fill(woodplankStroke); //fills the tree trunk
  rect(126, 236, 161, 316);
  fill(112, 196, 67);
  ellipse(152, 201, 90, 90);
  ellipse(113, 210, 80, 80);
  ellipse(169, 217, 60, 60);
  ellipse(140, 240, 30, 30);
  ellipse(180, 198, 40, 40);
  ellipse(120, 173, 50, 50);  
  
  beginShape();
  //left island grass
  fill(58, 129, 21);
  vertex(-238, 350);
  bezierVertex(-238, 350, 0, 200, 238, 350);
  vertex(-238, 350);
  endShape();
  
  beginShape();
  fill(woodplank);
  //left island land
  noStroke();
  vertex(224, 350);
  bezierVertex(224, 350, 0, 225, -224, 350);;
  vertex(-224, 350);
  endShape();
  fill(0);
  
  //draws the rocket coming down
  if (rocketDescending5 <= 380){
    rocketDescending5 += rocketDecrease5;
    rocketDecrease5 *= 0.995;
    pushMatrix();
    translate(720, rocketDescending5);
    rocket();
    popMatrix();
  } else if (rocketStandStillFrame5 <= 100){
    rocketStandStillFrame5++;
    rocketFireTransparencyLevel = 255.0 * (100 - rocketStandStillFrame5)/100.0;
    //draws the still-standing rocket
    pushMatrix();
    translate(720, 380);
    rocket();
    popMatrix();
  }
  else if (astronautLeaveRocket5 >= 400){
    //logical branching for moving the astronaut, this is the only time when the astronaut will be walking from the right side of the screen to the left (symbolism for the completion of the game)
    astronautLeaveRocket5--;
    if (astronautLeaveRocket5 % 16 == 0){
      astronautLeaveRocketLeftFoot5 -= 16;
    } else if (astronautLeaveRocket5 % 16 == 8){
      astronautLeaveRocketRightFoot5 -= 16;
    }
    pushMatrix();
    translate(astronautLeaveRocket5, 380);
    scale(0.5);
    astronaut();
    astronautLeftHand();
    astronautRightHand();
    popMatrix();
    pushMatrix();
    //draws the astronaut moving left
    translate(astronautLeaveRocketLeftFoot5 - 5, 380);
    scale(0.5);
    astronautLeftFoot();
    popMatrix();
    pushMatrix();
    translate(astronautLeaveRocketRightFoot5 - 5, 380);
    scale(0.5);
    astronautRightFoot();
    popMatrix();
    //draws the rocketship, now stationary
    pushMatrix();
    translate(720, 380);
    rocket();
    popMatrix();
  } else {
    //draws the still-standing rocket
    pushMatrix();
    translate(720, 380);
    rocket();
    popMatrix();
    //logic for the astronaut jumping or not
    if (frameCount % 25 == 0){
      if (astroJump5){
        astroJump5 = false;
      } else {
        astroJump5 = true;
      }
    }
    //draws the astronaut, either standing still or jumping in the air
    if (astroJump5){
      pushMatrix();
      translate(400, 360);
      scale(0.5);
      astronaut(); //draws the astronaut's main body in the air
      popMatrix();
      //draws the astronaut's hands in the air
      pushMatrix();
      translate(410, 345);
      scale(0.5);
      astronautRightHand();
      scale(2);
      translate(-20, 0);
      scale(0.5);
      astronautLeftHand();
      popMatrix();
      //draws the astronaut's feet in the air
      pushMatrix();
      translate(405, 360);
      scale(0.5);
      astronautRightFoot();
      scale(2);
      translate(-10, 0);
      scale(0.5);
      astronautLeftFoot();
      popMatrix();
    } else {
      //draws the stationary astronaut
      pushMatrix();
      translate(400, 380);
      scale(0.5);
      astronaut();
      astronautLeftHand();
      astronautRightHand();
      astronautLeftFoot();
      astronautRightFoot();
      popMatrix();
    }
    
    //restart and quit buttons
    textFont(wordFont);
    textSize(48);
    //draws this rectangle under the "Restart" button
    noStroke();
    fill(0);
    rectMode(CORNERS);
    rect(103, 420, 275, 476);
    fill(255);
    //branching for the "Restart" button
    if (mouseX >= 110 && mouseX <= 265 && mouseY >= 426 && mouseY <= 467){
      fill(highlight);
    }
    text("Restart", 190, 450);
    //draws this rectangle under the "Quit" button
    fill(0);
    rect(556, 421, 664, 477);
    fill(255);
    //branching for the "Quit" button
    if (mouseX >= 556 && mouseX <= 654 && mouseY >= 426 && mouseY <= 467){
      fill(highlight);
    }
    text("Quit", 610, 450);
  }
  
  //draws the winning text
  strokeWeight(3);
  textAlign(CENTER, CENTER);
  textFont(titleFont);
  textSize(48);
  fill(0);
  text("YOU WON!", 395, 55);
  fill(255);
  text("YOU WON!", 400, 50);
  //draws the explanation text
  textFont(wordFont);
  textSize(18);
  text("You made it safely back to Earth.\nPress \"Restart\" to play again,\n or \"Quit\" to leave.", 400, 150);
}

void quitScreen(){
  frameRate(60);
  background(0);
  fill(exitColor);
  textAlign(CENTER, CENTER);
  exitColor -= 2;
  textSize(25);
  text("Credits: \n\nGame Design and Planning: Joshua Wang and Brian Song \n\n    Storyline Writer: Joshua Wang and Brian Song \n\n Programmers: Joshua Wang and Brian Song \n\n Created for 2022, Sem 2, ICS culminating project \n\n Thanks for playing!", 395, 230);
}

//method for a mouse click registering, differs with each slide
void mouseClicked(){
  if (screenIndex == 0 && (mouseX >= 142 && mouseX <= 253 && mouseY >= 337 && mouseY <= 367)){
    astroX = 400;
    astroY = 250;
    screenIndex = 1; //introduction slide
  } else if (screenIndex == 0 && mouseX >= 550 && mouseX <= 645 && mouseY >= 330 && mouseY <= 365){
    screenIndex = -1;  //credits slide
  } else if (screenIndex == 1 && mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
    astroX = -30;
    astroY = 450;
    astroRightFootX = -35;
    astroRightFootY = 450;
    astroLeftFootX = -25;
    astroLeftFootY = 450;
    astroRightHandX = -30;
    astroRightHandY = 450;
    astroLeftHandX = -30;
    astroLeftHandY = 450;
    screenIndex = 2; //first task, fueling engines
  } else if (screenIndex == 2){
    if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484 && tankFill2){
      //once the "Next" button shows up for the tank filling, and the user clicks on it, it will move to the 3rd slide
      screenIndex = 2.5; //fun fact 1
    }
  } else if (screenIndex == 2.5){
    if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484 && tankFill2){
      astroX = -30;
      astroY = 450;
      astroRightFootX = -35;
      astroRightFootY = 450;
      astroLeftFootX = -25;
      astroLeftFootY = 450;
      astroRightHandX = -30;
      astroRightHandY = 450;
      astroLeftHandX = -30;
      astroLeftHandY = 450;
      //sends the user to slide 3, the logic puzzle game
      screenIndex = 3;
    } else if (sqrt(pow((mouseX - 725), 2) + pow((mouseY - 75), 2)) < 37.5){
      //resets the rocket
      rocketShake = 0; //variable for shaking the rocket
      takeOffCountDown = 150; //variable for the rocket shaking before taking off
      rocketSpeed = 0.5; //variable for how much the rocket adds by each time
      rocketY = 275; //variable for the rocket blasting off
    }
  } if (screenIndex == 3 && oxySelect == 0){
    //branching for if a bucket is selected
    if (((mouseX > 185 && mouseX < 265 && mouseY >= 395 && mouseY <= 455) || (mouseX > 195 && mouseX < 255 && mouseY >= 355 && mouseY <= 395)) && astroX > 99){
        oxySelect = 1;
    } else if (((mouseX > 335 && mouseX < 415 && mouseY > 395 && mouseY < 455) || (mouseX > 345 && mouseX < 405 && mouseY > 355 && mouseY < 395)) && astroX > 99){
        //blue tank
        oxySelect = 2;
    } else if (((mouseX > 485 && mouseX < 565 && mouseY > 395 && mouseY < 455) || (mouseX > 495 && mouseX < 555 && mouseY > 355 && mouseY < 395)) && astroX > 99){
        //green tank
        oxySelect = 3;
    }
  } else if (screenIndex == 3 && userWon3 == 1){
      //"Next" button, takes to the last task
      if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
          screenIndex = 3.5;
      }
  } else if (screenIndex == 3 && userWon3 == -1){
    //"Next" button for if the user loses
    if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
          screenIndex = -3;
      }
  } else if (screenIndex == -3){
    if (mouseX > 120 && mouseX < 274 && mouseY < 460 && mouseY > 417){ //branching for the "restart" button
      screenIndex = 0; //back to start
      resetVariables();
    } else if (mouseX > 578 && mouseY > 418 && mouseX < 678 && mouseY < 458){ //branching for the "quit" button
      screenIndex = -1; //leaves the game
    }
  } else if (screenIndex == 3.5){
      if (sqrt(pow((mouseX - 725), 2) + pow((mouseY - 75), 2)) < 37.5){ //collision between mouse and the button
        electricitySwitch = 0; //resets the animation of electrolysis
      }
      else if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
        screenIndex = 4; //moves onto the last task
      }
  } else if (screenIndex == 4){
    //moves the chicken's counter up
    if (mouseX > 300 && mouseX < 450 && mouseY > 375 && mouseY < 475 && chickenClicks < 7){
      chickenClicks++;
    } else if (mouseX >= 547 && mouseX <= 643 && mouseY >= 424 && mouseY <= 484 && hasWonTask3 == 1){
      //user moves onto the next screen
      screenIndex = 4.5;
    } else if (mouseX >= 597 && mouseX <= 693 && mouseY >= 424 && mouseY <= 484 && hasWonTask3 == -1){
      //user moves onto the death screen
      screenIndex = -3;
    }
  } else if (screenIndex == 4.5){
    if (mouseX >= 347 && mouseX <= 443 && mouseY >= 424 && mouseY <= 484){
      screenIndex = 5; //user wins the game
    } else if (sqrt(pow((mouseX - 725), 2) + pow((mouseY - 75), 2)) < 37.5){
      //resets the position of the cargo
      cargoX = -150;
      cargoY = 350;
    }
  } else if (screenIndex == 5){
    if (astronautLeaveRocket5 <= 400){
      if (mouseX >= 110 && mouseX <= 265 && mouseY >= 426 && mouseY <= 467){
        screenIndex = 0;//branching for the restart button
        resetVariables();
      } else if (mouseX >= 556 && mouseX <= 654 && mouseY >= 426 && mouseY <= 467){
        screenIndex = -1; //leaves the game
        resetVariables();
      }
    }
  }
}

//method for if a key is pressed, differs with each slide
void keyPressed(){
  if (key == 'q'){
    //closes the game
    screenIndex = -1;
  } if (key == 'r'){
    //restarts the game
    screenIndex = 0;
    frameRate(40);
    //resets the variables
    resetVariables();
  }
}

//method for once the mouse is held
void mouseDragged(){
  if (screenIndex == 2 && dist(mouseX, mouseY, 450, 300) <= 32 && astroX >= 310){
    // logical branching for if the wheel is being rotated clockwise
      if ((mouseX >= 450 && mouseY <= 300 && (mouseX > pmouseX || mouseY > pmouseY)) || (mouseX <= 450 && mouseY <= 300 && (mouseX > pmouseX || mouseY < pmouseY)) || 
      (mouseX <= 450 && mouseY >= 300 && (mouseX < pmouseX || mouseY < pmouseY)) || (mouseX >= 450 && mouseY >= 300 && (mouseX < pmouseX || mouseY > pmouseY))){
        //moves the fluid down if it isnt all the way down yet, otherwise it starts filling the tank
        slide2WheelRotate += 1;
        if (fluidY <= 150){
          //brings the fluid down until it reaches surface level
          fluidY++;
        } else if (fluidFillY >= 210){
            //starts bringing the large tank's fluid up
            if (fluidCoverFillY >= 255.0){
              fluidCoverFillY -= 0.7;
            } else {
              tankFill2 = true;
            }
          fluidFillY--;
        }
      }    
  } 
}
