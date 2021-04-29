import java.util.*;
public class ex56 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int n;
		
		do{
		   n=sc.nextInt();
		   if(n<0 || n>100){
			   n=sc.nextInt();
			   }
		}while(n<0 || n>100);
	System.out.print("------------------\n");
	
	System.out.printf("| Tabuada dos %d |\n", n);
	
	System.out.print("------------------\n");
	for (int i=1;i<=10;i++) {
		System.out.printf("| %2d * %2d | %3d |\n",n,i,n*i);
	} 	
	System.out.print("------------------\n");
	}
}

