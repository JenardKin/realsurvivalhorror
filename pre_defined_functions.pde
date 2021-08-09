// create link to submenu
void mouseClicked()
{
  // click start
  if ((mouseX > 50 && mouseX < 750) && (mouseY > 500 && mouseY < 550) && Start == true && Level2 == false && GameOver == false)
  {
    Start = false;
    Exit = false;
    Start_button = true;
    Level1 = false;
    Level2 = false;
    Level3 = false;
    background(0);
    au_player6.play();
  }
  // click exit
  if ((mouseX > 50 && mouseX < 750) && (mouseY > 600 && mouseY < 650) && Start == true && Level2 == false && GameOver == false)
  {
    Start = false;
    Exit = true;
    Start_button = false;
    Level1 = false;
    Level2 = false;
    Level3 = false;
    background(0);
  }
  // click beginner
  if ((mouseX > 50 && mouseX < 750) && (mouseY > 100 && mouseY < 150) && Start_button == true && GameOver == false)
  {
    Start = false;
    Exit = false;
    Start_button = false;
    Level1 = true;
    Level2 = false;
    Level3 = false;
    background(BG2);
    au_player1.play();
  }
  // click intermediate
  if ((mouseX > 50 && mouseX < 750) && (mouseY > 400 && mouseY < 450) && Start_button == true && GameOver == false)
  {
    Start = false;
    Exit = false;
    Start_button = false;
    Level1 = false;
    Level2 = true;
    Level3 = false;
    background(BG3);
    au_player2.play();
  }
  // click expert
  if ((mouseX > 50 && mouseX < 750) && (mouseY > 700 && mouseY < 750) && Start_button == true && GameOver == false)
  {
    Start = false;
    Exit = false;
    Start_button = false;
    Level1 = false;
    Level2 = false;
    Level3 = true;
    background(BG4);
    au_player3.play();
  }
  // make image "disappear"
}

void mousePressed()
{
  for (int i = 0; i < numofpics; i++)
  {
    float distance = sqrt(sq(x[i] - mouseX) + sq(y[i] - mouseY));
    if (distance <= 200 && ( Level1 == true || Level2 == true || Level3 == true ) && GameOver == false)
    {
      x[i] = -800;
      y[i] = -800;
      point = point + 10;
      break;
    }
  }
}
