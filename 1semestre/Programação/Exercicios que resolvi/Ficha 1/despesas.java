import java.util.*;
public class despesas {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		Double p,s,t,q, m;
		System.out.print("Quanto gastou no primeiro dia?");
		p = sc.nextDouble();
		s = p * 0.2 ;
		t = s * 0.2;
		q = t * 0.2;
		m = (p+s+t+q)/4;
		System.out.print("Despesa media = " + m);
		
	}
}

