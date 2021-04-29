import java.util.Scanner;
import java.io.*;
public class Ficheiros {
	
   static Scanner kb = new Scanner(System.in); 

  public static void main(String[] args) throws IOException{

    File f = new File("e3.txt");

    Scanner scf = new Scanner(f);

    double y = 0, z = 0;

    int k = 0;

    while(scf.hasNextDouble()){

      z = scf.nextDouble();

      y += z;

      k++;

    }

    scf.close();

    System.out.printf("%d\n", k);

    System.out.printf("%3.1f\n", z);

    System.out.printf("%3.1f\n", y / k);

  }
	}


