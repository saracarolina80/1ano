import java.util.*;
import java.io.*;

public class treinoteste {
	public static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) throws IOException {
		int op;
		Alunos alunos[] = new Alunos[10];
		String passar[] = new String[100];
		String guardar[] = new String[100];
		for(int k = 0;k<alunos.length;k++){
		alunos[k] = new Alunos();
		}
	
	do{
		System.out.print("1 -  tirar os espaços existentes entre palavras na string" +
		"\n2 - passar conteudo dos ficheiros para string" +
		"\n3 - ler alunos do ficheiro 1 aluno por linha" +
		 "\n - imprimir alunos" + 
		 "\n - verificar se o ficheiro existe" + 
		"\n4 - Filtrar alunos - array e string" + 
		"\n5 - Criar array de classes a partir do array de strings "+
		"\n6 - Escrever alunos no ficheiro\n" );
		op = sc.nextInt();
		sc.nextLine();   // ler o enter 
		switch(op){
			case 1:
			removerespacos(guardar);
			break;
			case 2:
			ficheirotostring(guardar);
			break;
			case 3:
			imprimirdoficheiro(guardar);
			break;
			case 4:
			filtraralunos(alunos);
			break;
			case 5:
			arraytoclass(guardar,alunos,passar);
			break;
			case 6:
			escreveralunos(alunos);
			break;
			}
	}while(op!=7);
}
	
	public static void ficheirotostring(String[] guardar) throws IOException{    //Função para passar o que está no ficheiro para um array 
		
		 File file = new File("alunos.txt");                              // ficheiro, diretório...
		 int p=0;
      if(file.exists()){                                      
    Scanner sc = new Scanner(file); 
    while (sc.hasNextLine()){
			  guardar[p] = sc.nextLine();
			  p++;
	}
	sc.close();
		  
	  for(int i= 0;i<guardar.length;i++){
		  if(guardar[i]!=null){
			System.out.println(guardar[i]);
			}
		  }
	}
	
	}
	
	public static void removerespacos(String[] guardar){          //Função para remover espaços 
		for (int i=0;i<guardar.length;i++){
			if(guardar[i]!=null){                                 // se array for nulo dá erro...
			guardar[i]=guardar[i].replaceAll("\\W+", " ");        // fórmula para decorar
			guardar[i]=guardar[i].trim();                     
			}
		}
		for(int i= 0;i<guardar.length;i++){                    
		  if(guardar[i]!=null){
			System.out.println(guardar[i]);
			}
		  }	
	}
		
	public static void imprimirdoficheiro(String[] guardar) throws IOException{    // função para imprimir ficheiro
	File file = new File("alunos.txt");
	int p=0;
      if(file.exists()){ 
		Scanner sc = new Scanner(file); 
		while (sc.hasNextLine()){
				System.out.println(sc.nextLine());
				  
		}
		sc.close();
	}
	}
	
	public static void arraytoclass(String[] guardar,Alunos[] alunos,String[] passar){ //passar do vetor de strings para um vetor de classes
				int l = 0;
				for(int i=0;i<guardar.length;i++){
					if(guardar[i] != null){
						String[] temp  = guardar[i].split(" ");
						alunos[i].numeroaluno=Integer.parseInt(temp[0]);
						alunos[i].nomealuno=temp[1];
						alunos[i].idade=temp[2];
					}
				}
					for(int m=0;m<alunos.length;m++){
						//uma vez que que o array de alunos já foi todo inicializado, temos de verificar se um dos parametros é null
						if(alunos[m].idade != null){
							System.out.println(alunos[m]);
						}
					}
				
	}
	public static void filtraralunos(Alunos[] alunos){
		
		String filtrar = new String();
		System.out.println("Insira o nome do aluno a pesquisar");
		filtrar=sc.nextLine();
		for (int i = 0; i < alunos.length; i++)
		{
			if (alunos[i] != null)
			{
				if (filtrar.equals(alunos[i].nomealuno))
				{
					System.out.println(alunos[i]);
				}
			}
			if (alunos[i] == null)
			{
				continue;
			}
			
		}
		
	}
	
	public static void escreveralunos(Alunos[] alunos) throws IOException{
				File file = new File("alunos.txt");
				PrintWriter printWriter = new PrintWriter("alunos.txt");
				System.out.print("Insira o numero dos aluno\n");
				int nmr = sc.nextInt();
				System.out.print("Insira o nome dos aluno\n");
				String nome = new String();
				nome=sc.next();
				System.out.print("Insira idade dos aluno\n");
				String idade = new String();
				idade=sc.next();
				printWriter.print(nmr + " " + nome + " " + idade +"\n");
				printWriter.close();
				
				
		}
}

class Alunos{
	int numeroaluno;
	String nomealuno;
	String idade;
	
	@Override
	public String toString(){
		
		return "------Alunos------" + 
		"\nNumero Aluno: " +this.numeroaluno + 
		"\nNome Aluno. " + this.nomealuno +
		"\nIdade: " + this.idade +
		"\n";
		}
}
