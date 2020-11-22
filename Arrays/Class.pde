class Circle {

  float x;
  float y;
  float xSpeed = random(-5, 5);
  float ySpeed = random(-5, 5);
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
  }

  
  void move() {

    ySpeed = ySpeed + 0.3;

    x += xSpeed;
    y += ySpeed;
  }

  void display() {
    if(iCLICK == 1) {
    ellipse(x, y, 30, 30);
    }
    else if(iCLICK == 2) {
    rect(x, y, 30, 30);
    }
    else if(iCLICK == 3) {
    triangle(x, y, x + 30, y + 30, x -30, y + 30);
    }
  }
  
  boolean isOffScreen(){
    return x < 0 || x > width || y < 0 || y > height;
  }
}
