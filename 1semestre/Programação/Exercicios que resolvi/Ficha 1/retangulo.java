import java.util.Scanner;
public class retangulo {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		Double l, c, p, a;
		System.out.print("Qual a largura?");
		l = sc.nextDouble();
		System.out.println("Qual o comprimento?");
		c = sc.nextDouble();
		p = l + l + c + c; 
		a = l*c;
		System.out.print("Area= " + a );
		System.out.println("Perimetro= " + p);
		
		
		 
	}
}

