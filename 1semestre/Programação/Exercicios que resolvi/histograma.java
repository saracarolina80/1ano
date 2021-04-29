import java.util.*;
public class histograma {
	
	public static void main (String[] args) {
		int[] vet = new int[30];
		arrayValores.temp(vet);
		System.out.println("Histogramada da temperatura");
					System.out.println("----------------------------");
					for(int i=-10;i<=40;i++){
						System.out.printf("%02d |",i);
						for(int j=0;j<=numElem;j++){
							if(arrayValores[j].temp==i) {
							System.out.print("*");
}
						}
						System.out.println();
			
					}
					System.out.println();
					System.out.println("-------------------------------------------");
					System.out.println();
	}
}

