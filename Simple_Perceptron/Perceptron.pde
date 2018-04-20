//activation function
int sign(float n)
{
 if( n >= 0)
 {
  return 1;  
 }
 else
 return -1; 
}
class Perceptron
{
 float[] weights ;
 float lr = .001; 
 
 //construct
 Perceptron(int n)
 {
  // initialize weights
  weights = new float[n];
  for(int i = 0; i < weights.length; i++)
  {
   weights[i] = random(-1,1);  
  }
 }
  int guess(float[] inputs)
  {
    float sum =0; 
    for(int i =0; i<weights.length; i++)
    {
      sum += inputs[i]*weights[i];
    }
    return sign(sum); 
  }
  
  void train(float[] inputs, int target)
  {
   int guess = guess(inputs); 
   int error = target - guess; //error either 0 or +-2 if 2 
  for(int i = 0; i < weights.length; i++)
  {
    weights[i] += error * inputs[i] * lr; 
  }
  }
  
  float guessY(float x)
  {
    float w0 = weights[0]; 
    float w1 = weights[1]; 
    float w2 = weights[2];
  return -(w2/w1) - (w0/w1) * x;
  }
}
  
  
