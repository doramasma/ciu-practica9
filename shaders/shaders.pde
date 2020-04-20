//import gifAnimation.*;

//int counter = 0;
//GifMaker ficherogif;

PShader sh;
PImage bg,imageUp,imageDown,imageMouse,imageEnter,imageRueda;
float [] puntos = new float[4];
PFont font1;
boolean status;
int puntosAux;
float circleSize;



void setup() {
  size(600, 600, P2D);
  noStroke();
  status = false;
  puntosAux = 0;
  circleSize = 10;
  puntos[0] = width/2;
  puntos[1] = height/2;
  loadImages();
  font1 = loadFont("OCRAExtended-48.vlw");
  
  //ficherogif = new GifMaker( this , "animacion.gif") ;
  //ficherogif.setRepeat(0);
 
}


void draw() {
  
  if (status == false) {
    background(0);
    resetShader();
    textFont(font1, 20);

    image(imageRueda, 40, 40, 70, 70);
    text("Increase or decrease size of circle", 135, 90 );

    image(imageMouse, 40, 140, 70, 70);
    text("Select the circle location  ", 135, 190 );
    
    image(imageEnter, 40, 250, 70, 60);
    text("Press Enter to resume o pause", 135, 285 );
    
  } else if (status == true) {
    background(bg);
    sh.set("u_resolution", float(width), float(height));
    sh.set("u_time", millis() / 1000.0);
    shader(sh);
    circle(puntos[0],puntos[1],circleSize);
    capturarPuntos();
  }
  
  //ficherogif.addFrame();
}

void loadImages() {
  bg = loadImage("starWars.jpg");
  sh = loadShader("shader.glsl");
  imageMouse = loadImage("./image/click.png");
  imageEnter = loadImage("./image/enter.png");
  imageRueda = loadImage("./image/rueda.png");
}

void capturarPuntos() {
  if (mousePressed) {
    puntos[0] = mouseX;
    puntos[1] = mouseY;

    }
}

void keyPressed() {
  if (keyCode == ENTER) status = !status;
 
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(e>0){
    if (circleSize - 10 > 0) {
      circleSize -= 10;
    }
    
  }else{
      circleSize += 10;
  }

}
