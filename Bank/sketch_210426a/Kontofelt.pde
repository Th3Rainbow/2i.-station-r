class KontoInput{
  public float input = 0;
  String tekst = "";
  
  
  void display(){
    textSize(29);
    text("Hvor meget vil du saette ind " + tekst + " kr", 20, 55);
  }
  
  void keypress(){
      if (key == BACKSPACE){
        println("hello world");
      String nyTekst = "";
      for (int i = 0; i <tekst.length()-1; i ++){
      nyTekst = nyTekst + tekst.charAt(i);
    }
    tekst = nyTekst;
  } else if (key == ENTER){
    tekst = "";
    konto1.keypress();
  }else{
  tekst = tekst + key;
  }
  
  try {
    input = Float.parseFloat(tekst);
  }
  catch(Exception e){
     }
     println(input);
    }
   }
  
  
  
  
