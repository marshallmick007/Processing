// http://github.com/marshallmick007/Processing

PImage _wave1;

float cur_wave_x = -20.0;
float wave_step = 0.5;
boolean _positive = true;

void setup() 
{
  _wave1 = loadImage("wave-big.png");
  size(400, 400);
  rectMode(CENTER);
  noStroke();
  smooth();
  fill(255, 0, 0);
}

void draw() 
{
  background(255);
  
  float x = width / 6;
  
  Heart h = new Heart();
  Diamond d = new Diamond();
  Spade s = new Spade();
  Club c = new Club();
  
  
  //d.display( x, x );
  //h.display( x * 4, x );
  //s.display( x, x * 4 );
  //c.display( x * 4, x * 4 );
  
  int w = -24;
  // Back Wave
  image(_wave1, w, height - 24, 128, 16); 
  image(_wave1, w + 128, height - 24, 128, 16);
  image(_wave1, w + 256, height - 24, 128, 16); 
  image(_wave1, w + 384, height - 24, 128, 16);

  
  if (_positive && cur_wave_x < 20)
  {
    cur_wave_x = cur_wave_x + wave_step;	
 	_positive = cur_wave_x < 20;
  }
  else
  {
	cur_wave_x = cur_wave_x - wave_step;
	_positive = (cur_wave_x < -20);
  }
// Front Wave
  image(_wave1, cur_wave_x + 0 - 32, height - 32, 256, 32); 
  image(_wave1, cur_wave_x + 256 - 32, height - 32, 256, 32); 
}






