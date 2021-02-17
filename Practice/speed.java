package Practice;

public class speed {

  
    public static void main(String[] args) throws Exception{
      // TODO Auto-generated method stub
  
      
      int result=MinTime(72,8,4,6);
      int result1=MinTime(18,12,7,2);
      System.out.println(result);
    }
    
    static int MinTime(int d,int s1,int s2,int s3)
    {

        int t1 = d/s1;
        int t2 = d/s2;
        int t3 = d/s3;

        if(t1<t2 && t1<t3)
        {
            return t1;
        }else if(t2 < t1)
        {
            return t2;
        }else{
            return t3;
        } 
    }
  
  }