public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public String reverse(String str)
{
  String r = new String();
  int nLast = str.length()-1;
  for(int i = nLast; i>= 0; i--)
  {
    r = r + str.substring(i, i+1);
  }
    r = r.toLowerCase();
    return r;
}
public String nospace(String sWord)
{
  String n = new String();
    for (int i = 0; i<sWord.length(); i++)
      if(sWord.charAt(i) != ' ')
      n = n + sWord.substring(i,i+1);
      return n; 
}
public String noPunctuation(String word){
  String p = new String();
  for(int i = 0;i<word.length(); i++)
  {
  if(Character.isLetter(word.charAt(i)) == true)
  p = p + word.charAt(i);
  }
  return p;
}
public boolean palindrome(String word)
{
String word2 = nospace(word);
word2 = noPunctuation(word);
word2=word2.toLowerCase();
  if(word2.equals(reverse(word2)))
    return true;
    return false;
}

