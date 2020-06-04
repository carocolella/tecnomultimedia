PFont fuente;
PFont fuente2;
PFont fuente3;
int anchocirc = 550;
int altocirc = 400;
int alpha = 255;
PImage sadnessjoy;
PImage angerdisgustfear;
int xcirc2 = 0;
int ycirc2 = 0;
PImage directed;
int imgtint;
int posxtext = 50;
int cuad = 0;
PImage music;
int imgtint2;
int posxtext2 = 300;
int alpha2 = 0;
int posxtext3 = 300;
int altorect =0;
int altorect2 =0;
int alpha3 = 0;

void setup() {
  size(1000, 600);
  fuente = loadFont("FranklinGothic-DemiCond-150.vlw");
  fuente2 = loadFont("FranklinGothic-DemiCond-48.vlw");
  fuente3 = loadFont("FranklinGothic-DemiCond-70.vlw");
  sadnessjoy = loadImage("sadnessjoy.png");
  angerdisgustfear = loadImage("angerdisgustfear.png");
  directed = loadImage("directed.jpg");
  music = loadImage("music.jpg");
  imageMode(CENTER);
}

void draw() {
  rectMode(CORNER);
  noStroke();
  fill(#20C632);
  rect(0, 0, 200, 600);
  fill(#D17CE3);
  rect(200, 0, 200, 600);
  fill(#FFEA00);
  rect(400, 0, 200, 600);
  fill(#8CD9E3);
  rect(600, 0, 200, 600);
  fill(#FC2B2B);
  rect(800, 0, 200, 600);

  fill(255, 240);
  ellipse(width/2, 200, anchocirc, altocirc);
  fill(10, alpha);
  textFont(fuente);
  textAlign(CENTER);
  text("Inside\nOut", width/2, 180);

  anchocirc = anchocirc-10;
  altocirc = altocirc-10;
  alpha = alpha-5;

  fill(0);
  ellipse(500, 300, xcirc2, ycirc2);

  if ((anchocirc<=0) && (altocirc<=0)) {
    anchocirc = 0;
    altocirc = 0;
    xcirc2=xcirc2+50;
    ycirc2=ycirc2+50;
    imgtint=imgtint+30;
    posxtext= posxtext+2;
  }

  tint(255, imgtint);
  image(directed, width/2, height/2, width, height);
  textAlign(CORNER);
  textFont(fuente2);
  fill(255, imgtint);
  text("Directed by", posxtext, 400);
  textFont(fuente3);
  fill(255, imgtint);
  text("PETE DOCTER", posxtext, 475);

  if (posxtext>=75) {
    cuad=cuad+50;
    imgtint2=imgtint2+30;
    posxtext2= posxtext2+2;
  }

  fill(0);
  ellipse(width/2, height/2, cuad, cuad);
  tint(255, imgtint2);
  image(music, width/2, height/2, width, height);
  textAlign(CORNER);
  textFont(fuente2);
  fill(255, imgtint2);
  text("Music by", posxtext2, 100);
  textFont(fuente3);
  fill(255, imgtint2);
  text("MICHAEL GIACCHINO", posxtext2, 175);

  if (posxtext2>=325) {
    alpha2=alpha2+30;
    altorect=altorect+50;
  }
  rectMode(CORNER);
  fill(#FFEA00);
  rect(0, 0, width/2, altorect);
  fill(#8CD9E3);
  rect(width/2, 0, width/2, altorect);
  tint(255, alpha2);
  image(sadnessjoy, width/2, height/2, 250, 500);

  textAlign(CENTER);
  textFont(fuente3);
  fill(255, alpha2);
  text("Amy Poehler", 250, 250);
  textFont(fuente2); 
  text("as JOY", 250, 325);
  textFont(fuente3);  
  text("Phyllis Smith", 750, 250);
  textFont(fuente2);
  text("as SADNESS", 750, 325);

  if (altorect>=600) {
    alpha3=alpha3+30;
    altorect2=altorect2+50;
  }

  fill(#20C632);
  rect(0, 0, 300, altorect2);
  fill(#FC2B2B);
  rect(300, 0, 400, altorect2);
  fill(#D17CE3);
  rect(700, 0, 300, altorect2);
  tint(255, alpha3);
  image(angerdisgustfear, width/2, height/2, 550, 500);

  textAlign(CENTER);
  textFont(fuente3);
  fill(255, alpha3);
  text("Mindy Kaling", 150, 275);
  textFont(fuente2); 
  text("as DISGUST", 150, 350);
  textFont(fuente3);  
  text("Lewis Black", width/2, 500);
  textFont(fuente2);
  text("as ANGER", width/2, 575);
  textFont(fuente3);  
  text("Bill Hader", 850, 275);
  textFont(fuente2);
  text("as FEAR", 850, 350);
}
