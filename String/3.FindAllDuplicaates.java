class FindAllDuplicaates {
    static final int NoOfChar = 256;

    void removeDuplicates(String str)
    {
        int count[] = new int[NoOfChar];
        for(int i=0; i<str.length();i++)
        {
            count[str.charAt(i)]++;
        }

        for(int i = 0; i< NoOfChar; i++)
        {
            if(count[i] > 1)
            {
                System.out.println((char)i + ", count = " + count[i]);
            }
        }
    }

    public static void main(String []args)
    {
        String str = "Rahul sjkhfgsdfffn";
        FindAllDuplicaates s = new FindAllDuplicaates();
        s.removeDuplicates(str);
    }
}
