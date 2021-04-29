import java.util.*;

public class classes {
	static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		
		/*Aluno a = new Aluno();
		System.out.print("Qual é o nome do aluno: ");
		a.nome = sc.nextLine();
		System.out.print("Nmec: ");
		a.nmec = sc.nextInt();
		System.out.print("Idade: ");
		a.idade = sc.nextInt();
		
		System.out.printf("Nome: %s\nNmec: %d\nIdade: %d",a.nome,a.nmec,a.idade);*/
		
		Aluno b[] = new Aluno[10];
		int num;
		
		for(int i=0;i<b.length;i++) {
			b[i] = new Aluno();
			System.out.printf("Aluno %d:\n",i+1);
			System.out.print("Nmec: ");
			num = sc.nextInt();
			if(num==0) break;
			b[i].nmec = num;
			sc.nextLine();
			System.out.print("Nome: ");
			b[i].nome = sc.nextLine();
			System.out.print("Idade: ");
			b[i].idade = sc.nextInt();
		}
		
		for(int i=0;i<b.length;i++) {
			if(b[i]!=null)  System.out.printf("Nome: %s\nNmec: %d\nIdade: %d",b[i].nome,b[i].nmec,b[i].idade);
		}
			
		
	}
}
class Aluno {
	String nome;
	int nmec;
	int idade;
}
