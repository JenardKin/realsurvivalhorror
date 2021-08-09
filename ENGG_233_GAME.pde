void setup()
{
  size (800, 800);

  // load font and images
  font = loadFont("PoorRichard-Regular-48.vlw");
  font1 = loadFont("font2.vlw");
  img.clown = loadImage("CL.png");
  img.grudge = loadImage("GR.png");
  img.zombie = loadImage("ZO.png");
  BG1 = loadImage("bg.png");
  BG2 = loadImage("balloons.png");
  BG3 = loadImage("house.png");
  BG4 = loadImage("well.png");
  gameover = loadImage("GO.png");
  congrats = loadImage("nice.png");
  minim = new Minim(this);
  au_player1 = minim.loadFile("Clown.wav");
  au_player2 = minim.loadFile("Zombi.wav");
  au_player3 = minim.loadFile("Laura.wav");
  au_player4 = minim.loadFile("Dora.wav");
  au_player5 = minim.loadFile("Cricket.wav");
  au_player6 = minim.loadFile("Start.wav");
  au_player7 = minim.loadFile("Game Over.wav");
  au_player5.play();

  background(BG1);

  // create the array of ghosts
  x = new float [numofpics];
  y = new float [numofpics];
  xmove = new float [numofpics];
  ymove = new float [numofpics];
  CreateGhost(x);
  CreateGhost(y);
  MoveGhost(xmove);
  MoveGhost(ymove);
}

void draw()
{
  // intro page
  if (Start == true)
  {
    button("Real Survival Horror Game", 50, 100, 700, 50);
    button("Objective: Click on the pictures to defeat and escape the monsters!", 50, 150, 700, 200);
    button("START", 50, 500, 700, 50);
    button("EXIT", 50, 600, 700, 50);
  }
  // select start
  if (Start_button == true)
  {
    button("BEGINNER", 50, 100, 700, 50);
    button("INTERMEDIATE", 50, 400, 700, 50);
    button("EXPERT", 50, 700, 700, 50);
  }
  // select exit
  if (Exit == true)
  {
    exit();
  }
  // select beginner
  if (Level1 == true)
  {
    frameRate(70);
    background(BG2);
    ShowClown(x, y, xmove, ymove, img);
    Score("Points: " + point, 50, 25, 500, 150);
    lvl++;
    if (point > 200)
    {
      background(congrats);
      au_player4.play();
      button ("CONGRATULATIONS!", 50, 200, 700, 150);
      Score("Press Enter to Exit Game.", 50, 100, 700, 150);
      if (key == ENTER)
      {
        exit();
      }
    } else if (lvl > lvllimit && point < 140) {
      background(gameover);
      au_player7.play();
      Score("Press Enter to Exit Game.", 50, 100, 700, 150);
      if (key == ENTER)
      {
        exit();
      }
      GameOver = true;
    }
  }
  // select intermediate
  if (Level2 == true)
  {
    frameRate(70);
    background(BG3);
    ShowGrudge(x, y, xmove, ymove, img);
    Score("Points: " + point, 50, 25, 500, 150);
    lvl++;
    if (point > 200)
    {
      background(congrats);
      au_player4.play();
      button ("CONGRATULATIONS!", 50, 200, 700, 150);
      Score("Press Enter to Exit Game.", 50, 100, 700, 150);
      if (key == ENTER)
      {
        exit();
      } 
    } else if (lvl > lvllimit-100 && point < 140)
      {
        background(gameover);
        au_player7.play();
        Score("Press Enter to Exit Game.", 50, 100, 700, 150);
        if (key == ENTER)
        {
          exit();
        }
        GameOver = true;
      }
  }
  // select expert
  if (Level3 == true)
  {
    frameRate(70);
    background(BG4);
    ShowZombie(x, y, xmove, ymove, img);
    Score("Points: " + point, 50, 25, 500, 150);
    lvl++;    
    if (point > 140)
    {
      background(congrats);
      au_player4.play();
      button ("CONGRATULATIONS!", 50, 200, 700, 150);
      Score("Press Enter to Exit Game.", 50, 100, 700, 150);
      if (key == ENTER)
      {
        exit();
      }
    } else if (lvl > lvllimit-200 && point < 140)
      {
        background(gameover);
        au_player7.play();
        Score("Press Enter to Exit Game.", 50, 100, 700, 150);
        if (key == ENTER)
        {
          exit();
        }
        GameOver = true;
      }
  }
}
