class Konto{
  float b;
  float a;
  
  void make(){
    String Amount = str(b);
    text("din konto har " + Amount + " kr",20 ,25 );
  }
  void keypress(){
    if (key == ENTER){
     b = a + felt.input/2;
     a = b;
     println(b);
    }
  }
}
  
