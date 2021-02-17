public class Fibo {
	public static int calFibbo(int arr[])
	{
        int sumOfArray=0;
        int  first = 0, second = 1, nextNo = 0;
		for(int i=0;i<arr.length;i++)
		{
			sumOfArray=sumOfArray+arr[i];
		}
	    nextNo = first + second;
	    while (nextNo < sumOfArray) {

	        first = second;
	        second = nextNo;
	        nextNo = first +second;
	    }
	    return nextNo-sumOfArray;
	}
	
	public static void main(String[] args) {
	int arr[]= {1,20,2,5};
	System.out.println(calFibbo(arr));
	}

}
