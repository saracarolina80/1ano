import java.util.*;
import java.io.*;

public class ficheiros {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) throws IOException {
		
		//File f = new File("notas.txt");
		String nome;
		File f;
		
		do {
		System.out.print("Qual e o nome do ficheiro? ");
		nome = sc.nextLine();
		f = new File(nome);
		} while(!f.isFile() || !f.canRead());
		
		Scanner scf = new Scanner(f);
		int i=0;
		int a[];
		
		while(scf.hasNextLine()) {      
			scf.nextLine();
			i++;
			
		}
		scf.close();
		
		a = new int[i];
		int j=0;
		
		scf = new Scanner(f);
		
		while(scf.hasNextInt()) {
			a[j] = scf.nextInt();
			j++;
		}
		
		File fich = new File("notasVazio.txt");    //escrever ficheiro
		
		PrintWriter pw = new PrintWriter(fich);
		
		for(int k=0;k<a.length;k++) {
			pw.println(a[k]);
		}
		pw.close();
		
	}
}

