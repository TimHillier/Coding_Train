// From https://youtu.be/f5QBExMNB1I?list=PLRqwX-V7Uu6ZiZxtDDRCi6uhfTH4FilpH
float d = 8;
float n = 5; 
float k = n/d; 
void setup()
{
 size(500,500);
 
}
void draw()
{
   background(0);
   translate(width / 2 , height / 2);

  beginShape();
  stroke(255);
  strokeWeight(1);
  fill(random(256),random(256),random(256)); 
  for(float a = 0; a < TWO_PI * d; a+=.001)
  {
    float r = 200 * cos(k*a); 
    float x = r * cos(a); 
    float y = r * sin(a); 
    vertex(x,y); 
  }
  endShape(CLOSE); 
}
