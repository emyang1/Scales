void setup(){
  size(600, 600);
  background(195, 200, 240);
  noLoop();
  frameRate(1);
}

void draw(){
  for(int y = 0; y<5000; y+=55){
    for(int x = 0; x<5000; x+=55){
        compass(x-150, y, (float)Math.random()*x);
    }
  }
}


void compass(int x, int y, float c){
  
  noStroke();
  //outer red part
  fill(c, 80, 80);
  ellipse(x, y, 80, 80); //outer circle
  fill(195, 200, 240);
  ellipse(x, y, 60, 60); //inner circle

  //inner spinning part
  fill(250);
  triangle(x-5, y, x+5, y, x, y-30); //north
  triangle(x-5, y, x+5, y, x, y+30); //south
  triangle(x, y-5, x, y+5, x+30, y); //east
  triangle(x, y-5, x, y+5, x-30, y); //west
  
  triangle(x, y+4, x-4, y, x-12, y+12); //southwest
  triangle(x, y-4, x+4, y, x+12, y-12); //northeast
  triangle(x-4, y, x, y-4, x-12, y-12); //northwest
  triangle(x+4, y, x, y+4, x+12, y+12); //southeast
  
  //shading
  
  fill(180);
  triangle(x, y, x+4, y-8, x, y-30); //north
  triangle(x, y, x-4, y+8, x, y+30); //south
  triangle(x, y, x-8, y-4, x-30, y); //west
  triangle(x, y, x+8, y+4, x+30, y); //east
  
  triangle(x, y, x+8, y-4, x+12, y-12); //northeast
  triangle(x, y, x-4, y-8, x-12, y-12); //northwest
  triangle(x, y, x+4, y+8, x+12, y+12); //southeast
}

