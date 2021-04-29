import java.util.*;
public class ex06 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		System.out.print("Escreva um numero: ");
		int n = sc.nextInt();
		int[] array= new int[n];
		lerArray(array);
		imprimirInversa(array,n);
	}
	public static int[] lerArray(int[] array) {
		for(int i=0; i<array.length;i++) {
			System.out.print("Num["+(i+1)+"]=");
			array[i] = sc.nextInt();
		}
		return array;
	}
	public static void imprimirInversa(int[] array, int n) {
		for (int i= n-1; i>=0 ; i--) {
			System.out.println("Num[" + (i+1) + "]=" + array[i]);
		} 
}
}
