package Practice;

import java.util.Stack;

class BracketMatcher {

  public static String BracketMatcher1(String str) {
    
    Stack<Character> s = new Stack<>();
    char [] c = str.toCharArray();

    for(int i=0; i<c.length;i++)
    {
        System.out.println(c[i]);
    }

    for(int i=0; i<c.length;i++)
    {
      if(c[i] == '(')
      {
        s.push('(');
      }else if(c[i] == ')'){
        if(s.isEmpty())
        {
          return "0";
        }else
        {
          s.pop();
        }
      }
    }
    if(s.isEmpty())
    {
      return "1";
    }else{
      return "0";
    }
    // code goes here  
    
  }

  public static void main (String[] args) {  
    // keep this function call here     
    String s1 = "twice thri(c)(e)()()";
    System.out.print(BracketMatcher1(s1)); 
  }

}