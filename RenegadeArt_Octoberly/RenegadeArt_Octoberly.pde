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
  
  
  d.display( x, x, 40 );
  h.display( x * 4, x, 120 );
  s.display( x, x * 4, 40 );
  c.display( x * 4, x * 4, 40 );
 
}






