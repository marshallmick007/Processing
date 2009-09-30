class Shape
{
	float _size = 40;
	
	Shape() {}
	
	Shape( float s )
	{
		_size = s;
	}
}

class Diamond extends Shape
{
	Diamond() {}
	
	Diamond( float s )
	{
		super( s );
	}
	
	void display( float x, float y )
	{
		fill(255, 0, 0);
		stroke(255, 0, 0);
		quad( x, y - (.5 * _size), x + (0.3 * _size), y, x, y + (.5 * _size), x - (0.3 * _size), y );
	} 
}


class Heart extends Shape
{
	Heart() {}
	
	Heart( float s )
	{
		super( s );
	}
	
	void display( float x, float y )
	{
		fill(255, 0, 0);
		//stroke(255, 0, 0);
		noStroke();
		float r = (_size/4);
		float c = 2*r;
		float y1 = sin(PI/6) * r;
		float x1 = cos(PI/6) * r;
		arc(x - r, y, c, c, PI-PI/6, TWO_PI);
		arc(x + r - 1, y, c, c, PI, TWO_PI+PI/6);
		//ellipse(x - (s/4), y, s/2, s/2  );
		//ellipse(x + (s/4), y, s/2, s/2  );

		float ax = x - (r+x1);
		float bx = x + (r+x1);

		triangle(ax, y + y1, x, y + (_size / 1.3), bx, y + y1 );

		quad(ax, y + y1, x-r-(r/2), y, x+r+(r/2), y, bx, y + y1);
	}
}

class Club extends Shape
{
	Club() {}
	
	Club( float s )
	{
		// scale the club by 1.5 times
		super( s * 1.5 );
	}
	
  	void display(float x, float y )
	{
		fill(0,0,0);
		stroke(0);

		ellipse( x, y, _size/6, _size/6);
		ellipse( x, y - _size/5, _size/4, _size/4);
		ellipse( x - _size/6, y + _size/30, _size/4, _size/4);
		ellipse( x + _size/6, y + _size/30, _size/4, _size/4);

		triangle( x , y, x + _size/20, y + _size/4, x - _size/20, y + _size/4 );
	}
}

class Spade extends Shape
{
	Spade() {}
	
	Spade( float s )
	{
		super( s );
	}
	
  	void display(float x, float y )
	{
	  	fill(0,0,0);
		stroke(0);
		float s2 = _size * .75;

		float r = (s2/4);
		float c = 2*r;
		float y1 = sin(PI/6) * r;
		float x1 = cos(PI/6) * r;

		arc(x - r, y, c, c, 0, PI+PI/6);
		arc(x + r, y, c, c, 0-PI/6, PI);

		float ax = x - (r+x1);
		float bx = x + (r+x1);

		triangle(ax, y - y1, x, y - (s2 / 1.3), bx, y - y1 );

		quad(ax, y - y1, x-r-(r/2), y, x+r+(r/2), y, bx, y - y1);

		triangle( x , y+(_size/16), x + _size/16, y + _size/3, x - _size/16, y + _size/3 );
	}
}

