//https://www.wikiart.org/en/lothar-charoux/squares-1970
void setup(){
 size(480,580); 
}

void draw(){
  frameRate(random(1,45));
  background(70);
  stroke(200);
  float cornerx = 450;
  float cornery = 300;
  float hguidex = 240;
  float hguidey = 160;
  float m = 0.66701596;
  boolean sw = true; 
  PVector temp = new PVector(random(-230,580),174.79);
  PVector temp2 = new PVector(245,184);
  float iox = 0.99 * sin(frameCount) - 1;
  float ioy = random(-1.59,2);
  rotate(random(0,1.999));
  line(240 - 0*10.00,160 - 0*-14.79,cornerx + 0*-10.05,cornery - 0 *-14.83);
  line(240 - 14*10.00,160 - 14*-14.79,450 + 14*-10.05,300 - 14 *-14.83);
  for(int i=0;i<15;i++){
    //max i is 14
  stroke(200);
  line(450 - (i *15),0,cornerx - (i*15),cornery - (i*10));
  
  //replace with gradient?
 
  //line(240 - i*10.00,160 - i*-14.79,cornerx + i*-10.05,cornery - i *-14.83);
  
// 140.04/209.95 = 0.66701596
  
  line(0,hguidey- i*-14.79,hguidex - i*10.05,hguidey- i*-14.79);
  line(cornerx - (i*15),(cornery -(i*10)),(cornerx - (i*15)) - 140,(cornery -(i*10)) + 206);

  line(cornerx - i*10,cornery - i*-14.79,999,cornery - i*-14.79);
  
  line((cornerx - i*15)-140, (cornery -i*10)+206,cornerx - i*15, 9999);
 for(int j=0;j<9;j++){
    int tw = 255;
    if(sw){
    tw = 255;
    }
    else{tw = 50;
    }
    stroke(tw);
    line(temp.x,temp.y,temp.x * iox,temp.y * ioy);
    sw = !sw;
    
    temp.x *= iox;
    temp.y *= ioy;
    //temp2.x *= iox;
    //temp2.y *= ioy;
  }
  }
    //rotate(TAU * 0.094);
   // noFill();
 // square(289,-1,251);
}
void segment(float f){
  
}
