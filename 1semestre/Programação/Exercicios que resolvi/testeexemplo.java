 /* nome: Sara Carolina Costa Gonçalves
  *  mec: 98376
  */
import java.util.*;
public class testeexemplo{
	static Scanner ler = new Scanner(System.in);
	public static void main (String[] args) {
		System.out.println("Introduza as notas 0-10; 11=faltou");
		int[] vet = new int[10];
		lerNotas(vet);
		System.out.print("lista das notas: " ); 
		listarNotas(vet);
	}
	public static int[] lerNotas(int[] numNotas){ //Função para ler as notas
	for (int i=0;i<10;i++) {                     
	 System.out.print("Nota aluno"+(i+1)+"=");
	 numNotas[i] = ler.nextInt();
 }
    return numNotas;
 }
    public static void listarNotas(int[] notas) { // Função para listar as notas
		for (int i=0;i<10;i++){
			System.out.print(notas[i]);
		}
	}
	public static int[] histograma ( int[] notas) { // Função histograma
	return notas;
  }
}

