import java.util.*;
public class ex063 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		int[] vet = new int[50];
		int n;	
		System.out.print("n:");
		n = sc.nextInt();
		switch(n) {
		case 1: 
		  lerSequencia(vet);	
		  break;
		case 2: 
		  escreverSequencia(vet); 
		  break;
		case 3:
		  detetarSequencia(vet);
		  break;
		case 4:
		  System.out.println("maximo:" + calculaMax(vet));
		  break;
		case 5: 
		  System.out.println("minimo:" + calculaMin(vet));
		  break;
		case 6:
		  System.out.println("media:" + calculaMedia(vet));
		  break;
		case 7: 
		  if (detetarSequencia(vet) == true )
		   System.out.println("e uma sequencia par");
		  else 
		   System.out.println("nao e par");
		  break;
		default:
		  System.out.println("voce quer sair?");
		  int c = sc.nextInt();
		  if (c==1) {
		    exit();} 
	}
	}
	public static int[] lerSequencia(int[] array){
		for (int i=0;i<50;i++) {
			System.out.print("Num["+(i+1)+"]=");
			array[i]= sc.nextInt();
			if (array[i]==0)
			break;
	}
	return array;
}	
	public static void escreverSequencia (int[] array){
	    for (int i=0;i<50;i++) {
			if (array[i]!=0) {
			System.out.println(array[i]);
		}
			else {
			break;
		}
		}
	}
	public static int calculaMax ( int[] array) {  
		int max = array[0];
		  for (int i=0;i<50 && array[i] !=0;i++) {
			  if ( array[i]>max) {
				  max = array[i];
			  }
		  }
	 return max;
 }
	public static int calculaMin ( int[] array) {
		int min = array[0];
		for (int i=0;i<50 && array[i]!=0;i++) { 
			if (array[i]<min) {
				min = array[i];
			}
			}
			return min;
		}
		public static double calculaMedia ( int[] array) {
			int soma = 0;
			int cont = 0;
			for (int i=0;i<50 && array[i]!=0;i++) { 
				soma = soma + array[i];
				cont++;
			}
			return (double)soma/cont;
		}
		public static boolean detetarSequencia ( int[] array) {
			for (int i=0;i<50 && array[i]!=0;i++) { 
			if (array[i]%2 != 0) {
				return false; }		
		}
		return true; 
}    
       public static void exit (){
		   System.exit(0);
		   }
}

      

