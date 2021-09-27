PImage[] jotaro = new PImage[14]; //tryed to add gif, too hard
PImage car; //images
PImage cloud;
PImage image;                 //note i cant figure out on how to bring the car and clouds in front of the background
PImage image2;
PImage image3;
PImage image4;
float x; //variables
float y;
float speed_xaxis = 5;
int var= 100;
float cloud1x= random(50, 900); //randomly placed car and cloud's coordinates
float cloud1y= random(50, 250);
float cloud2x= random(50, 900);
float cloud2y= random(50, 250); 
float carx= random(50, 500 );
float cary= random(500, 700);

void setup()
{
  size(1000,700,P2D); //size of screen
  image = loadImage("Background.jpg"); //upload images
  image2 = loadImage("Background2.jpg");
  image3 = loadImage("Background3.jpg");
  image4 = loadImage("Background4.jpg");
  cloud = loadImage("Cloud.jpg");
  car = loadImage("car.png");
  x = width/2; //decrease width and height by dividing it by 2
  y = height/2;
  imageMode(CENTER); //center

}

void draw() //so the clouds dont spawn on top of eachother
{
    if(cloud1x == cloud2x)
  {
    cloud1x = cloud1x+500;
  }
   if(cloud1y == cloud2y)
  {
    cloud2y = cloud2y+500;
  }
background(155); //background is set at 155
image(cloud, cloud1x, cloud1y, width/7,height/7); //place images
image(cloud, cloud2x, cloud2y, width/7,height/7);
image(car, carx, cary, width/7,height/7);
image(image,var,y,1000,700);
image(image2,(x+width/2)+var,y,1000,700);
image(image3,(4*x+width/2)+var,y,1000,700);
image(image4,(3*x+width/2)+var,y,1000,700);
var = var - 1; //used as a way for the background to move
}
