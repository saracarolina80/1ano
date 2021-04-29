import java.util.*;
import java.io.*;

public class pilotos {
	public static Scanner sc = new Scanner(System.in);
	public static int i=  0;
	public static void main (String[] args) {
		
		Pilotos piloto[] = new Pilotos[10];
		for(int k = 0; k < piloto.length; k++) piloto[k] = new Pilotos();
		int op;
		int numeroPiloto;
		do{
			System.out.print("Gestão de uma prova automovel:\n");
			System.out.print("1 - Inserir informação dos pilotos\n");
			System.out.print("2 - Alterar informação de um piloto\n");
			System.out.print("3 - Remover piloto com base no número da viatura\n");
			System.out.print("4 - Listar piloto com base no número da viatura:\n");
			System.out.print("5 - Remover piloto com base no nome\n");
			System.out.print("6 - Escrever para um ficheiro os dados do piloto\n");
			System.out.print("7 - Ler de um ficheiro os dados de um piloto\n");
			System.out.print("8 - Terminar o programa\n");
			System.out.print("Opção\n");
			op=sc.nextInt();
			sc.nextLine();
			switch(op){
			case 1:
			inserir(piloto);
			break;
			case 2:
			alterar(piloto);
			break;
			case 3:
			remover(piloto);
			break;
			case 4:
			listar(piloto);
			break;
			case 5:
			break;
			case 6:
			break;
			case 7: 
			break;	
		}
		}while(op != 8);
	}
	public static void inserir(Pilotos[] piloto){
		
		do{
			i++;
			System.out.printf("Inserir Piloto nº%d\n", i);
			piloto[i].numeroPiloto=i;
			System.out.print("Inserir nome Piloto\n");
			piloto[i].nomePiloto=sc.nextLine();
			System.out.print("Inserir matrícula:\n");
			piloto[i].matricula=sc.nextLine();
			System.out.print(piloto[i].nomePiloto);
		}while(!piloto[i].nomePiloto.equals(""));
		i--;
			
		}
	public static void alterar(Pilotos[] piloto){
		
		String numeropiloto = new String ();
		numeropiloto=sc.nextLine();
		for(int l=0;l<piloto.length;l++){
			if(piloto[l]!=null){
				if(numeropiloto.equals(String.valueOf(piloto[l].numeroPiloto))){
					System.out.print("Inserir novo nome Piloto\n");
					piloto[l].nomePiloto=sc.nextLine();
					System.out.print("Inserir nova matrícula:\n");
					piloto[l].matricula=sc.nextLine();
					System.out.print("-----------------Dados alterados com sucesso----------------\n");
					break;
					}
					else{
						System.out.print("Não existe nenhum piloto com esse número");
						}
				}
			}
			
	}
	public static void remover(Pilotos[] piloto){
		
		String numeropiloto = new String ();
		numeropiloto=sc.nextLine();
		for(int l=0;l<piloto.length;l++){
			if(piloto[l]!=null){
				if(numeropiloto.equals(String.valueOf(piloto[l].numeroPiloto))){
					int pos=l;
					for(int j=pos+1;j<piloto.length;j++){
						piloto[j-1]=piloto[j];
						}
					System.out.print("-----------------Piloto removido com sucesso----------------\n");
					break;
					}
					else if(l==piloto.length-1){
						System.out.print("Não existe nenhum piloto com esse número");
						}
				}
				
				
			}
		}
	public static void listar(Pilotos[] piloto){
		int numeropiloto;
		numeropiloto=sc.nextInt();
		for(int l=0;l<piloto.length;l++){
			if(piloto[l] != null && piloto[l].numeroPiloto == numeropiloto){
				System.out.print(piloto[l]);
				}
			}
		}
}



class Pilotos{
	int numeroPiloto;
	String nomePiloto;
	String matricula;
	
	@Override
	public String toString(){
		return "-----Lista de Pilotos--------" +
		"\nNumero de Piloto: " + this.numeroPiloto +
		"\nNomePiloto: " + this.nomePiloto + 
		"\nMatrícula: " + this.matricula + 
		"\n";
		}
	}
