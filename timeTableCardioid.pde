float totalPoints = 500;
int factor = 4;
float r;



PVector getVector(int index){
  float angle = map(index % totalPoints, 0, totalPoints, 0, TWO_PI);
  PVector v = PVector.fromAngle(angle + PI);
  v.mult(r);
  return v;
}

void setup() {
  size(640, 640);
  r = width / 2 - 16;
}

void draw() {
  background(0);
  
  float radius = width / 2;
  
  translate(width/2, height/2);
  stroke(255);
  noFill();
  circle(0, 0, radius*2);

  for (int i = 0; i < totalPoints; i++) {
    PVector v = getVector(i);
    fill(255);
    circle(v.x, v.y, 16);
  }
  
  for (int i = 0; i < totalPoints; i++) {
    PVector a = getVector(i);
    PVector b = getVector(i * factor);
    line(a.x, a.y, b.x, b.y);
  }
  
  

}
