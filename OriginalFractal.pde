int colorR = 200;
int colorPhase = 0; //phase 0 is increase, phase >1 is decrease
int colorG = 200;
int colorB = 200;

public void setup()
{
size(800,800);
 background(173);
 noStroke();
}
public void draw(){

  sierpinski((int)(Math.random()*400),(int)(Math.random()*300),(int)(Math.random()*255));
  if(colorPhase == 0){//increase R
  colorR+=1;
  }
  if(colorPhase == 0){//increase G
  colorG+=1;
  } 
    if(colorPhase == 0){//increase B
  colorB+=1;
  }
  
  
  if(colorR == 255){colorPhase += 1;} //increase phase
  if(colorPhase == 1){//decrease R
  colorR-=1;
  }
  if(colorR == 200){colorPhase -= 1;} 
  
  if(colorG == 255){colorPhase += 1;} //increase phase
  if(colorPhase == 2){//decrease G
  colorG-=1;
  }
  if(colorG == 100){colorPhase -= 1;} 

  if(colorB == 255){colorPhase += 1;} //increase phase
  if(colorPhase == 3){//decrease B
  colorB-=1;
  }
  if(colorB == 100){colorPhase -= 1;} 

}

public void sierpinski(int x, int y, int len) 
{
  
  if(len <= 50) {
    
    
   fill(colorR,colorG,colorB);
     pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -15.0);
  star(x+0, y+0, 25, 58, 5); 
  popMatrix();

  }
  
  else{
   sierpinski(x,y,len/4);
    sierpinski(x+len/4,y,len/4);
    sierpinski(x+len/8,y-len/4,len/4);
  
  
  }



}


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
