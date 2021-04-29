import java.util.*;
public class ex1101 {
	static final Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		String[] frase = new String[10];
		
		for (int i=0; i < 10 ; i++) {
			System.out.print("Frase: ");
			frase[i] = new String(sc.nextLine());
			if (frase[i] == "fim") {
				break;
			}
		}
		System.out.print("Resultado:\n");
		for (int i=9; i>=0 ; i--) {
			System.out.println(frase[i]);
		}
	}
}

