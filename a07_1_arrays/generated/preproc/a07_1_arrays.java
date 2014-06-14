import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class a07_1_arrays extends PApplet {

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

public void setup() {
  size(300, 500);
  background(0xff000000);

  //Testsetup => Aufbau von testArray über zahlenWort
  String[] testArray = new String[0];
  for (int i = 0; i < matNr.length; i++) {
    testArray = append(testArray, zahlenWort(matNr[i]));
  }

  //Übergabe von testArray an textArray()
  textArray(testArray, 50, 50, 50);
}

public void textArray(String[] stringArray, int xPos, int yPos, int yDelta) {
  PFont font = loadFont("DroidLogo-24.vlw"); 
  textFont(font); 
  fill(0xff00ff00);

  for (int i = 0; i < stringArray.length; i++) {
    text("[" + i + "]: " + stringArray[i], xPos, yPos+(yDelta*i));
  }
}

public String zahlenWort(int numIn) {
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


    static public void main(String args[]) {
        PApplet.main(new String[] { "--bgcolor=#ECE9D8", "a07_1_arrays" });
    }
}
