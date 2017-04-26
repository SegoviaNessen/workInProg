int counter;

void setup() {
  background(0);
  size(800, 600,P3D);
  frameRate(120);
  counter = height;
  stroke(116,235,250);
  strokeWeight(3);
  smooth();
}

void draw() {
  fill(0,120);
  rect(0,0,width,height);
  counter -=5;
  line(0, counter, width, counter);
  line(0,counter+50,width, counter+50);
  line(0,counter+100,width, counter+100);
  
  line(0, counter+150, width, counter+150);
  line(0,counter+200,width, counter+200);
  //line(0,counter+400,width, counter+400);
  println(counter+" "+ frameRate);
  
  
  
  if (counter == 5) {
    counter = height;
  }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    counter = 0;
    //videoPlay
  } else if(mouseButton == LEFT){
    counter = height; //un juego
  }
}