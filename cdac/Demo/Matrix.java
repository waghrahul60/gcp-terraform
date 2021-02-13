import java.util.Scanner;

class matrix {

    static void printDiagonal(int mat[][], int n) {
        System.out.println("First Diagonal is : ");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i == j) {
                    System.out.print(mat[i][j] + " ");
                }
            }
        }
        System.out.println(" ");
    }

    static void printDiagonal2(int mat[][], int n) {
        System.out.println("Second Diagonal is : ");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if ((i + j) == (n - 1)) {
                    System.out.print(mat[i][j] + " ");
                }
            }
        }
    }

    static void printDiagonal3(int mat[][], int n) {
        System.out.println("Second Diagonal is : ");
        for (int i = n; i >= 0; i--) {
            for (int j = n; j >= 0; j--) {
                if (i == j) {
                    System.out.print(mat[i][j] + " ");
                }
            }
        }
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Entere No of row X Col : ");
        int n = sc.nextInt();

        System.out.println("Enter array Elements : ");
        int arr[][] = new int[n][n];

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                arr[i][j] = sc.nextInt();
            }
        }
        sc.close();
        printDiagonal(arr, n);
        printDiagonal2(arr, n);
    }
}