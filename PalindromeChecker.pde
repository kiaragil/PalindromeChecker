public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  
  for (int i=0; i < lines.length; i++){

    if(palindrome(lines[i])==true){

      println(lines[i] + " IS a palidrome.");
    }

    else{

      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word){
  String forward = new String();  
  String backward = new String();

  forward = noSpaces(word);
  backward = reverseTheWord(noSpaces(word));

  if(forward.equals(backward)){
    return true;
  }

  return false;

}

public String noSpaces(String word){
  String fixedNoSpaces = new String();

  for (int i = 0; i < word.length(); i++){
     
     if (Character.isLetter(word.charAt(i))){
       fixedNoSpaces+=word.charAt(i);
     }
  }
  return fixedNoSpaces.toLowerCase();
}

public String reverseTheWord(String word){
  
  String reversedWord = new String ();
  for(int i = word.length()-1; i >= 0; i--){
    reversedWord += word.charAt(i);
  }
   return reversedWord;
}
