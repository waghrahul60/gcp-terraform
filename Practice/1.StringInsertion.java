package Practice;

class Main {

  public static String FindIntersection(String[] strArr) {
    String [] str1 = strArr[0].split(", ");
    String [] str2 = strArr[1].split(", ");

    String s = "";

    for(int i=0;i<str1.length; i++)
    {
      for(int j=0; j<str2.length; j++)
      {
        if(str1[i].equals(str2[j]))
        {
          s = s +str1[i]+",";
        }
      }
    }
    if(s.length() > 1)
    {
      return s.substring(0, s.length()-1);
    }else
    {
      return "false";
    }
    // code goes here  
    
  }

  public static void main (String[] args) {  
    // keep this function call here     
    String [] s ={"1, 3, 9, 10, 17, 18", "1, 4, 9, 10"};
    //op = 1,4,13
    System.out.println(FindIntersection(s));
  }
}