class t2 {

  
  public static void main(String[] args) throws Exception{
    // TODO Auto-generated method stub

    
    int result=halloide(21,16,10,3);
    int result1=halloide(18,12,7,2);
    System.out.println(result);
  }
  
  static int halloide(int l,int b,int h,int t)
  {
    int volume=0;
    int x=(l*b*h);
    int y=((l-(2*t))*(b-(2*t))*(h-(2*t)));
    volume=x-y;
    return volume;
  }

}