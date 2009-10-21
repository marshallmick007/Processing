// http://github.com/marshallmick007/Processing

PImage _wave1;
PImage _ship;

float cur_wave_x = -20.0;
float cur_ship_x = -150.0;
float wave_step = 0.5;
float ship_speed = 0.5;
boolean _positive = true;
boolean _fadeIn = true;
boolean _fadeOut = false;

float _fadeAlpha = 255;

void setup() 
{
  _wave1 = loadImage("wave-big.png");
  _ship = loadImage( "ship.png" );
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
  
  Heart h = new Heart( width / 2 );
  Diamond d = new Diamond();
  Spade s = new Spade();
  Club c = new Club();
  
  
  //d.display( x, x );
  //h.display( x * 4, x );
  //s.display( x, x * 4 );
  //c.display( x * 4, x * 4 );
  
	

	drawWaves();
	
	fadeIn();

	//fadeOut();
	
	
}


void drawWaves()
{
	  int w = -24;
	  // Back Wave
	  image(_wave1, w, height - 21, 128, 16); 
	  image(_wave1, w + 128, height - 21, 128, 16);
	  image(_wave1, w + 256, height - 21, 128, 16); 
	  image(_wave1, w + 384, height - 21, 128, 16);


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

	  float yoffset = sin( cur_wave_x * .5 ) * 2;

	// Draw Ship in front of back waves and behind front waves;
	drawShip();

	// Front Wave
	  image(_wave1, cur_wave_x + 0 - 32, height - 29 + yoffset, 256, 32); 
	  image(_wave1, cur_wave_x + 256 - 32, height - 29 + yoffset, 256, 32);
	
	  
}

void drawShip()
{
	cur_ship_x = cur_ship_x + ship_speed;
	image(_ship, cur_ship_x, height-135, 150, 150);
}

void fadeIn()
{
	if ( _fadeIn )
	{
		fill(255, 255, 255, _fadeAlpha);
		
		quad( 0, 0, width, 0, width, height, 0, height );
		
		_fadeAlpha--;
		
		if ( _fadeAlpha <= 0 )
		{
			_fadeIn = false;
			
			_fadeOut = true;
		}
	}
}

void fadeOut()
{
	if ( _fadeAlpha >= 255 )
	{
		_fadeOut = false;
	}
	
	if ( _fadeOut )
	{
		fill(255, 255, 255, _fadeAlpha);
		
		quad( 0, 0, width, 0, width, height, 0, height );
		
		_fadeAlpha++;
	}
}






