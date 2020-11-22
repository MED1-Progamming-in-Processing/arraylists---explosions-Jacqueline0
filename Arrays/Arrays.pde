//Code made from an example in class

public int iCLICK;

ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(600, 600);
}

//creates displayed "items" before they are displayed
void mousePressed(){
  for(int i = 0; i < 100; i++){
    circles.add(new Circle(mouseX, mouseY));   
  }
  
//checks what icon it should display the item as
  if(iCLICK >= 3){
      iCLICK = 0;
    }
      iCLICK = iCLICK + 1;  
}

void draw() {
  background(#6F4343);
  //runs the .move and .display function for all "items"
  for (int i = circles.size()-1; i >= 0; i--) {
    circles.get(i).move();
    circles.get(i).display();
  //remove (i) "item" from list if it is of screen   
    if(circles.get(i).isOffScreen()){
      circles.remove(i);
    }
  }
}
