
String credits = 
  "Deeply Fishy\n"+
  "Made at Graffathon 2018\n"+
  "by\n"+
  "FractalPixel\n"+
  "and\n"+
  "Shiera\n"+
  "\n"+
  "Music:\n"+
  "\"Final Battle of the Dark Wizards\" \nby \nKevin MacLeod (incompetech.com)\n"+
  "Licensed under Creative Commons: \nBy Attribution 3.0 License\n"+
  "\n";
  
class Scroller {
  
  float yPos = 1000;
  PFont font;
  float creditsTime = 2f * 60f;
  
  Scroller() {
    String fontName = "Cinzel-Regular.ttf";    
    font = createFont(fontName,128);
    textFont(font);
    textMode(SHAPE);
  }
  
  void render(float time, float deltaTime) {
    float scrollSpeed = (float) moonlander.getValue("creditScrollSpeed");
    if (scrollSpeed > 0) {
     
      yPos -= deltaTime*200f * scrollSpeed;
      fill(255, 255, 255);
      textAlign(CENTER, TOP);
      pushMatrix();
      scale(0.01f);
      text(credits, 0, yPos, 200);
      popMatrix();
    }
  }
}
