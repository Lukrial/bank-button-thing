class button {
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  String text;
  float textPosX;
  float textPosY;
  boolean buttonPressed = false;


  button(float posXTemp, float posYTemp, float sizeXTemp, float sizeYTemp, String textTemp) {
    posX = posXTemp;
    posY = posYTemp;
    sizeX =sizeXTemp;
    sizeY =sizeYTemp;
    text = textTemp;
  }
  void drawButton() {
    textPosX = posX +20;
    textPosY = posY +30;
    textSize(20);
    rect(posX, posY, sizeX, sizeY);
    fill(255, 255, 255);
    text(text, textPosX, textPosY);
  }
  void pressButton() {
    if (mouseX>posX && mouseX<posX +sizeX && mouseY >posY && mouseY<posY+sizeY&& mousePressed ==true) {
      buttonPressed = true;
    } else {
      buttonPressed = false;
    }
  }
}
