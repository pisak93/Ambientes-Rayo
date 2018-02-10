int SquareBackX=256;
int SquareBackY=256;

int SquareBackW=10;
int SquareBackH=10;

int SquareRep=0;

float r=random(255);
float g=random(255);
float b=random(255);

void setup(){
size(512,512);
}

void draw(){
r=random(255);
g=random(255);
b=random(255);
background(255,255,255);
fill(r,g,b);
stroke(b,g,r);
strokeWeight(9);
for(int i=10;i>0;i--){
  SquareRep=3*i;
  pushMatrix();
  // move the origin to the pivot point
  translate(SquareBackX, SquareBackY/2.5*-1); 
  
  // then pivot the grid
  rotate(radians(45));

  
  
  rect(SquareBackX-(SquareRep*5),SquareBackY-(SquareRep*5),SquareBackW*SquareRep,SquareBackH*SquareRep);
  popMatrix();
}
for(int i=1;i<=7;i+=2){
  
  pushMatrix();
  translate(SquareBackX, SquareBackY);
rotate(radians(45*i));
strokeWeight(0);
rect(0,50,-50,100);
strokeWeight(9);
rect(-38,46,26,86);
popMatrix();

}
for(int i=1;i<=7;i+=2){
  
  pushMatrix();
  translate(SquareBackX, SquareBackY);
rotate(radians(45*i));
strokeWeight(0);
rect(0,0,50,120);
strokeWeight(8);
rect(12,4,26,106);
popMatrix();

}


}