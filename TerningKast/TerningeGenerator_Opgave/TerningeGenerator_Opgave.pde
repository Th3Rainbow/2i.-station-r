int alleKast[] = new int[0]; 

void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}

void draw() {
}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k') {
    int kast = lavTerningeKast(1, 7);
    text("DIT KAST BLEV:" + kast, 50, 75);
    alleKast = append(alleKast, kast);
  }

  if (key == 's') {
    if(alleKast.length > 0){
     alleKast = shorten(alleKast); 
    }
  }
  tegnFordeling(alleKast);
  udskrivKast(alleKast);

}
int lavTerningeKast(int min,int maks){
  int nyKast = int(random(min, maks));
  return nyKast;
}

void udskrivKast(int[]alleKast){
for(int i = 0; i < alleKast.length; i++){
  int b = i+1;
  text("kast nr " + b + " = " + alleKast[i] ,500, 10+i*15);
  }
}

void tegnFordeling(int[] alleKast){
  int[] kasser = new int[6];
  for(int o = 0; o < alleKast.length; o++){
    for(int b = 0; b < 7; b++){
       if (alleKast[o] == b){
     kasser[b-1] = kasser[b-1]+1;
     printArray(kasser);
      }
    }
  }
 for(int i = 0; i < 6; i++){
    rect(i*50,770,45,-kasser[i]*10);
      text(i+1,i*50+20,790);
       text(kasser[i] + " stk",i*50+20,kasser[i]+750+(-kasser[i]*10));
  }
}
