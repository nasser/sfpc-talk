int slide = 0;
PFont helvetica, georgia;

float signedNoise(float x, float y, float z) { return (noise(x, y, z) - 0.5) * 2; }
float signedNoise(float x, float y) { return signedNoise(x, y, 0); }
float signedNoise(float x) { return signedNoise(x, 0, 0); }

void setup() {
  size(500, 500);
  helvetica = createFont("Helvetica", 16, true);
  georgia = createFont("Georgia", 26, true);
}

void draw() {
  int x = 0;
  background(255);
  textAlign(CENTER, CENTER);
  switch(slide) {
    case 0:
      background(noise(0, millis() * 0.001), noise(1, millis() * 0.005) * 255, noise(2, millis()*0.002) * 255 );
      textFont(helvetica, 36);
      fill(255);
      text("PROCESSING", noise(7, millis() * 0.001) * width, noise(6, millis() * 0.001) * height);
      text("PROCESSING", noise(10, millis() * 0.001) * width, noise(11, millis() * 0.001) * height);
      text("PROCESSING", noise(12, millis() * 0.001) * width, noise(13, millis() * 0.001) * height);
      text("FUCK YEAH", noise(8, millis() * 0.001) * width, noise(9, millis() * 0.001) * height);
      text("I AM UNSTOPPABLE", noise(13, millis() * 0.001) * width, noise(14, millis() * 0.001) * height);
      break;
    case 1:
      textFont(georgia, 56);
      fill(0);
      text("This was a\ngame changer", width/2, height/2);
      break;
    case 2:
      textFont(georgia, 56);
      fill(0);
      text("For the first time\ncode was a medium", width/2, height/2);
      break;
    case 3:
      textFont(georgia, 56);
      fill(0);
      text("Medium", width/2 + sin(millis() * 0.01) * 50, height/2);
      break;
    case 4:
      textFont(georgia, 36);
      fill(0);
      translate(width/2, height/2);
      rotate(millis() * 0.005);
      text("Code is a medium you guys", 0, 0);
      break;
    case 5:
      textFont(georgia, 30);
      fill(0);
      String s = "(protip: use sine waves everywhere)";
      x = (int)(width/2 - textWidth(s)/2);
      for (int i = 0; i < s.length(); i++){
          String c = s.substring(i,i+1);        
          text(c, x, height/2 + sin(millis() * 0.01 + i*0.25) * 25);
          x += textWidth(c);
      }
      break;
    case 6:
      textFont(georgia, 56);
      fill(0);
      text("The tools felt right", width/2, height/2);
      break;
    case 7:
      textFont(georgia, 56);
      fill(0);
      text("Made with\npeople in mind", width/2, height/2);
      break;
    case 8:
      textFont(georgia, 56);
      fill(0);
      text("Done and done", width/2, height/2);
      break;
    case 9:
      textFont(georgia, 56);
      fill(0);
      text("Weren't perfect", width/2, height/2);
      break;
    case 10:
      textFont(georgia, 56);
      fill(0);
      text("Processing is\nfrustrating", width/2, height/2);
      break;
    case 11:
      textFont(georgia, 56);
      fill(0);
      text("openFrameworks is\nfrustrating", width/2, height/2);
      break;
  }
}

void keyPressed() {
  if(keyCode == LEFT) {
    slide--;
  } else if(keyCode == RIGHT) {
    slide++;
  }
}

