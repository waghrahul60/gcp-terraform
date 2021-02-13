import java.util.Scanner;

class DynamicArray {

	
	int arr[];
	int count;
	int sizeOfArray;
	
	public DynamicArray()
	{
		arr=new int[1];
		count=0;
		sizeOfArray=1;
	}
	
	public  void  addElement(int no)
	{
		if(count==sizeOfArray)
		{
			growSize();
		}
		
		arr[count++]=no;
	}
	
	
	
	public void growSize()
	{
		int temp[]=null;
		
		if(count==sizeOfArray)
		{
			temp=new int[sizeOfArray*2];
			
			for(int i=0;i<sizeOfArray;i++)
			{
				temp[i]=arr[i];
			}
		}
		arr=temp;
		sizeOfArray = sizeOfArray*2;
	}
	
	void display()
	{
		for (int i : arr) {
			System.out.print(i+" ");
		}
		System.out.println();
		
		System.out.println("Array Of Length : "+arr.length);
	}
	
	public static void main(String[] args) {
			
		DynamicArray obj=new DynamicArray();
		Scanner sc =new Scanner(System.in);
		int num=0;
		System.out.println("Enter the numbers");
		
		while(num != -1)
		{
			num=sc.nextInt();
			obj.addElement(num);
		}
		sc.close();
		obj.display();
		
	}

}
