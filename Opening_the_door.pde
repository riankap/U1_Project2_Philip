/*This project is about opening a door, closing a door, and finding treasure*/
int x=350;
int y=300;
PImage dooor;
int textState = 0;


void setup()
{
  size(800, 800);   
  dooor=loadImage("dooor.png");
}
void draw()
{
  background(203, 239, 245);
  image(dooor, x, y);
  x=x+5;
  if (x>800)
  {
    x=0;
  }
  
if(textState==0)
{
  textSize(80);
fill(121, 117, 111);   // Fill color brown
  text("Open", 50, 200);
  fill(198, 196, 192); // Fill color silver
  text("the", 350, 200);
  fill(255); // Fill color white
  text("Door.", 550, 200);
}

 if(textState==1)
 {
     textSize(80);
 text("Opened", 300, 200);
  fill(0, 0, 0); // Fill color silver
 }
  if(textState==2)
  {
      textSize(75);

 text("YOU WON THE GOLD!", 10, 200);
   fill(222, 198, 65); // Fill color gold

}
  
}


void keyPressed()
{
  if (key=='a')
  {
    dooor=loadImage("dooor.png");
     textState=0;
  }
  
  if (key=='s')
  {
    dooor=loadImage("dooorcopy.png");
     textState=1;
  }
  
  
  if (key=='d')
  {
    dooor=loadImage("tc.png");
     textState=2;

  }
}