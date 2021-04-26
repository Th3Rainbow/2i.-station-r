KontoInput felt;
Konto konto1;

void setup(){
 size(600,600);
 felt = new KontoInput();
 konto1 = new Konto();
}

void draw (){
  background(0);
  felt.display();
  konto1.make();
  }
  
void keyPressed(){
 felt.keypress(); 
 konto1.keypress();
}
