package Practice;

public class array3 {

    static int MinimumSum(int arr[], int length) {
        int minSum,sum;
        int left =0;
        int right=1;

        if(1 >= length)
            return 0;
        
        minSum = arr[0] + arr[1];

        for(int i=0; i< length-1; i++)
        {
            for(int j=i+1; j < length; j++)
            {
                sum = arr[i] + arr[j];
                if( Math.abs(sum) < Math.abs(minSum))
                {
                    minSum = sum;
                    left = i;
                    right = j; 
                }
            }
        }
        int r = arr[left] + arr[right];
        return Math.abs(r);
    }

    public static void main(String[] args) {
        int arr[] = { -3, 1, 2, -4, 8, 5 };
        int arr2[] = {12,-9,14,-5,16,23,-19};
        int a = MinimumSum(arr2, arr2.length);
        System.out.println(a);
        int b = MinimumSum(arr, arr.length);
        System.out.println(b);
    }
}
