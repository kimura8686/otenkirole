void setup()
{
  noStroke();
  size(800, 500);
  background(220, 240, 250);
  fill(150);
  rect(0,400, 800, 300); 
  fill(255);
  rect(300, 300, 200, 100);
  fill(30);
  textSize(50);
  text("PUSH", 350, 370);
  textAlign(CENTER);
  text("<OTENKI ROULETTE>", 400, 90);
  frameRate(10);
}


int h = 0;
int tenki;
int kaisu;
int n;


void mousePressed()
{
  if ((mouseX<500)&&(mouseX>300)&&(mouseY>300)&&(mouseY<400))
  {
    h = 1;
    tenki = 0;
    kaisu = (int)random(25, 35);
    n = 0;
  }
}


void draw()
{
  if ((h==1&&n ==kaisu)||h==3)
  {
    h =3;
    fill((int)random(255), (int)random(255), (int)random(255));
    text("<<OTENKI KAKUTEI>>",400, 90);
  }
  
  if(h == 0)
   {
   background(220, 240, 250);
   fill(255);
   rect(300, 300, 200, 100);
   fill(150);
   rect(0,400, 800, 300); 
   fill(30);
   text("PUSH",400, 370);
   textAlign(CENTER);
   fill((int)random(255), (int)random(255), (int)random(255));
   text("<OTENKI ROULETTE>",400, 90);
   }
   
  else if (h ==1&&n < kaisu)
  {
    n++;
    tenki++;
  }
  
  if (h ==1&&tenki%3==1)
  {
    background(220, 240, 250);
    fill(255, 50, 0);
    circle(50, 50, 100);
    fill(150);
    rect(0,400, 800, 300); 
    fill(30);
    text("SUNNY", 400, 360);
  } 
  
  else if (h ==1&&tenki%3==2)
  {
    background(200);
    fill(100,100, 200);
    for(int i = 0; i <30; i++)
    {
      circle((int)random(800),(int)random(400),10);
    }
    fill(100, 60, 10);
    rect(0,400, 800, 300); 
    fill(30);
    text("RAINY", 400, 360);
    
  } else if (h ==1&&tenki%3==0)
  {
    background(200);
    fill(255);
    rect(0,400, 800, 300); 
    circle(500, 360, 80);
    circle(500, 295, 60);
    fill(225);
    for(int i = 0; i <30; i++)
    {
      circle((int)random(800),(int)random(400),10);
    }
    fill(30);
    text("SNOWY", 400, 360);
  }
}
