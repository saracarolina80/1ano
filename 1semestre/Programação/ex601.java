import java.util.*;
public class ex601 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int N;
	   System.out.print("Introduza um numero: ");
	   N = sc.nextInt();
	   int[] array = new int[N];
	   lerSequencia(array);
	   escreverInversa(array,N);
    }
    
    public static int[] lerSequencia( int array[]) {
		for ( int i=0 ; i<array.length ; i++ ) {
			System.out.print("Numero[" + (i+1) + "]=" );
			array[i] = sc.nextInt();
			}
		return array;
		}
	public static void escreverInversa( int[] array, int N) {
		for ( int i=N-1 ; i>=0 ; i--) {
			System.out.println("Numero[" + (i+1) + "]=" + array[i]);
			}
		}
	
	}   	   	   
	


