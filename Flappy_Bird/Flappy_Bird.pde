//From https://www.youtube.com/watch?v=cXgA1d_E-jY&t=691s
Bird bird;
ArrayList<Pipe> pipes = new ArrayList<Pipe>(); 
void setup()
{
  size(640,480); 
  bird  = new Bird(); 
  pipes.add(new Pipe()); 
}
void draw()
{
  background(0);
  for(int i = pipes.size() -1; i >= 0; i--)
  {  
    pipes.get(i).show();
    pipes.get(i).update();
    if(pipes.get(i).hits(bird))
    {
    }
    if(pipes.get(i).offscreen())
    {
      pipes.remove(i);
    }
  }
  bird.update(); 
  bird.show();   
  if(frameCount % 100 == 0)
  {
    pipes.add(new Pipe()); 
  }
  
  
}

void keyPressed()
{
 if(key ==' ')
 {
   bird.up(); 
 }
}
