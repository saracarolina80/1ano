import java.util.*;
public class Slide12 {
static final Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		String frase = new String();
		char letra;
		System.out.print("Escreva uma frase: ");
		frase=sc.nextLine();
		System.out.printf("A frase tem as letras:\n");
		for(int i=0 ; i < frase.length() ; i++ )
		System.out.println(frase.charAt(i));
		
		
	}
}

