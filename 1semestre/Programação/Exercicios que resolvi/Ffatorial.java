import java.util.Scanner;
public class Ffatorial {
	static Scanner Ler = new Scanner(System.in);
	public static void main (String[] args) {
		int n, fat,f0 = 1;
		System.out.println("n:");
		n = Ler.nextInt();
		fat = 1;
		for (int i=1; i<=n ; i++) {
			fat = fat*i;
			System.out.printf(" %3d! = % d %n",i,fact); 
		}
			System.out.printf(" %3d! = %d %n",n,factorial(7));
			f0= fatorial (f0);
	}
}

