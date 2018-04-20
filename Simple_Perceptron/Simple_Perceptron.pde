//From https://www.youtube.com/watch?v=ntKn5TPHHAk
import processing.sound.*;
SoundFile sound; 
Perceptron brain; 
boolean finished = false; 
Point[] points = new Point[200]; 
int trainingIndex = 0; 
int correct =0; 
void setup()
{
  size(800, 800);
  brain = new Perceptron(3);
  for (int i = 0; i < points.length; i++)
  {
    points[i] = new Point();
  }
  sound = new SoundFile(this,"Ding.mp3");
}

void draw()
{
  //loop for doneness
  
  
  
  background(0); 
  stroke(255); 
  
  //line(0, height, width, 0); 
  //actual line
  Point p1 = new Point(-1,f(-1));
  Point p2 = new Point(1,f(1));
  line(p1.pixelX(),p1.pixelY(),p2.pixelX(),p2.pixelY());
  
  stroke(255,255,0);
  //perceptrion line
  Point p3 = new Point(-1,brain.guessY(-1));
  Point p4 = new Point(1,brain.guessY(1));
  line(p3.pixelX(),p3.pixelY(),p4.pixelX(),p4.pixelY());
  
  
  for (Point pt : points)
  {
    pt.show();
  }

  for (Point pt : points)
  {
    float[] inputs = {pt.x, pt.y, pt.bias};
    int target = pt.label; 
     //brain.train(inputs,target; 
    int guess = brain.guess(inputs); 
    if (guess == target)
    {
      fill(0, 255, 0);
      correct++; 
    } else
    {
      fill(255, 0, 0);
    }
    noStroke(); 
    ellipse(pt.pixelX(), pt.pixelY(), 7, 7);
  }
  Point training = points[trainingIndex]; 
  float[] inputs = {training.x, training.y,training.bias};
  int target = training.label; 
  brain.train(inputs, target);
  trainingIndex++;
  if (trainingIndex == points.length)
  {
    trainingIndex = 0;
  }
  if(correct == points.length && !finished)
  {
    finished = true;
    println("DONE");
    sound.play(); 
  }
  else
  {
   correct =0;  
  }
  
  
  
}
