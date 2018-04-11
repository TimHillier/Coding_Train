class Snowflake
{
  
  int x = floor(random(width));
  int y = floor(random(-100,-10)); 
  
 
   PVector pos = new PVector(x,y); 
   PVector vel = new PVector(); 
   PVector acc = new PVector();
   float r = getRandomSize();
   
   float angle = random(TWO_PI); 
   
   
   
  
  void render()
  {
     
   stroke(255); 
   strokeWeight(r); 
   point(pos.x,pos.y);
  }
  
  
  
  void applyForce(PVector force)
  {
   PVector f = force.copy(); 
   f.mult(r); 
   acc.add(f); 
  }
  
  void update()
  {
  
    vel.add(acc);
    vel.limit(r* .2); 
    
    if(vel.mag() < 1)
      vel.normalize();
    
    pos.add(vel);  
    acc .mult(0); 
    
    
    if(pos.y > height + r)
    {
      randomize(); 
    }
  }
  
  boolean offScreen()
  {
   return (pos.y > height + r);  
  }
  
  float getRandomSize()
  {
    float r = randomGaussian() * 8; 
    return constrain(abs(r),2,36);  
   // while(true)
   // {
   //float r1 = random(1); 
   //float r2 = random(2); 
   //if(r2 > r1)
   //  return r1 * 8; 
   // }
  }
  
  void randomize()
  {
    int x = floor(random(width));
    int y = floor(random(-100,-10)); 
  
 
   PVector pos = new PVector(x,y); 
   PVector vel = new PVector(); 
   PVector acc = new PVector();
   float r = getRandomSize();  
  }
  
  
  
  
  
  
  
}
