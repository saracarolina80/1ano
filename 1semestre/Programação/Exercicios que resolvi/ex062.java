import java.util.*;
public class ex062 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int[] vet = new int[100];
		System.out.print("n: ");
		int n = sc.nextInt();
		lerSequencia(vet);
		calcularSequencia(vet,n);	
	}
	public static int[] lerSequencia(int[] array) {
		 for ( int i=0;i<100;i++) {
		 System.out.print("Num["+(i+1)+"]=");
		 array[i]= sc.nextInt();	
		 if (array[i]<0)
		 break;	 
		}
		return array;
	}
	public static void calcularSequencia (int[] array,int n) {
		int cont=0;
		for (int i=0; i<100;i++) {
			if (array[i]>=0) {
			if (array[i]==n) 
			cont++;
		}
		else {break;}
		}
		System.out.print(cont);
	}
		
			
}

