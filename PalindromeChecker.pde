public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String duplicate="";
  word=(word.toLowerCase());
  for(int i=0;i<word.length();i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
      duplicate=duplicate+word.charAt(i);
    }
  }
  int last=duplicate.length()-1;
  for(int j=0;j<duplicate.length()/2;j++)
  {
    if(duplicate.charAt(j) != duplicate.charAt(last))
    {
      return false;
    }
    else
    {
      last--;
    }
  }
  return true;
}
  