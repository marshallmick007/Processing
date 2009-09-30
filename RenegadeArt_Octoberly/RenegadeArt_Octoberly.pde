// http://github.com/marshallmick007/Processing


void setup() {
  size(200, 200);
  rectMode(CENTER);
  noStroke();
  smooth();
  fill(255, 0, 0);
}

void draw() {
  background(255);
  
  float x = width / 6;
  
  Heart h = new Heart();
  Diamond d = new Diamond();
  Spade s = new Spade();
  Club c = new Club();
  
  
  d.display( x, x );
  h.display( x * 4, x );
  s.display( x, x * 4 );
  c.display( x * 4, x * 4 );
 
}






