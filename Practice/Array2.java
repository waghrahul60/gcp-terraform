package Practice;

public class Array2 {

    static int MinimumSum(int arr[], int length) {
        int min_left,min_right,min_sum,sum;

        if(length <= 1)
            return 0;
        
        min_sum = arr[0] + arr[1];
        min_left =0;
        min_right=1;

        for(int a=0; a< length-1; a++)
        {
            for(int b=a+1; b < length; b++)
            {
                sum = arr[a] + arr[b];
                if( Math.abs(sum) < Math.abs(min_sum))
                {
                    min_sum = sum;
                    min_left = a;
                    min_right = b; 
                }
            }
        }
        return Math.abs(arr[min_left] + arr[min_right]);
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
