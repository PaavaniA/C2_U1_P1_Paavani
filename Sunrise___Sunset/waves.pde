class waves
{
  float x;
  float y;

  waves()
  {
    x = 0;
    y = 0;
  }

  void Draw()
  {
    colorMode(RGB);
    float x = 0;

    while (x < width) 
    {
      stroke(178, 233, 252, 180); //colour
      line(x, 200 + 100 * noise(x / 200, y), x, height); //forms wave

      stroke(88, 174, 203, 180); //colour
      line(x, 230 + 100 * noise(x / 180, y), x, height); //forms wave

      stroke(14, 120, 157, 180); //colour
      line(x, 250 + 100 * noise(x / 120, y), x, height); //forms wave

      stroke(9, 77, 100, 180); //colour
      line(x, 270 + 100 * noise(x / 75, y), x, height); //forms wave
      x = x + 1;
    }

    y = y + 0.02;
  }
}