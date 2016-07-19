PImage img,img1;
Maxim maxim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;
int i,smallPt,largePt,released=1;
void setup()
{
  size(640,480);
  img=loadImage("flower3.jpg");
  img1=loadImage("text.gif");
  
  smallPt=15;
  largePt=75;
  maxim = new Maxim(this);
  player = maxim.loadFile("atmos1.wav");
  player.setLooping(true);
  player2 = maxim.loadFile("bells.wav");
  player2.setLooping(true);
  player3 = maxim.loadFile("beats.wav");
  player3.setLooping(true);
  player.volume(2);
  player2.volume(2);
  player3.volume(1);
  background(0);
  
  imageMode(CENTER);
  rectMode(CENTER);

}

void draw()
{
//
}

void mouseDragged()
{
  player3.stop();
  player.play();
  player2.play();
  float red = map(mouseY, 0, height, 0, 255);
  float blue = map(mouseX, 0, width, 0, 255);
  float green = dist(mouseX,mouseY,width/2,height/2);
  
  float speed = dist(pmouseX, pmouseY, mouseX, mouseY);
  float alpha = map(speed, 0, 15, 0, 12);

  float lineWidth = map(speed, 0, 15, 12, 1);
  lineWidth = constrain(lineWidth, 0, 11);
  
  noStroke();
  fill(random(150),random(60),random(70), alpha);
  rect(width/2, height/2, width, height);
  
  stroke(red, green, blue, 128);
  strokeWeight(lineWidth);
  
  if(released==1)
  {
  magic1(pmouseX, pmouseY,mouseX, mouseY,lineWidth);
  }
  if(released==2)
  {
  magic2(pmouseX, pmouseY,mouseX, mouseY,lineWidth);
  }
  if(released==3)
  {
  magic3(pmouseX, pmouseY,mouseX, mouseY,lineWidth);
  }
  if(released==4)
  {
  magic4(pmouseX, pmouseY,mouseX, mouseY,lineWidth);
  }
  if(released==5)
  {
  magic5(pmouseX, pmouseY,mouseX, mouseY,lineWidth);
  }
  player.setFilter((float) mouseY/height*5000,mouseX / width);
 
  
  player2.ramp(1.,1000);
  player2.speed((float) mouseX/width/2);
}

void mouseReleased()
{
background(0);
if(released>5)
{
released=1;
}
else
{
released++;
}
image(img1,width/2,height/2);
player.stop();
player2.stop();
player3.play();
 
 
for(i=0;i<20;i++)
{
float point1=map(mouseY,0,height,smallPt,largePt);
int x=int(random(img.width));
int y=int(random(img.height));
color pixel=img.get(x,y);

fill(pixel,120);

ellipse(random(width),random(height),point1,point1);

}
}

