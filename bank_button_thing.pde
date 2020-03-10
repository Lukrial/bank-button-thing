float bankKonto1;
float bankKonto2;
button button1 = new button(100, 100, 100, 50, "+100kr");
button button2 = new button(250, 200, 100, 50, "-100kr");
button button3 = new button(250, 100, 100, 50, "+100kr");
button button4 = new button(100, 200, 100, 50, "-100kr");
void setup() {
  size(500, 500);
}
void draw() {
  clear();
  fill(0, 100, 0);
  button1.drawButton();
  fill(100, 0, 0);
  button2.drawButton();
  fill(0, 100, 0);
  button3.drawButton();
  fill(100, 0, 0);
  button4.drawButton();
  button1.pressButton();
  button2.pressButton();
  button3.pressButton();
  button4.pressButton();


  fill(255, 255, 255);
  text("Konto #1", 100, 350);
  fill(255, 255, 255);
  rect(100, 400, 100, 50);
  fill(255, 255, 255);
  text("Konto #2", 250, 350);
  fill(255, 255, 255);
  rect(250, 400, 100, 50);
  fill(0, 0, 0);
  text(bankKonto1+"kr", 120, 430);
  text(bankKonto2+"kr", 270, 430);
}
void mouseClicked() {
  if (button1.buttonPressed) {
    bankKonto1 +=100;
  } 
  if (button2.buttonPressed) {
    bankKonto2 -=100;
  } 
  if (button3.buttonPressed) {
    bankKonto2 +=100;
  } 
  if (button4.buttonPressed) {
    bankKonto1 -=100;
  }
}
