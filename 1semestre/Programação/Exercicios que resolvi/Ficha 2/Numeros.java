import java.util.*;
public class Numeros{
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in); 
		double n1,n2;
		System.out.print("Insere dois numeros: ");
		n1 = sc.nextDouble();
		n2 = sc.nextDouble();
		if (n1>n2)
		System.out.print(n1);
		else if (n1<n2)
		System.out.print(n2);
		else 
		System.out.print("Os numeros sao iguais");
	}
}

