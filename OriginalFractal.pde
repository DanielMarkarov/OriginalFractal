void setup()
{
  size(500, 500);
  background(0);
}

void draw()
{
  fractal(150, 150, 350);

}

public void fractal(int x, int y, float length) {
  if (length < 10)  {
    fill(#FAFF12);
    ellipse(x,y,length/2,length/2);
  }
  else {
    fill(155,(int)(Math.random()*100),(int)(Math.random()*100));
    rect(x-length/4,y,length/2,length/2);
    rect(x-length*(float)Math.sqrt(2)/8,y-length*(float)Math.sqrt(2)/8,length/2,length/2);
    rect(x,y-length/4,length/2,length/2);
    rect(x+length*(float)Math.sqrt(2)/8,y-length*(float)Math.sqrt(2)/8,length/2,length/2);
    rect(x+length/4,y,length/2,length/2);
    rect(x+length*(float)Math.sqrt(2)/8,y+length*(float)Math.sqrt(2)/8,length/2,length/2);
    rect(x,y+length/4, length/2, length/2);
    rect(x-length*(float)Math.sqrt(2)/8,y+length*(float)Math.sqrt(2)/8,length/2,length/2);
    fractal(x,y,length/1.5);
  }
}
