class Circle
{
 float x; 
 float y; 
 float r; 
 float hu; 
 
 boolean growing = true; 
 
  Circle(float x_, float y_)
  {
    x = x_; 
    y = y_; 
    r = 1; 
    hu = 0; 
    
  }
void show()
{
  stroke(255); 
  strokeWeight(2); 
  noFill(); 
  ellipse(x,y,r*2,r*2);  
  
}  

void grow()
{
  if(growing)
  r = r + 1; 
}

boolean edges()
{
  return (x+4 > width || x - r < 0 || y + r > height || y - r < 0);
}

}
