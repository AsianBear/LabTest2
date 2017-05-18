
ArrayList <GameObject> gameObjects = new ArrayList <GameObject>();
Bird bird;
void setup()
{
  size(500,500);
  for(int i = 0; i < 5; i++)
  {
  gameObjects.add(new Clouds());
  }
}

void draw()
{
  noStroke();
  fill(0,255,255);
  rect(0,0,width,height/2); //Sky
  
  noStroke();
  fill(0,255,0);
  rect(0,height/2,width,height/2); //Ground
  
  noStroke();
  fill(255,255,0);
  ellipse(0,0,100,100); //Sun

  for (int i=0 ; i< gameObjects.size();i++)
  {
   GameObject go = gameObjects.get(i); 
   go.update();
   go.render();
  }
}

void mousePressed()
{
  if(mouseX > 0 && mouseY > 0
  && mouseX < width && mouseY < height/2) // Check if mouse hover over sky draw bird
  {
    gameObjects.add(new Bird()); 
  }
  if(mouseX > 0 && mouseY > height/2
  && mouseX < width && mouseY < height)// Check if mouse hover over ground draw flower
  {
    gameObjects.add(new Trees());
  }
}