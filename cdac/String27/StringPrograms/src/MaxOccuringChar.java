import javax.annotation.processing.SupportedSourceVersion;

public class MaxOccuringChar {
	
	static final int Num = 256;
	
 char FindRepited(String str) {
		int len = str.length();
		
		int chara[] = new int[Num];
		
		for(int i=0; i< len; i++) {
			int a = str.charAt(i);
			chara[a]++;
		}
		
//		for(int i=0; i< chara.length; i++) {
//			System.out.println("array = "+chara[i]);
//		}
		
		
		
		int max = 1;
		char r = ' ';
		char a = ' ';
		
		for(int i = 0;i < len;i++) {
			if(max == chara[str.charAt(i)])
			{
				max = chara[str.charAt(i)];
				r = str.charAt(i);
				System.out.print(r);
			}else(0 != chara[str.charAt(i)]  || 1 != chara[str.charAt(i)]){
				
				 a = str.charAt(i);
			}
		}
		System.out.println(a);
		return r;
	}
	
	public static void main(String[] args) {
		String str = "javaaaa";
		MaxOccuringChar a = new MaxOccuringChar();
		char r = a.FindRepited(str);
		//System.out.println(r);
		
	}
}
