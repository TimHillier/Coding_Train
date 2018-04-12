// From https://www.youtube.com/watch?v=l__fEY1xanY&list=PLRqwX-V7Uu6ZiZxtDDRCi6uhfTH4FilpH&index=68
// and  https://www.youtube.com/watch?v=bqF9w9TTfeo&index=69&list=PLRqwX-V7Uu6ZiZxtDDRCi6uhfTH4FilpH
PVector pos; 
PVector prev; 
//color c = color(0,0,0); 
void setup()
{

  size(400,400);  
  pos = new PVector(width/2,height/2);
  prev = pos.copy(); 
  background(0); 


}
void draw()
{
  stroke(255); 
  strokeWeight(2); 
  //point(pos.x,pos.y); 
  line(pos.x,pos.y,prev.x,prev.y); 
  prev.set(pos);
  
  PVector step = PVector.random2D();
  float r = random(100); 
  if(r < 1)
  {
      step.mult(random(25,100)); 

  } 
  else
  {
   step.setMag(2); 
  }
  pos = pos.add(step); 
}
