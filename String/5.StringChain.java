import java.util.ArrayList;
import java.util.Iterator;

class StringChain {
    
    public static void main(String []args)
    {
        String []data = {"shashi","shankar","rock","kiran","tail"};
        int index=0;
        int length = data.length;
        String []res = new String[20];


        for(int i=0;i<length;i++)
        {
            int endLength = data[i].length()-1;
            int end = data[i].charAt(endLength);

            for(int j=0;j<length;j++)
            {
                int start = data[j].charAt(0);

                if(end == start)
                {
                    res[index++] = data[i];
                    res[index++] = data[j];
                }
            }
        }

        //Array Printing
        for(int i=0; i<length;i++)
        {
            System.out.println(res[i]);
        }

        //Array List
        ArrayList<String> a = new ArrayList<String>();
        for(int i=0; i<length;i++)
        {
           if(!a.contains(res[i]))
           {
            a.add(res[i]);
           }
        }

        Iterator<String> c = a.iterator();
        while(c.hasNext())
        {
            System.out.println(c.next()+" ");
        }

    } 
}
