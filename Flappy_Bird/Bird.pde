class Bird
{
 int x = width/2; 
 int y = 64; 
 float gravity = 0.6; 
 float lift = -15.0; 
 float velocity = 0.0; 
 
 void show()
 {
    fill(255); 
    ellipse(x,y,16,16); 
 }
 
 void update()
 {
   velocity += gravity; 
   velocity *=0.9; 
   y += velocity;
   
   
   if(y > height)
   {
    y = height; 
    velocity = 0; 
   }
   if(y < 0)
   {
    y = 0; 
    velocity = 0; 
   }
 }
 
 void up()
 {
   velocity += lift; 
 }
 
 
 
}
