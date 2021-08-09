// variable for the menu
boolean Start = true;
boolean Exit = false;
boolean Start_button = false;
boolean Level1 = false;
boolean Level2 = false;
boolean Level3 = false;
boolean GameOver = false;

// sounds
import ddf.minim.*;
Minim minim;

AudioPlayer au_player1,au_player2,au_player3,au_player4,au_player5,au_player6,au_player7;

// font style
PFont font;
PFont font1;

// images
images img = new images();
PImage BG1;
PImage gameover;
PImage BG2;
PImage BG3;
PImage BG4;
PImage congrats;

// image array
float [] x;
float [] y;
float [] xmove;
float [] ymove;
int numofpics = 30;

//speed
int speed1 = 5;
int speed2 = 10;

// point system
int point = 0;

// limit of ghosts
int lvl = 0;
int lvllimit = 1500;
