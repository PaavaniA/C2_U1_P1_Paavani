public float x;
color dayTime = color(211, 255, 249);
color nightTime = color(146, 245, 231);
color current = color(211, 255, 249);
boolean sunRise = true;
waves wave = new waves();
sun Sun = new sun();

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer waveSong;
AudioInput input;

void setup() 
{
  size(900, 500, P2D);
  frameRate(30);

  wave = new waves();
  Sun = new sun();

  minim = new Minim(this);
  waveSong = minim.loadFile("waves.mp3");
  input = minim.getLineIn();
  waveSong.play();
}

void draw() 
{
  background(current);
  Sun.Draw();
  wave.Draw();
  if (sunRise)
  {
    current = lerpColor(current, nightTime, .007);
  } else
  {
    current = lerpColor(current, dayTime, .007);
  }
  if (x > width-75)
  {
    sunRise = false;
  }
}