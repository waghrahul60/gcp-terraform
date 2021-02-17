package Practice;

public class Arrayt {

    static int MinimumSum(int arr[], int length) {
        int minLeft;
        int minRight;
        int minSum, sum,result;

        if(length <= 1)
        {
            return 0;
        }

       
        minSum = arr[0] + arr[1];
        minLeft =0;
        minRight=1;

        for(int a=0; a< length-1; a++)
        {
            for(int b=a+1; b < length; b++)
            {
                sum = arr[a] + arr[b];
                if(Math.abs(minSum) > Math.abs(sum))
                {
                    minSum = sum;
                    minLeft = a;
                    minRight = b; 
                }
            }
        }
        result = Math.abs(arr[minLeft] + arr[minRight]);
        return result;
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
