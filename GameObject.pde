class GameObject
{
  PVector pos;
  PVector forward;
  float radius;
  float theta;
 GameObject(float x, float y, float radius, float theta)
 {
   pos = new PVector(mouseX,mouseY);
   forward = new PVector(0,0);
   this.radius = radius;
   this.theta = theta;
 }
 
 void update()
 {
   
 }
 
 void render()
 {
   
 }
  
}