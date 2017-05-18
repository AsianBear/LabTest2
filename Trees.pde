class Trees extends GameObject
{
  color c = color(random(1,150),random(1,200),0);;
  float stalk = random(-4,-2);;
  Trees()
  {
    super(mouseX,mouseY,30,0);
  }
  
  void update()
  {
    
       
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x,pos.y);
    
    stroke(c);
    line(0,0,0,pos.y/3);
 
    noStroke();
    fill(c);
    ellipse(0,stalk,radius,radius);
    float cx = 0;
    float cy = stalk;
    float petals = random(3,8);
    float thetaInc = TWO_PI / petals;
  
    for (float theta = 0 ; theta < TWO_PI ; theta += thetaInc) // An attempt at for looping the circles into petals
       {
        float x = cx + sin(theta) * radius;
        float y = cy + cos(theta) * radius;
        ellipse (x,y, radius, radius);
       }
    
    popMatrix();
  }
}