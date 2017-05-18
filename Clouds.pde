class Clouds extends GameObject
{
  float speed;
  
 Clouds()
 {
   super(0 - random(50, 200), random(40,height/2.75), 30, 0);
   speed = random(0.5,1);
 }
 
 void update()
 {
   pos.x += speed;   
    if (pos.x - 50 > width) // Check if clouds went off screen then reset its position
    {
      pos.y = random(40, height / 2.75);
      speed = random(0.5, 1);      
      pos.x = 0 - random(50, 200);
    }
 }
 
 void render()
 {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(255);
    fill(255);
    ellipse(0, 0, 50, 40);
    ellipse(-radius, 0, radius, radius);
    ellipse(radius, 0, radius, radius);
    popMatrix();
 }
}