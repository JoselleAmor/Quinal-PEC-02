//Joselle Amor A. Quinal
//BSCPE 3B

import 'dart:io';
import 'dart:core';
 
void main()
{
  //Use a while loop for checking the input
  int check = 0;
  String? morse;
  while(check == 0){
    // get the string from the user
    print("Enter Valid Morse Code:");
    morse =stdin.readLineSync();
    //null checker in dart
    if (morse == null)
    {
      check = 0;      
    }
    //iterate thru each character
    else{
      morse.runes.forEach((c) {
      String ch = new String.fromCharCode(c);
        if(ch != "."){
          if(ch != "-")check = 1;
        }    
      });
    }
    if(check == 1) {
      check = 0;
      continue;
    }
    check = 2;
  } 

  print("Possible Words: ");
  //here we call the function
  possible_words(morse, "");
  
}

//recursive function 
void possible_words(var decipher, var ciphered){
  if(decipher.length == 0)
  {
    print(ciphered);
  }
  else{
    for(int i = 0; i < 26; i++)
    {
      if(decipher.startsWith(code[i])){
        var initDecipher = decipher.substring(code[i].length);
        var initCiphered = ciphered + letter[i];
        possible_words(initDecipher, initCiphered);
      }
    }
  }
}


var code = [".-", "-...", "-.-.", "-..", ".", "..-.",
             "--.", "....", "..", ".---", "-.-", ".-..",
             "--", "-.", "---", ".--.", "--.-", ".-.",
             "...", "-", "..-", "...-", ".--", "-..-",
             "-.--", "--.."];
var letter = ["A", "B", "C", "D", "E", "F",
                "G", "H", "I", "J", "K", "L",
                "M", "N", "O", "P", "Q", "R",
                "S", "T", "U", "V", "W", "X",
                "Y", "Z"];
