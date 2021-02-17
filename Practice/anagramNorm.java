package Practice;

import java.util.Arrays;

public class anagramNorm {
    static int NoOfChar = 256;

    static boolean isAnagram(String s1, String s2){
        
        char str1[] = s1.toCharArray();
        char str2[] = s2.toCharArray();
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

            if(count1[i] == count2[i])
            {
                    return false;
            }
        }
        return true;
    }

    static boolean areAnagram(String s1, String s2)
    {
        int g = 0;

        char str1[] = s1.toCharArray();
        char str2[] = s2.toCharArray();
        // Get lenghts of both strings
        int n1 = str1.length;
        int n2 = str2.length;
 
        // If length of both strings is not same,
        // then they cannot be anagram
        if (n1 != n2)
            return false;
 
        // Sort both strings
        Arrays.sort(str1);
        Arrays.sort(str2);
 
        // Compare sorted strings
        for (int i = 0; i < n1; i++)
        {
            if (n1 == n2){
                if(str1[i] == str1[i])
                {
                   g =1;
                }
            }
            
            if (str1[i] != str2[i])
            {
                return false;
            }
           
        }

        if(g == 1)
        {
            return false;
        }
           
 
        return true;
    }
   
    public static void main(String[] args)
    {
        int count=0;
        String s = "aa aa odg dog gdo";
        String [] s1 = s.split(" ");
        System.out.println(s1.length);

       

        for(int i=0; i<s1.length;i++)
        {
            for(int j=1; j<s1.length;j++)
            {
                if(areAnagram(s1[i], s1[j]))
                {
                    count++;
                }
            }
        }
        System.out.println(count);
    }
}


