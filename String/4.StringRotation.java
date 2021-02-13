class stringRotation{

    static boolean rotation(String str1, String str2){
        return (str1.length() == str2.length()) && ((str1 + str1).indexOf(str2) != -1 );
    }

    public static void main(String args[])
    {
        String str1= "AACD";
        String str2= "ACDA";


        if(rotation(str1, str2))
        {
            System.out.println("String are rotation of each other");
        }
        else
        {
            System.out.println("Not rotation");
        }
    }
}