// http://github.com/marshallmick007/Processing


import processing.video.*;

PImage _wave1;
PImage _ship;
PImage _back;

PFont _font;

float cur_wave_x = -20.0;
float cur_ship_x = -150.0;
float wave_step = 0.5;
float ship_speed = 0.5;
boolean _positive = true;
boolean _fadeIn = true;
boolean _fadeOut = false;

boolean _displayWelcome = true;
boolean _paintMovie = false;
boolean _displayCredits = false;

int _wTimer = 0;

float _fadeAlpha = 0;

MovieMaker mm;

void setup() 
{
  	_wave1 = loadImage("wave-big.png");
  	_ship = loadImage( "ship.png" );
	_back = loadImage("background.png");
	
	_font = loadFont("IM_FELL_Great_Primer_PRO_Roman-21.vlw");
	textFont(_font);
	//_back2 = loadImage("bg-orange.png");
  	size(400, 400);
  	rectMode(CENTER);
  	noStroke();
  	smooth();
	
	mm = new MovieMaker(this, width, height, "octoberly.mov",
	                       30, MovieMaker.H263, MovieMaker.LOSSLESS);
}

void draw() 
{
  //background(0, 209, 248);
	//image(_back2, 0, 0, width, height);
  	image(_back, 0, 0, width, height);
  	float x = width / 6;
  
  Heart h = new Heart( width / 2 );
  Diamond d = new Diamond();
  Spade s = new Spade();
  Club c = new Club();
  
  
  //d.display( x, x );
  //h.display( x * 4, x );
  //s.display( x, x * 4 );
  //c.display( x * 4, x * 4 );
  
	if ( _displayWelcome )
	{
		drawWelcome();
	}
	
	if ( _paintMovie )
	{
		drawWaves();
	
		fadeIn();

		fadeOut();
	}
	if ( _displayCredits )
	{
		drawCredits();
	}
	mm.addFrame();
}

void keyPressed() {
  if (key == ' ') {
    mm.finish();  // Finish the movie if space bar is pressed!
  }
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
	  image(_wave1, cur_wave_x + 0 - 32, height - 30 + yoffset, 256, 32); 
	  image(_wave1, cur_wave_x + 256 - 32, height - 30 + yoffset, 256, 32);
	
	  
}

void drawShip()
{
	//pushMatrix();
	
	float yoff = 3 * sin( cur_ship_x * .1 );
	
	cur_ship_x = cur_ship_x + ship_speed;
	image(_ship, cur_ship_x, height-135 + yoff, 150, 150);
	
	if ( cur_ship_x > width - 80 )
	{
		_fadeOut = true;
	}
	//popMatrix();
}

void fadeIn()
{
	if ( _fadeIn )
	{
		fill(0, 0, 0, _fadeAlpha);
		
		quad( 0, 0, width, 0, width, height, 0, height );
		
		_fadeAlpha--;
		
		if ( _fadeAlpha <= 0 )
		{
			_fadeIn = false;
		}
	}
}

void fadeOut()
{
	if ( _fadeAlpha >= 255  && _fadeOut)
	{
		_fadeOut = false;
		_paintMovie = false;
		_displayCredits = true;
	}
	
	if ( _fadeOut )
	{
		fill(0, 0, 0, _fadeAlpha);
		
		quad( 0, 0, width, 0, width, height, 0, height );
		
		_fadeAlpha++;
	}
}

void drawWelcome()
{
	background(0);
	fill(255);
	String s = "...and beneath its glass the game of cards goes on- saints and sails, strung against the sunset, threads of harmony and half-forgotten iridescence.";
	
	text( s, 200, 200, 250, 250 );
	
	text( "~ Authur Rimbaud", 200, 300);
	// _paintMovie = true;
	
	fadeOutWelcome();
	
}

void fadeOutWelcome()
{
	if ( _fadeAlpha >= 255 )
	{
		_fadeAlpha = 255;
		_paintMovie = true;
		_displayWelcome = false;
	}
	
	if ( _wTimer > 120 )
	{
		fill(0, 0, 0, _fadeAlpha);
		
		quad( 0, 0, width, 0, width, height, 0, height );
		
		++_fadeAlpha;
	}
	else
	{
		_wTimer++;
	}
}

void drawCredits()
{
	background(0);
	fill(255);
	
	text( "Marquette's Meanderings", 40, 40 );
	text( "By Marshall Mickelson", 40, 70 );
	
	text("Renegade Art Alliance", 40, 100 );
	text("Octoberly Edition", 40, 130 );
}







