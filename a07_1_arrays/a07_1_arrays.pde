/*
Aufgabe: 7.1 Arrays (6.2 recycelt)
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 26.11.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int[] matNr = {
  2, 3, 8, 2, 0, 5
};

void setup() {
  size(300, 500);
  background(#000000);

  //Testsetup => Aufbau von testArray über zahlenWort
  String[] testArray = new String[0];
  for (int i = 0; i < matNr.length; i++) {
    testArray = append(testArray, zahlenWort(matNr[i]));
  }

  //Übergabe von testArray an textArray()
  textArray(testArray, 50, 50, 50);
}

void textArray(String[] stringArray, int xPos, int yPos, int yDelta) {
  PFont font = loadFont("DroidLogo-24.vlw"); 
  textFont(font); 
  fill(#00ff00);

  for (int i = 0; i < stringArray.length; i++) {
    text("[" + i + "]: " + stringArray[i], xPos, yPos+(yDelta*i));
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

