// create the menu
void button(String s, int x, int y, int Width, int Height)
{
  fill(175);
  rect(x, y-25, Width, Height);

  fill(255);
  //textFont(font, 150);
  textAlign(CENTER);
  text(s, x, y, Width, Height);
}

// create array of "ghosts"
void CreateGhost(float [] x)
{
  for (int i = 0; i < numofpics; i++)
  {
    x[i] = random(0,750);
  }
}

// move the ghost
void MoveGhost(float [] xmove)
{
  for (int i = 0; i < numofpics; i++)
  {
    xmove[i] = random(speed1, speed2);
  }
  
}

// show this ghost
void ShowClown(float [] x, float [] y, float [] xmove, float [] ymove,images img)
{
  for (int i = 0; i < numofpics; i++)
  {
    image (img.clown, x[i], y[i]);
    x[i] = x[i] + xmove[i];
    y[i] = y[i] + ymove[i];
    
    if ((x[i] > width - 50) || (x[i] < 0))
    {
      xmove[i] = -xmove[i];
    }
    if ((y[i] > height - 50) || (y[i] < 0))
    {
      ymove[i] = -ymove[i];
    }
  }
}
void ShowGrudge(float [] x, float [] y, float [] xmove, float [] ymove, images img)
{
  for (int i = 0; i < numofpics-10; i++)
  {
    image (img.grudge, x[i], y[i]);
    x[i] = x[i] + xmove[i];
    y[i] = y[i] + ymove[i];
    
    if ((x[i] > width - 50) || (x[i] < 0))
    {
      xmove[i] = -xmove[i];
    }
    if ((y[i] > height - 50) || (y[i] < 0))
    {
      ymove[i] = -ymove[i];
    }
  }
}
void ShowZombie(float [] x, float [] y, float [] xmove, float [] ymove, images img)
{
  for (int i = 0; i < numofpics-15; i++)
  {
    image (img.zombie, x[i], y[i]);
    x[i] = x[i] + xmove[i];
    y[i] = y[i] + ymove[i];
    
    if ((x[i] > width - 50) || (x[i] < 0))
    {
      xmove[i] = -xmove[i];
    }
    if ((y[i] > height - 50) || (y[i] < 0))
    {
      ymove[i] = -ymove[i];
    }
  }
}

// show points
void Score(String s, int x, int y, int Width, int Height)
{
  noFill();
  noStroke();
  rect(x, y-25, Width, Height);

  fill(0, 125, 255);
  //textFont(font1, 100);
  textAlign(CENTER);
  text(s, x, y, Width, Height);
}
