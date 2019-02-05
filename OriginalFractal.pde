public void setup()
{
  size(700,700);
  rectMode(CENTER);
  frameRate(25);
}

public void draw()
{
  fill(0, 10);
  rect(350, 350, 1000, 1000);
  myFractal(350, 350, 900);
  myFractal(600, 100, 100);
  myFractal(100, 600, 100);
  myFractal(350, 350, 100);
}

public void myFractal(float x, float y, float size)
{
  float a = 4;
  if(mousePressed){
  a = ((float)(Math.random()*10) + 3);
  fill(((int)(Math.random()*255)), ((int)(Math.random()*255)), ((int)(Math.random()*255)));
  }
  stroke(255);
  rect(x, y, size, size);  
  
  ellipse(x, y, size, size);
  if(size > 10)
  {
    myFractal(x - size/a, y, size/a);
    myFractal(x + size/a, y, size/a);
    myFractal(x, y - size/a, size/a);
    myFractal(x, y + size/a, size/a);
    myFractal(x - size/a, y - size/a, size/a);
    myFractal(x + size/a, y + size/a, size/a);
  }
}
