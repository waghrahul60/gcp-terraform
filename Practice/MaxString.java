class MaxString { 

    // Returns the longest repeating non-overlapping 
    // substring in str 
        static String longestRepeatedSubstring(String str) { 
            int length = str.length(); 
            int arr[][] = new int[length + 1][length + 1]; 
    
            String result = ""; // To store result 
            int resultLength = 0; // To store length of result 
    
            // building table in bottom-up manner 
            int i, index = 0; 
            for (i = 1; i <= length; i++) { 
                for (int j = i + 1; j <= length; j++) { 
                    if (str.charAt(i - 1) == str.charAt(j - 1) 
                            && arr[i - 1][j - 1] < (j - i)) { 
                                arr[i][j] = arr[i - 1][j - 1] + 1; 

                        if (arr[i][j] > resultLength) { 
                            resultLength = arr[i][j]; 
                            index = Math.max(i, index); 
                        } 
                    } else { 
                        arr[i][j] = 0; 
                    } 
                } 
            } 
    
            if (resultLength > 0) { 
                for (i = index - resultLength + 1; i <= index; i++) { 
                    result += str.charAt(i - 1); 
                } 
            } 
    
            return result; 
        } 
    

        public static void main(String[] args) { 
            String str = "dsgf"; 
            if(longestRepeatedSubstring(str).length()>0)
            {
                System.out.println("yes " +longestRepeatedSubstring(str)); 
            }else{
                System.out.println("no "+"null");
            }
           
        } 
    } 
    // This code is contributed by Rajput-JI 
    