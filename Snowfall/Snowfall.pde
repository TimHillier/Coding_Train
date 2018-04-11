//from https://www.youtube.com/watch?v=cl-mHFCGzYk

ArrayList<Snowflake> snow = new ArrayList<Snowflake>(); 
PVector gravity; 


void setup()
{
 size(500,500); 
 gravity = new PVector(0,0.03); 
 
}

void draw()
{
  background(0);
  snow.add(new Snowflake()); 
  
  for(Snowflake flake : snow)
  {
    flake.applyForce(gravity); 
    flake.render(); 
    flake.update(); 
  }
  
  for(int i = snow.size()-1; i >= 0; i--  )
  {
   if(snow.get(i).offScreen())
   {
     snow.remove(i); 
   }
  }
  
}
