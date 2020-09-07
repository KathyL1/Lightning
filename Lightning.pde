int startX = (int)(Math.random()*301);
int startY = 0;
int endX = 150;
int endY = 0;
PImage img;
PImage img2;

void setup()
{
  // This is a setup
  size(300,300);
  background(198, 219, 215);
  img = loadImage("nightsky.jpg");
  image (img, 0, 0);
  img2 = loadImage("clouds.png");
  image(img2, 0, 0);

}
void draw()
{

  image(img2, 0, 0);

  strokeWeight(3);
  stroke(249,255,100);
  while(endY < 301)
  {
   endX = startX + ((int)(Math.random()*40)-20);
   endY = startY + ((int)(Math.random()*20));
   line(startX, startY, endX, endY);
   startX = endX;
   startY = endY;
  }
}
void mousePressed()
{
   startX = (int)(Math.random()*301);
   startY = 0;
   endX = 150;
   endY = 0;
   background(200, 10);
   image (img, 0, 0);
  image(img2, 0, 0);


}
