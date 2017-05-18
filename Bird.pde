class Bird extends GameObject
{
  float speed;

 Bird ()
 {
   super(mouseX, mouseY, 30,0);
   speed = random(-2,2);
   
 }
 
 void update()
 {
   pos.x += speed;
   removeBird();
 }
 
 void render()
 {
   pushMatrix();
   translate(pos.x,pos.y);
   noStroke();
   fill(255,0,0);
   if(speed > 0.1) //Check if bird go right, draw the right facing one
   {
   ellipse(0,0,radius,radius);
   ellipse(20,0,radius/2,radius/2);
   }
   if(speed < -0.1) //Check if bird go left, draw the left facing one
   {
   ellipse(0,0,radius,radius);
   ellipse(-20,0,radius/2,radius/2);
   }
   popMatrix();
 }
 
 void removeBird()
 {
  if (pos.x + 30 < 0 || pos.x - 30 > width)
   {
   gameObjects.remove(bird);
   } 
 }
}