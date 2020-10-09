// making a slow moving extending spiral



void setup()
{
  size(1000,1000);
  background(0,255,255);
  noStroke();
}

  void draw()
  {
     int CircleNumber = 3000;
     float CirclesPrior = 0;
     float Radius = 9; 
     float CirclesArea = (Radius) * (Radius) * 3.14159; // Area of a circle = PI * r^2 
     float frames = frameCount * 0.0001;

    for (int i = 1; i <= CircleNumber; ++i) { 

      float angle = frames + i*19;
      CirclesPrior += CirclesArea; 
      float Circumference = sqrt( CirclesPrior / 3.14159 ); 
      float x =  height/2 + cos(angle) * Circumference ;
      float y = width/2 + sin(angle) * Circumference ;
      
      fill(255, 255, 0);

      ellipse(x,y, Radius*2, Radius*2); 
    }
  }
