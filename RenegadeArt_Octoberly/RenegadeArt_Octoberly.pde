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
	_back = l<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<title>QuickTime Player - Export for Web - octoberly</title>
	<script src="http://www.apple.com/library/quicktime/2.0/scripts/prototype.js" language="JavaScript" type="text/javascript"></script>
	<script src="http://www.apple.com/library/quicktime/2.0/scripts/qtp_poster.js" language="JavaScript" type="text/javascript"></script>
	<script language="JavaScript" type="text/javascript">
		var setJSControllerEnabled = function(enabled) {
			var poster = document.getElementsByClassName("QTP")[0].poster;
			if(enabled)
				poster.controller.element.style.display = "";
			else
				poster.controller.element.style.display = "none";
			poster.attributes.controller = enabled ? "false" : "true";
			document.getElementById(enabled ? "jscontrollerenabled" : "jscontrollerdisabled").style.display = "";
			document.getElementById(enabled ? "jscontrollerdisabled" : "jscontrollerenabled").style.display = "none";
			if(poster.movie)
				poster.movie.element.SetControllerVisible(!enabled);
		}		
	</script>
	<script language="JavaScript" type="text/javascript">QTP.Poster.prototype.clickText = "Click To Play";</script>
	<link href="http://www.apple.com/library/quicktime/2.0/stylesheets/qtp_poster.css" rel="StyleSheet" type="text/css" />
</head>
<body>

<table>
	<tr>
		<td><img src="http://images.apple.com/downloads/images/essentials_quicktime20070611.png" /></td>
		<td><h1>Instructions for posting <i>octoberly</i> to your website</h1></td>
	</tr>
</table>

<div id="summary">
	<p>You have exported <i>octoberly</i> using QuickTime Player.  The following information will help you post this movie to your website.</p>
	<p>In the same folder as this instructional HTML file, QuickTime Player has placed various versions of your movie optimized for web-delivery. Also in that folder is a reference movie, which selects the best version for your users' various devices and connection speeds. By including this reference movie in your HTML page, you can ensure a quality video experience on your site.</p>
	<p>Here's a preview (requires Internet connection):</p>
</div>

<a href="octoberly.mov" rel="qtposter">
	<img src="octoberly.jpg" width="400" height="416" />
</a>

<div id="textembed">
	<p>Use the following HTML code to embed your movie into your web page.</p>
	<h3>Important Notes:</h3>
	<ul>
		<li>To make your media viewable on the Internet, your media assets (movies, poster image) must be placed on a publicly accessible server.</li>
		<li>The URL parameters must be modified if your media assets are served from a different location than your web page.</li>
		<li>The movie URL parameters must always point to the reference movie (<a href="octoberly.mov">octoberly.mov</a>) rather than a source movie.</li>
		<li>The reference movie must be kept in the same folder as the source movies.</li>
		<li>Source movie names cannot be changed, but you can change the name of the reference movie (remember to change it in the HTML code as well).</li>
		<li>Please note, to properly validate as XHTML, the <code>&lt;style&gt;</code> tag and the first <code>&lt;script&gt;</code> tag should be placed within your page's <code>&lt;head&gt;</code> tag.</li>
	</ul>

	<p>You may choose whether to use a JavaScript movie controller, including a Play/Pause button and a clickable timeline, or the original QuickTime movie controller:</p>
	<div id="controllerswitch">
	<select onchange="setJSControllerEnabled(this.options[this.selectedIndex].value == 'true');">
		<option value="true" selected>JavaScript Controller</option>
		<option value="false">QuickTime Controller</option>
	</select>
	</div>


<p>Use this code in the <code>&lt;head&gt;</code> of your web page:</p>
<textarea rows="5" cols="80">
&lt;script src="http://www.apple.com/library/quicktime/2.0/scripts/prototype.js" language="JavaScript" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="http://www.apple.com/library/quicktime/2.0/scripts/qtp_poster.js" language="JavaScript" type="text/javascript"&gt;&lt;/script&gt;
&lt;link href="http://www.apple.com/library/quicktime/2.0/stylesheets/qtp_poster.css" rel="StyleSheet" type="text/css" /&gt;
</textarea>

<p>Use this code in the <code>&lt;body&gt;</code> of your web page:</p>
<textarea rows="5" cols="80" id="jscontrollerenabled">
&lt;a href="octoberly.mov" rel="qtposter"&gt;
	&lt;img src="octoberly.jpg" width="400" height="416" /&gt;
&lt;/a&gt;
</textarea>
<textarea rows="5" cols="80" id="jscontrollerdisabled" style="display:none">
&lt;a href="octoberly.mov" rel="qtposter" jscontroller="false"&gt;
	&lt;img src="octoberly.jpg" width="400" height="416"/&gt;
&lt;/a&gt;
</textarea>
</div>

<div id="exportlog">
<h3>Exported:</h3>
<ul>
	<li>Reference Movie:
		<ul><li><a href="octoberly.mov">octoberly.mov</a></li></ul>
	</li>
	<li>Poster Frame:
		<ul><li><a href="octoberly.jpg">octoberly.jpg</a></li></ul>
	</li>
	<li>Versions:
		<ul>
		<li><a href="octoberly%20-%20Computer.m4v">octoberly - Computer.m4v</a></li>
		</ul>
	</li>
</ul>
</div>

</body>
</html>
oadImage("background.png");
	
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







