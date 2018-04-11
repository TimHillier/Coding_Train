////From https://www.youtube.com/watch?v=FWSR_7kZuYg
//1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
//2.Any live cell with two or three live neighbours lives on to the next generation.
//3. Any live cell with more than three live neighbours dies, as if by overpopulation.
//4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

int columns; 
int rows; 
int x = 0; 
int y = 0; 
int resolution = 10; 
int[][] grid; 

int[][] make2DArray(int c,int r)
{
  int[][] arr = new int[c][r]; 
  return arr; 
}

void setup()
{
  size(600,400); 
  columns = width/resolution; 
  rows = height/resolution; 
  grid = make2DArray(columns,rows);
  for(int i = 0; i < columns; i++)
  {
    for(int j =0; j < rows; j++)
    {
      grid[i][j] = floor(random(2)); 
    }
  }
}

void draw()
{
  background(0); 
  
  
    //compute next based on grid. 
  
   
   
  for(int i = 0; i < columns; i++)
  {
    for(int j =0; j<rows; j++)
    {
      x =i * resolution; 
      y = j * resolution; 
      if(grid[i][j] == 1)
      {
        //System.out.println(grid[i][j]);
        fill(255);
        stroke(0); 
        rect(x,y,resolution,resolution);
      }
    }
  }
  
  
  int[][] next = make2DArray(columns,rows); 
  //count live neighbors. 
  for(int i = 0; i < columns; i++)
  {
    for(int j =0; j<rows; j++)
    {
      int state = grid[i][j]; 
      //edges make this wrap around later. 
       int sum = 0; 
       int neighbors = countNeighbors(grid,i,j); 
       
       
       
       //rule 1
       if( state ==0 && neighbors == 3)
       {
         next[i][j] = 1; 
       }//rule 2
       else if (state == 1 && (neighbors<2 || neighbors >3))
       {
         next[i][j] = 0; 
       }//rule 3
       else
       next[i][j] = state; 
     
      } 
    }
  
   grid = next;   
}
int countNeighbors(int[][] grid,int x,int y)
{
  int sum = 0; 
  for(int i = -1; i <2; i++)
  {
    for(int j = -1; j<2; j++)
    {
      int col = (x+i + columns) % columns; 
      int row = (y + j + rows) % rows; 
      sum += grid[col][row];
    }
  }
  return sum -= grid[x][y];
}
