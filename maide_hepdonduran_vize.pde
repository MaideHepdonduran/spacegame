// Jhon McCaffreyin projelerinden yararlanılmıştır.
//

String gameState;
PFont f;
long puan = 0;
int can = 3;
int shipX = 50;
int shipY = 300;

PImage ship;




Drop[] drops = new Drop[40];

void setup() {
  size(800, 600);
  printArray(PFont.list());
  f = createFont("SansSerif.vlw",40);
 textFont(f);
  textAlign(LEFT,TOP);
  
  ship = loadImage("uzaymekiği.png");
  
  //goktaslarini loopa sokmak için
  for (int i = 0; i < drops.length; i++) {
  drops[i] = new Drop();
  }
  gameState = "START";
}
void draw() {
  background(255);
  clearBackground();
  if (gameState == "START") {
    startGame();
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState ==" WIN") {
    winGame();
  } else if (gameState == "LOSE") {
    loseGame();
  }
  for(int i=0;i<drops.length;i++){
    if(drops[i].carpisma(shipX,shipY,150/2,150/2)){
      can--;
    }
  }
}

void startGame() {
 textAlign(CENTER);
 textSize(20);
 fill(0);
 text("Başlamak için tıkla!", width/2,height/2);
 //tıklama için
 if(mousePressed == true) {
 gameState = "PLAY";
 }
}
void playGame() {
  background(29,29,29);
  //can ve puan
  textFont(f);
  String puanText = "Puan: "+puan;
  text(puanText, 65, 45);
  text("Can: "+can,55,80);
  
  if(can<=0){
   gameState = "LOSE"; 
  }
  //sahne
  for (int i = 0; i < drops.length; i++) {
  drops[i].show(); 
  drops[i].fall();
  }
  //imageMode(CENTER);
  image(ship,shipX,shipY,150/2,150/2);
  
  

    gameState = "PLAY";
  }
  
  
  
 
 


void winGame() {
}
void loseGame() {
}
void resetGame() {
}
void clearBackground() {
}
void keyPressed(){
 if(keyCode == RIGHT){
 shipX+= 10;
 }
 if(keyCode == LEFT){
   shipX-=10;
 }
 if(keyCode == DOWN){
   shipY+=10;
 }
 if(keyCode == UP){
   shipY-=10;
 }
}
