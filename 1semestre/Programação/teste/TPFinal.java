import java.util.Scanner; 
import java.io.*; 
 
public class TPFinal { 
 
    public static void main(String[] args)  throws IOException {           
		  Aluno[] alunos;        
		  alunos = lerFich("t3.txt");         
		  printArray(alunos,"Lista de Alunos:\n");         // cria indice        
		   int[] indice = new int[alunos.length];         
		   
		  /* for (int i=0;i<indice.length;i++)indice[i]=i;    
		   // escreve lista no ficheiro grupos1.txt        
		    escreverFich(alunos,indice,"grupos1.txt",1);        
		     // sorteia, imprime, e escreve no ficheiro com grupos de 2         
		    baralhar(indice);        
		    printArray(alunos,indice,"Lista sorteada:");       
		    escreverFich(alunos,indice,"grupos2.txt",2);  */     
		          } 
    public static Aluno[] lerFich(String nome) throws IOException {
		   File Fich = new File(nome);
		   Scanner scf = new Scanner(Fich);
		   
		   int cont=0;
		   while(scf.hasNextLine()) {
			   cont++;
			   scf.nextLine();
			   }  
			   scf.close();
		 Aluno[] a = new Aluno[cont];
		  int i=0;
		  scf = new Scanner(Fich);
		  
		  while(scf.hasNextLine()) {
			  a[i] = new Aluno();
			  a[i].numero = scf.nextInt();
			  a[i].nome = scf.nextLine();
			  a[i].nome = retiraEspacos(a[i].nome.trim());
			  i++;  
			  } 
			  return a;
		}	   
		
	public static String retiraEspacos(String s) { 
		s = s.replaceAll("\\W+" , " ");
		return s;		
	}
	static void printArray(Aluno[] alunos, String mensagem) {
		System.out.print(mensagem);
		for (int k=0 ; k<alunos.length ; k++) {
		System.out.printf("%d %s\n", alunos[k].numero, alunos[k].nome);
	}
		
		
		}
	
		 static void baralhar(int[] lista) {
			 
			 
			 }
		  	 
		    
 
}
 class Aluno {     
	int numero;     
	String nome; 
} 
 
