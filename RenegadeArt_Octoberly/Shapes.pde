class Diamond
{
  void display( float x, float y, float s )
  {
    fill(255, 0, 0);
    stroke(255, 0, 0);
    quad( x, y - (.5 * s), x + (0.3 * s), y, x, y + (.5 * s), x - (0.3 * s), y );
  } 
}


class Heart
{
  void display( float x, float y, float s )
  {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
    noStroke();
    float r = (s/4);
    float c = 2*r;
    float y1 = sin(PI/6) * r;
    float x1 = cos(PI/6) * r;
    arc(x - r, y, c, c, PI-PI/6, TWO_PI);
    arc(x + r - 1, y, c, c, PI, TWO_PI+PI/6);
    //ellipse(x - (s/4), y, s/2, s/2  );
    //ellipse(x + (s/4), y, s/2, s/2  );
    
    float ax = x - (r+x1);
    float bx = x + (r+x1);
    
    triangle(ax, y + y1, x, y + (s / 1.3), bx, y + y1 );
    
    quad(ax, y + y1, x-r-(r/2), y, x+r+(r/2), y, bx, y + y1);
  }
}

class Club
{
  void display(float x, float y, float s)
  {
    fill(0,0,0);
    stroke(0);
    s = s * 1.5;
    
    ellipse( x, y, s/6, s/6);
    ellipse( x, y - s/5, s/4, s/4);
    ellipse( x - s/6, y + s/30, s/4, s/4);
    ellipse( x + s/6, y + s/30, s/4, s/4);
    
    triangle( x , y, x + s/20, y + s/4, x - s/20, y + s/4 );
  }
}

class Spade
{
  void display(float x, float y, float s)
  {
    fill(0,0,0);
    stroke(0);
    float s2 = s * .75;
    
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
    
    triangle( x , y+(s/16), x + s/16, y + s/3, x - s/16, y + s/3 );
  }
}

