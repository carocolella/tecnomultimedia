int pantalla =1;
PImage sad;
PImage happy;
PFont font;
PFont font2;
color colorinicio=#FFBC00;
color colorperdiste=#FF0033;
color colorganaste=#14FF00;
color colorpreg=#FACBFF;
int cred=5;
void setup() {
  size (900, 900);
  rectMode(CENTER);
  textAlign(CENTER);
  imageMode(CENTER);
  noStroke();
  happy= loadImage("happy.png");
  sad= loadImage("sad.png");
  font=loadFont("CourierNewPS-BoldMT-48.vlw");
  font2=loadFont("CourierNewPS-BoldMT-20.vlw");
}

void draw() {

  background(0);

  //PANTALLA INICIO
  if (pantalla==1) {
    fill(255);  
    textFont(font);
    text("CARRERA DE PREGUNTAS", 450, 250);
    fill(colorinicio);
    rect(450, 550, 250, 90);
    fill(255);
    textFont(font);
    text ("EMPEZAR", 450, 560);
  }

  //PANTALLA PERDISTE
  if (pantalla==2) {
    fill(255);  
    textFont(font);
    text("PERDISTE", 450, 250);
    fill(colorperdiste);
    rect(450, 550, 250, 90);
    fill(255);
    textFont(font);
    text ("INICIO", 450, 560);
    image(sad, 450, 400, 100, 100);
    fill(255);
    rect(700, 750, 200, 100);
    fill(0);   
    textFont(font2);
    text("CREDITOS", 700, 750);
  }

  //PANTALLA GANASTE
  if (pantalla==3) {
    fill(255);  
    textFont(font);
    text("GANASTE", 450, 250);
    fill(colorganaste);
    rect(450, 550, 250, 90);
    fill(255);
    textFont(font);
    text ("INICIO", 450, 560);
    image(happy, 450, 400, 100, 100);
    fill(255);
    rect(700, 750, 200, 100);
    fill(0);
    textFont(font2);
    text("CREDITOS", 700, 750);
  }

  //PRIMERA PREGUNTA
  if (pantalla==4) {
    fill(255);  
    textFont(font2);
    text("¿En qué ciudad vivía el Mago de Oz?", 450, 250);
    fill(colorpreg);
    rect(300, 550, 250, 90);
    rect(600, 550, 250, 90);
    fill(0);
    textFont(font2);
    text ("CIUDAD ESMERALDA", 300, 560);
    text ("CIUDAD RUBI", 600, 560);
  }
  
  //SEGUNDA PREGUNTA
  if (pantalla==5) {
    fill(255);  
    textFont(font2);
    text("¿En qué lado del cuerpo está el hígado?", 450, 250);
    fill(colorpreg);
    rect(300, 550, 250, 90);
    rect(600, 550, 250, 90);
    fill(0);
    textFont(font2);
    text ("IZQUIERDO", 300, 560);
    text ("DERECHO", 600, 560);
  }
  
  //TERCERA PREGUNTA
  if (pantalla==6) {
    fill(255);  
    textFont(font2);
    text("¿Cuántos rounds hay en un combate de boxeo olímpico?", 450, 250);
    fill(colorpreg);
    rect(300, 550, 250, 90);
    rect(600, 550, 250, 90);
    fill(0);
    textFont(font2);
    text ("CUATRO", 300, 560);
    text ("TRES", 600, 560);
  }
  
   //CUARTA PREGUNTA
  if (pantalla==7) {
    fill(255);  
    textFont(font2);
    text("¿Cuál es la montaña más alta del mundo?", 450, 250);
    fill(colorpreg);
    rect(300, 550, 250, 90);
    rect(600, 550, 250, 90);
    fill(0);
    textFont(font2);
    text ("EVEREST", 300, 560);
    text ("ACONCAGUA", 600, 560);
  }
  
  //QUINTA PREGUNTA
  if (pantalla==8) {
    fill(255);  
    textFont(font2);
    text("¿Con qué nombre firmaba Vincent Van Gogh sus pinturas?", 450, 250);
    fill(colorpreg);
    rect(300, 550, 250, 90);
    rect(600, 550, 250, 90);
    fill(0);
    textFont(font2);
    text ("VAN GOGH", 300, 560);
    text ("VINCENT", 600, 560);
  }
  
  //SEXTA PREGUNTA
  if (pantalla==9) {
    fill(255);  
    textFont(font2);
    text("¿Cuál era la ciudad hogar de Marco Polo?", 450, 250);
    fill(colorpreg);
    rect(300, 550, 250, 90);
    rect(600, 550, 250, 90);
    fill(0);
    textFont(font2);
    text ("VENECIA", 300, 560);
    text ("ROMA", 600, 560);
  }
  
  if(pantalla==10){
    cred-=3;
    fill(255);
    textFont(font2);
    text("Producer and project director", 450, 900+cred);
    text("CAROLINA COLELLA", 450, 925+cred);
    text("Lead Programmer", 450, 1000+cred);
    text("CAROLINA COLELLA", 450, 1025+cred);
    text("Lead Designer", 450, 1100+cred);
    text("CAROLINA COLELLA", 450, 1125+cred);
    
    fill(255);
    rect(700, 750, 200, 100);
    fill(0);   
    textFont(font2);
    text("INICIO", 700, 750);
   
  }
}

