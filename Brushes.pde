//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies



void magic1(float x,float y, float px,float py,float lineWidth)
{
   strokeWeight(lineWidth);
   ellipse(x+px,y+py,px,py);
   ellipse(x-px,y-py,px,py);
   ellipse(x+px,y+py,px/2,py/2);
  line(width/2+((width/2)-px),py,width/2+((width/2)-x),y);
  line(px,height/2+((height/2)-py),x,height/2+((height/2)-y));
  line(width/2+((width/2)-px),height/2+((height/2)-py),width/2+((width/2)-x),height/2+((height/2)-y));
  line(width/2+((width/2)-py),width/2-((width/2)-px),width/2+((width/2)-y),width/2-((width/2)-x));
   
}

void magic2(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  pushMatrix();
  translate(x,y);
  rotate(random(px));
  ellipse(0+random(75),0+random(50),30,30); 
  translate(x,y);
  rotate(random(px));
  ellipse(0+random(50),0+random(75),50,20); 
  popMatrix();
  return;
}

void magic3(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  line(px,py,x,y);
  line(px,height/2+(height/2-py),x,height/2+(height/2-y));
  return;
}

void magic4(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  pushMatrix();
  translate(x,y);
  rotate(random(px));
  line(0+random(50),0+random(50),0,0);
  rotate(random(px));
  rect(0+random(50),0+random(50),0,0);
  rotate(random(py));
  line(0+random(50),0+random(50),0,0);
  rotate(random(px));
  rect(0+random(50),0+random(50),0,0);
  popMatrix();

  return;
}

void magic5(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
 ellipse(mouseX,mouseY,50,50);
 line(width/2+((width/2)-px),py,width/2+((width/2)-x),y);
 line(px,height/2+((height/2)-py),x,height/2+((height/2)-y));
line(width/2+((width/2)-px),height/2+((height/2)-py),width/2+((width/2)-x),height/2+((height/2)-y));
 line(width/2+((width/2)-py),width/2-((width/2)-px),width/2+((width/2)-y),width/2-((width/2)-x));
 line(height/2-((height/2)-py),width/2-((width/2)-px),height/2-((height/2)-y),width/2-((width/2)-x));
 line(width/2+((width/2)-py),height/2+((height/2)-px),width/2+((width/2)-y),height/2+((height/2)-x));
  line(width/2-((width/2)-py),height/2+((height/2)-px),width/2-((width/2)-y),height/2+((height/2)-x));
  return;
}

