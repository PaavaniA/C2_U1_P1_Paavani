class sun
{
  public float x;
  float y;

  sun()
  {
    x = 0;
    y = 50;
  }

  void Draw()
  {
    colorMode(RGB);
    fill(255, 112, 3);
    noStroke();
    ellipse(x, y, 70, 70);

    x += 2.1;
    y += 0.8;

    if (x > width-75) 
    {
      x = -50;
      y = 50;
    }
  }
}