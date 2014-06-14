/*
Aufgabe: 6.2
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 18.11.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int[] matNr = {
  2, 3, 8, 2, 0, 5
};

void setup() {
  size(105, 154); // width = 10+24*matNr.length (zum einfachen Exportieren fest definiert)
  background(#000000);

  PFont font = loadFont("DroidLogo-24.vlw"); 
  textFont(font); 
  fill(#00ff00);
  
  for (int i = 0; i < matNr.length; i++) {
    text(zahlenWort(matNr[i]), 8, 24+24*i);
  }
}



String zahlenWort(int numIn) {
  String[] num = {
    "Null", "Eins", "Zwei", "Drei", "Vier", "Fünf", "Sechs", "Sieben", "Acht", "Neun"
  };
  if (num.length > numIn && numIn >= 0) {
    return num[numIn];
  }
  else {
    return "?";
  }
}

