import java.util.Scanner;
public class Temperatura {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner (System.in);
		Double C , F;
		System.out.print("A temp. em Celcius e: ");
		C = sc.nextDouble();
		F = 1.8 * C + 32;
		System.out.print(C +  "em Celcius e equivalente a"  + F);
	}
}

