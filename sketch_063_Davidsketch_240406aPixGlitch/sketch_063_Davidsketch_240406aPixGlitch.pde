Draw p = new Draw();
PVector sel = new PVector(0, 0);
Button erase = new Button(964, 975, "erase");
Button eraser = new Button(874, 970, "eraser");
Button normal = new Button(846, 970, "normal");
Button glitch = new Button(818, 970, "glitch");
Button oval = new Button(787, 970, "oval");
Button rectangle = new Button(758, 970, "rectangle");
Button sine = new Button(726, 970, "sine");
Button WD = new Button(901, 970, "WD");


void setup() {
  size(1000, 1000);
  strokeCap(PROJECT);
}

void draw() {

  sel.set(mouseX, mouseY);
  background(255, 100*(1/sin(frameCount/189.09)), 100*(1/cos(frameCount/189.09)));


  pushMatrix();
  stroke(0);
  translate(500, 500);
  rotate(0.01*sin(2*frameCount/99.009));
  translate(-500, -500);

  p.pixelColor(color(255*norm(sin(frameCount/50.09),-1,1)));
  noStroke();
  fill(0, 255*(1/cos(frameCount/89.09)), 255*(1/tan(frameCount/89.09)));
  rect(0, -60, 960, 120);
  rect(940, -90, 120, 1202);
  rect(-60, 0, 120, 1202);
  rect(0, 940, 1202, 120);
  fill(255, 200*(1/sin(frameCount/189.09)), 100*(1/cos(frameCount/189.09)));
  textSize(40+20*abs(sin(5 *frameCount/99.09)));
  text("GLITCH PIX", 390+20*-abs(sin(5*frameCount/99.09)), 987);
  popMatrix();
  erase.position();
  eraser.position();
  normal.position();
  glitch.position();
  oval.position();
  rectangle.position();
  sine.position();
  WD.position();
}
class Button {
  PVector pos = new PVector(0, 0);
  float size = 20;
  String mode;
  boolean selected = false;
  Button(float x, float y, String z) {
    pos.set(x, y);
    mode = z;
  }
  void position() {
    if (pos.dist(sel)<size) {
      selected = true;

      fill(100);
    } else {
      selected = false;
      fill(255);
    }
    if (p.mode==mode) {
      fill(100);
    }
    circle(pos.x, pos.y, size);
    textSize(13);
    text(mode, pos.x-10, pos.y+21);
  }

  void activate() {
    if (selected) {
      if (mode == "erase") {
        p.erase();
      } else {
        p.mode = mode;
      }
    }
  }
}

void mouseClicked() {
  erase.activate();
  eraser.activate();
  normal.activate();
  glitch.activate();
  oval.activate();
  rectangle.activate();
  sine.activate();
  WD.activate();
}
void mouseDragged() {
  if (p.mode=="glitch") {
    p.draw = true;
  }
}
void mousePressed() {
  if (!(p.mode=="glitch")) {
    p.draw = true;
  }
}
void mouseReleased() {
  p.draw = false;
  p.fix();
}

void keyPressed() {
  p.mode = "u";
}
