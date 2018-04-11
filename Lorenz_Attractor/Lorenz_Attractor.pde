//From https://www.youtube.com/watch?v=f0lkz2gSsIk
import peasy.*;
float x = .01; 
float y = .01; 
float z = .01; 

float sigma = 10; 
float roe = 28; 
float beta = 8.0/3.0; 

ArrayList<PVector> points = new ArrayList<PVector>();
PeasyCam cam; 
void setup()
{
 size(800,600,P3D);
 //cam = new PeasyCam(this,500);
 colorMode(HSB);
 
}

void draw()
{
  background(0);
  float dt = .001;  
  float dx = (sigma * (y - x))*dt; 
  float dy = (x * (roe - z) -y)*dt; 
  float dz = ((x * y) - (beta * z))*dt;
  x = x + dx; 
  y = y + dy; 
  z = z + dz; 
  
  points.add(new PVector(x,y,z));
  
  translate(width/2,height/2);
  scale(5);
  stroke(255);  
  noFill();
  
  float hu = 0; 
  beginShape();
  for(PVector v : points)
  {
    stroke(hu,255,255); 
    vertex(v.x,v.y,v.z);
    //PVector offset = PVector.random3D(); 
    //offset.mult(0.1); 
    //v.add(offset);
    hu +=.1;
    if(hu > 255)
    hu =0; 
  }
  endShape();
}
