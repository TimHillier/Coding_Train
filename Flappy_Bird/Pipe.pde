class Pipe
{
  int spacing = 125;
  float top = random(height / 6, (height/4)*3); //only 80 wy? 
  float bottom = height-(top + spacing); 
  float x = width; 
  float w = 80.0; 
  float speed = 3.0; 
    
  boolean highlight = false; 
  
  
  void show()
  {
   fill(255); 
   if(highlight)
   {
    fill(255,0,0);  
   }
   rectMode(CORNER); 
   rect(x,0,w,top); 
   rect(x,height-bottom,w,bottom); 
  }
  
  void update()
  {
   x -= speed; 
   
  }
  
  boolean offscreen()
  {
   return(x <-w);
   
  }
  boolean hits(Bird bird)
  {
   if(bird.y < top || bird.y > height - bottom)
   {
    if(bird.x > x && bird.x < x + w)
    {
      highlight  = true; 
     return true;  
    }
   }
   highlight = false; 
   return false; 
   
  }
  
}
