class reverse{
    public void reverseString(char[] s) {
        int left = 0;
         int right = s.length-1;
         while(left < right)
         {
             char temp = s[left];
             s[left++] = s[right];
             s[right--] = temp;
         }
         System.out.println("Char array rev = ");
         System.out.println(s);
     }
    public static void main(String[] args)
    {
        //rev char aarray
        reverse r = new reverse();
        char[] c = {'r','a','h'};
        r.reverseString(c);


        //rev string
        String name="abcba";
        int length = name.length();
        String rev = "";
        for(int i=length-1;i>=0;i--)
        {
            rev = rev + name.charAt(i);
        }
        System.out.println("Rev String = "+rev);

        if(name.equals(rev))
        {
            System.out.println("Palendrome String ");
        }else
        {
            System.out.println("Not a Palendrome String ");
        }

       
    }
}