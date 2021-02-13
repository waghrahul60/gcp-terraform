public class Anagram {
    static int NoOfChar = 256;

    static boolean isAnagram(char str1[], char str2[]){
        
        int count1[] = new int[NoOfChar];
        int count2[] = new int[NoOfChar];

        for(int i = 0; i< str1.length && i<str2.length;i++)
        {
            count1[str1[i]]++;
            count2[str2[i]]++;
        }

        if(str1.length != str2.length)
        {
            return false;
        }

        for(int i=0; i<NoOfChar;i++)
        {
            if(count1[i] != count2[i])
            {
                return false;
            }
        }
        return true;
    }
   
    public static void main(String[] args)
    {
        char str1[] = ("Rahul Wagh").toCharArray();
        char str2[] = ("Wagh RahuL").toCharArray();
    
        if(isAnagram(str1,str2))
        {
            System.out.println("Two strings are anagram");
        }else{
            System.out.println("Two strings are not anagram");
        }
    }

}
