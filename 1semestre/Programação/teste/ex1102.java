import java.util.*;
import java.io.*;
public class ex1102 {
	static Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		Pilotos[] piloto = new Pilotos[10];
		int opcao = 0;
		do{
		System.out.print("1: Inserir informaçao dos pilotos" + 
		"\n 2: Listar pilotos ordenados pelo numero da viatura" + 
		"\n 3: Alterar informação de um piloto" + 
		"\n 4: Remover piloto com base no numero da viatura" + 
		"n\5: Listar pilotos ordenados pelo nome" + 
		" \n 6: Remover pilotos com base no nome" +
		"\n 7: Validar matriculas" +
		"\n 8: Terminar o programa" +
		"\n opçao -> ");
		opcao = sc.nextInt();
		sc.nextLine();
		switch (opcao) {
			case 1:
			inserirPilotos(piloto); 
			break;
			case 2: 
			listarNumero(piloto);
			break;
			case 3:
			alterarInformacao();
			break;
			case 4: 
			//removerPiloto();
			break;
			case 5:
			//listarPorNome();
			break;
			case 6: 
			//removerPilotoNome();
			case 7:
			//validarMatriculas();
			break;
			
			}
		} while  ( opcao!=7);
	}
	  public static void inserirPilotos(Pilotos[] piloto){
		  int i=0;
		  
		  do {
			  piloto[i] = new Pilotos();
			  System.out.printf("piloto: %d", i+1);      // %d = int  ; %f = float
			  piloto[i].num = i+1; 
			  System.out.print("\n Inserir nome: ");
			  piloto[i].nome = sc.nextLine();
			  System.out.print("\n Inserir matricula: ");
			  piloto[i].matricula = sc.nextLine();
			  System.out.print(piloto[i].nome);
			  i++;
          } while ( !piloto[i].nome.equals(""));
         i--;
	  }
	  public static void listarNumero (Pilotos[] piloto) {
		  
		  int num = sc.nextInt();
		  for (int i=piloto.length ; i>0 ; i-- ) {
			  if (piloto[i] != null && piloto[i].num == num) {
			  System.out.print(piloto[i]); 
		          }
			  }
		  }
	  public static void alterarInformacao (Pilotos[] piloto) {
		  int b = 0; 
		  
		 do { 
           System.out.print("numero da viatura: ");
           b = sc.nextInt();
           if ( b<0 || b>9 ) {
			   System.out.print("Erro");
			   b = sc.nextInt();
			   }    
		    } while ( b<0 || b>9);
		    
		   System.out.print("nome: ");
		   piloto[b].nome = sc.nextLine();
		   System.out.print("Matricula:");
		   piloto[b].matricula = sc.nextLine();
		  }
	  public static void removerPiloto ( pilotos[] piloto) {
		  
		  
		  }
		   
}
class Pilotos {
	int num; 
	String nome;
	String matricula;
	}
