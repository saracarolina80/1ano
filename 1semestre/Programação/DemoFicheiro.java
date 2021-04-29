import java.util.*;
import java.io.*;
public class DemoFicheiro {
	public static void main(String[] args) throws Exception {
 int n = numAlunos();
 float[] medias = new float[n];
 String[] nomes = new String[n];
 preencherVetores(nomes, medias);
 ordenarVetores(nomes,medias);
 escreverFicheiro(nomes,medias);
 }
	private static void main (String[] args) throws Exception {
		int n=0;
		File f;
		f = new File("c:\\nomes.dat");
		Scanner fin = new Scanner(f);
		
	 while (fin.hasNextLine()) {
		 n++;
		 fin.nextLine();
		
	}
	fin.close();
	return n;
}
}