void mouseClicked() {

  //PANTALLA INICIO
  if (pantalla==1) {

    //BOTON EMPEZAR
    if (mouseX>325 && mouseX<575 && mouseY>520 && mouseY<610) {
      pantalla=4;
    }
  }

  //PANTALLA PERDISTE
  else if (pantalla==2) {
    //BOTON INICIO
    if (mouseX>325 && mouseX<575 && mouseY>520 && mouseY<610) {
      pantalla=1;
    } 
    //BOTON CREDITOS
    else if (mouseX>600 && mouseX<800 && mouseY>700 && mouseY<800) {
      pantalla=10;
    }
  }
  //PANTALLA GANASTE
  else if (pantalla==3) {
    //BOTON INICIO
    if (mouseX>325 && mouseX<575 && mouseY>520 && mouseY<610) {
      pantalla=1;
    } 
    //BOTON CREDITOS
    else if (mouseX>600 && mouseX<800 && mouseY>700 && mouseY<800) {
      pantalla=10;
    }
  } 
  //PRIMERA PREGUNTA
  else if (pantalla==4) {
    if (mouseX>175 && mouseX<425 && mouseY>520 && mouseY<610) {
      pantalla=5;
    } else if (mouseX>475 && mouseX<725 && mouseY>520 && mouseY<610) {
      pantalla=2;
    }
  }
  
  //SEGUNDA PREGUNTA
  else if (pantalla==5){
  if (mouseX>175 && mouseX<425 && mouseY>520 && mouseY<610) {
      pantalla=2;
    } else if (mouseX>475 && mouseX<725 && mouseY>520 && mouseY<610) {
      pantalla=6;
    }
  }
  
  //TERCERA PREGUNTA
  else if (pantalla==6){
  if (mouseX>175 && mouseX<425 && mouseY>520 && mouseY<610) {
      pantalla=2;
    } else if (mouseX>475 && mouseX<725 && mouseY>520 && mouseY<610) {
      pantalla=7;
    }
  }
  
  //CUARTA PREGUNTA
  else if (pantalla==7){
  if (mouseX>175 && mouseX<425 && mouseY>520 && mouseY<610) {
      pantalla=8;
    } else if (mouseX>475 && mouseX<725 && mouseY>520 && mouseY<610) {
      pantalla=2;
    }
  }
  
  //QUINTA PREGUNTA
  else if (pantalla==8){
  if (mouseX>175 && mouseX<425 && mouseY>520 && mouseY<610) {
      pantalla=2;
    } else if (mouseX>475 && mouseX<725 && mouseY>520 && mouseY<610) {
      pantalla=9;
    }
  }
  
  //SEXTA PREGUNTA
  else if (pantalla==9){
  if (mouseX>175 && mouseX<425 && mouseY>520 && mouseY<610) {
      pantalla=3;
    } else if (mouseX>475 && mouseX<725 && mouseY>520 && mouseY<610) {
      pantalla=2;
    }
  }
  
  //PANTALLA CREDITOS
  else if (pantalla==10) {
    //BOTON INICIO
   if (mouseX>600 && mouseX<800 && mouseY>700 && mouseY<800) {
      pantalla=1;
    }
  }

}
