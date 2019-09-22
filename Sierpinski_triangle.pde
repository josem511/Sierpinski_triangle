//int a = 0;
//int b = 1;
float c = 0;
float d = 0;
void setup() {
  size(720, 540); //(width, (3/4) * width)
  background(255, 255, 0);
  noLoop();
}

void draw() {
//  background(frameCount, frameCount, 0, frameCount/2); //RGB(red+green = yellow) and Hue(increases). 
  drawCircle(width/2, width/2, width/2); //x,y(center),radius(half of width)
//  b = b + frameCount;
  //if(a < b)
    saveFrame("Sierpinski_triangle_movie_thirdTry/bubble_####.png"); //save each frame in folder
}

void drawCircle(float x, float y, float radius) {
  // Scale the radius value from 0 to half of the width(radius of 1st Gen) to a range between 0 and 255
  c = map(radius, 0, width/2, 0, 175);

  // Scale the radius value from 0 to 1/8 of the width(radius of 3rd Gen) to a range between 0 and 255
  d = map(radius, 0, width/8, 175, 255);

  if (radius > width/8)
    fill(0, 0, c);
  else
    fill(d,0, 0);
  ellipse(x, y, radius, radius);
  
//  a++;
  //if (a < b) {
    if (radius > 3) {
      drawCircle(x + radius/2, y, radius/2);
      drawCircle(x - radius/2, y, radius/2);
      drawCircle(x , y - radius/2, radius/2);
      //drawCircle(x , y + radius/2, radius/2);
    }
  //}
}

void mousePressed()
{
  loop();
}
