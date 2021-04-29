import java.util.*;
public class Functions {
public static	Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		System.out.println("Insira um numero:");
		double x = sc.nextDouble();
		System.out.println(sqr(x));
	}
	public static double sqr (double num) { 
		return num*num;
		
	}


}
